#include "cnn.hh"
#include "utils.hh"
#include "conv.hh"
#include "pool.hh"
#include "flat.hh"
#include "dense.hh"
#include "hls_stream.h"
#include <string.h>

#ifndef __SYNTHESIS__
# include <cstdio>
#endif

void
dataflow_section
(
  float pad_img  [PAD_IMG_ROWS][PAD_IMG_COLS],
  float pad_img1 [PAD_IMG_ROWS][PAD_IMG_COLS],
  float pad_img2 [PAD_IMG_ROWS][PAD_IMG_COLS],
  float pad_img3 [PAD_IMG_ROWS][PAD_IMG_COLS],
  float pad_img4 [PAD_IMG_ROWS][PAD_IMG_COLS],
  float pad_img5 [PAD_IMG_ROWS][PAD_IMG_COLS],
  float pad_img6 [PAD_IMG_ROWS][PAD_IMG_COLS],
  float pad_img7 [PAD_IMG_ROWS][PAD_IMG_COLS],
  float weight_buf_0[KRN_ROWS][KRN_COLS],
  float weight_buf_1[KRN_ROWS][KRN_COLS],
  float weight_buf_2[KRN_ROWS][KRN_COLS],
  float weight_buf_3[KRN_ROWS][KRN_COLS],
  float weight_buf_4[KRN_ROWS][KRN_COLS],
  float weight_buf_5[KRN_ROWS][KRN_COLS],
  float weight_buf_6[KRN_ROWS][KRN_COLS],
  float weight_buf_7[KRN_ROWS][KRN_COLS],
  float biases_buf_0,
  float biases_buf_1,
  float biases_buf_2,
  float biases_buf_3,
  float biases_buf_4,
  float biases_buf_5,
  float biases_buf_6,
  float biases_buf_7,
  float prediction [DIGITS]
)
{
  /******** Convolution layer. ********/
  /*
    An array to collect the convolution results:
    FILTERS resulting feature maps, one for each filter.
  */

  hls::stream<float, IMG_ROWS * IMG_COLS>
  conv_to_pool_streams [FILTERS];

  // Convolution with relu as activation function.
  convolutional_layer(pad_img, pad_img1, pad_img2, pad_img3,
                      pad_img4, pad_img5, pad_img6, pad_img7,
					  weight_buf_0,weight_buf_1,weight_buf_2,
					  weight_buf_3,weight_buf_4,weight_buf_5,
					  weight_buf_6,weight_buf_7,
					  biases_buf_0,biases_buf_1,biases_buf_2,
					  biases_buf_3,biases_buf_4,biases_buf_5,
					  biases_buf_6,biases_buf_7,
					  conv_to_pool_streams);

  #if 0
    #ifndef __SYNTHESIS__
      // Print results.
      print_features(conv_to_pool_streams);
    #endif
  #endif

  /******** Maxpooling layer. ********/

  hls::stream<float, POOL_IMG_ROWS * POOL_IMG_COLS>
  pool_to_flat_streams[FILTERS];

  max_pooling_layer(conv_to_pool_streams, pool_to_flat_streams);

  #if 0
    #ifndef __SYNTHESIS__
      print_pool_features(pool_to_flat_streams);
    #endif
  #endif

  /******** Flatten layer. ********/
  hls::stream<float, FLAT_SIZE / FILTERS> flat_to_dense_streams [FILTERS];
  flattening_layer(pool_to_flat_streams, flat_to_dense_streams);

  /******** Dense layer. ********/
  hls::stream<float, DENSE_SIZE> dense_to_softmax_streams [FILTERS];
  dense_layer(flat_to_dense_streams, dense_to_softmax_streams);

  /******** Softmax. ********/
  dense_layer_soft_max(dense_to_softmax_streams, prediction);
}

void cnn
(
  float img_in     [IMG_ROWS][IMG_COLS],
  float prediction [DIGITS],
  float weight_buf[FILTERS][KRN_ROWS][KRN_COLS],
  float biases_buf[FILTERS]
)
{
  /******** Pre-processing data. ********/

  float pad_img [PAD_IMG_ROWS][PAD_IMG_COLS];
  normalization_and_padding(img_in, pad_img);

  #if 0
    #ifndef __SYNTHESIS__
      printf("Padded image.\n");
      print_pad_img(pad_img);
    #endif
  #endif

  /* Allow parallelism cloning the padded image. */
  float pad_img1 [PAD_IMG_ROWS][PAD_IMG_COLS];
  float pad_img2 [PAD_IMG_ROWS][PAD_IMG_COLS];
  float pad_img3 [PAD_IMG_ROWS][PAD_IMG_COLS];
  float pad_img4 [PAD_IMG_ROWS][PAD_IMG_COLS];
  float pad_img5 [PAD_IMG_ROWS][PAD_IMG_COLS];
  float pad_img6 [PAD_IMG_ROWS][PAD_IMG_COLS];
  float pad_img7 [PAD_IMG_ROWS][PAD_IMG_COLS];

  float weight_buf_0[KRN_ROWS][KRN_COLS];
  float weight_buf_1[KRN_ROWS][KRN_COLS];
  float weight_buf_2[KRN_ROWS][KRN_COLS];
  float weight_buf_3[KRN_ROWS][KRN_COLS];
  float weight_buf_4[KRN_ROWS][KRN_COLS];
  float weight_buf_5[KRN_ROWS][KRN_COLS];
  float weight_buf_6[KRN_ROWS][KRN_COLS];
  float weight_buf_7[KRN_ROWS][KRN_COLS];

  float biases_buf_0;
  float biases_buf_1;
  float biases_buf_2;
  float biases_buf_3;
  float biases_buf_4;
  float biases_buf_5;
  float biases_buf_6;
  float biases_buf_7;

  float value;

  clone_for_rows:
  for (int i = 0; i < PAD_IMG_ROWS; ++i)
    clone_for_cols:
    for (int j = 0; j < PAD_IMG_COLS; ++j)
    {
      value = pad_img[i][j];
      pad_img1[i][j] = value;
      pad_img2[i][j] = value;
      pad_img3[i][j] = value;
      pad_img4[i][j] = value;
      pad_img5[i][j] = value;
      pad_img6[i][j] = value;
      pad_img7[i][j] = value;
    }

  memcpy(weight_buf_0,weight_buf[0],KRN_ROWS*KRN_COLS*sizeof(float));
  memcpy(weight_buf_1,weight_buf[1],KRN_ROWS*KRN_COLS*sizeof(float));
  memcpy(weight_buf_2,weight_buf[2],KRN_ROWS*KRN_COLS*sizeof(float));
  memcpy(weight_buf_3,weight_buf[3],KRN_ROWS*KRN_COLS*sizeof(float));
  memcpy(weight_buf_4,weight_buf[4],KRN_ROWS*KRN_COLS*sizeof(float));
  memcpy(weight_buf_5,weight_buf[5],KRN_ROWS*KRN_COLS*sizeof(float));
  memcpy(weight_buf_6,weight_buf[6],KRN_ROWS*KRN_COLS*sizeof(float));
  memcpy(weight_buf_7,weight_buf[7],KRN_ROWS*KRN_COLS*sizeof(float));

  biases_buf_0 = biases_buf[0];
  biases_buf_1 = biases_buf[1];
  biases_buf_2 = biases_buf[2];
  biases_buf_3 = biases_buf[3];
  biases_buf_4 = biases_buf[4];
  biases_buf_5 = biases_buf[5];
  biases_buf_6 = biases_buf[6];
  biases_buf_7 = biases_buf[7];

  /* Parallel executions start here. */
  dataflow_section(pad_img, pad_img1, pad_img2, pad_img3,
                   pad_img4, pad_img5, pad_img6, pad_img7,
				   weight_buf_0,weight_buf_1,weight_buf_2,
				   weight_buf_3,weight_buf_4,weight_buf_5,
				   weight_buf_6,weight_buf_7,
				   biases_buf_0,biases_buf_1,biases_buf_2,
				   biases_buf_3,biases_buf_4,biases_buf_5,
				   biases_buf_6,biases_buf_7,
				   prediction);
}
