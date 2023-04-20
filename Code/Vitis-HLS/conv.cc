#include "conv.hh"
#include <cmath>


float relu (float x)
{
  if(x > 0.0)
    return x;
  else
    return 0.0;
}

//int quantize_data(float value, float value_scale) {
//    return static_cast<int>(round(value / value_scale * 10));  // 将浮点数乘以100，保留两位小数
//}
//
//float dequantize(int quantized_value, float value_scale) {
//    return static_cast<float>(quantized_value) * value_scale / 10;  // 将整数转换为浮点数，然后除以100，忽略末尾的0
//}


void
convolution
(
  float                pad_img [PAD_IMG_ROWS][PAD_IMG_COLS],
  float 			   weight_buf[KRN_ROWS][KRN_COLS],
  float 			   biases_buf,
  int                  filter,
  hls::stream<float> & conv_to_pool_stream
)
{
  // 定义量化参数
  float weight_scale = 0.5; // 权重量化比例因子
  float activation_scale = 0.2; // 激活值量化比例因子

  float w_sum = 0.0; // Weighted sum.

  conv_for_rows:
  for(int r = 0; r < IMG_ROWS; r += POOL_ROWS)
  {
    conv_for_cols:
    for(int c = 0; c < IMG_COLS; c += POOL_COLS)
    {
      win_for_rows:
      for (int wr = 0; wr < KRN_ROWS -1; ++wr)
        win_for_cols:
        for (int wc = 0; wc < KRN_COLS -1; ++wc)
        {
          w_sum = 0.0;

          krn_for_rows:
          for(int kr = 0; kr < KRN_ROWS; ++kr)
          {
            krn_for_cols:
            for(int kc = 0; kc < KRN_COLS; ++kc)
            {
#pragma HLS PIPELINE
              float w     = weight_buf[kr][kc];
              //量化weight
//              printf("before_weight:%f\n",w);
//              int quantized_weight = quantize_data(w, weight_scale);
//              printf("quantized_weight:%d\n",quantized_weight);
//              float weight = dequantize(quantized_weight, weight_scale);
//              printf("quantized_weight:%f\n",weight);
              float pixel = pad_img[r+wr+kr][c+wc+kc];
//              w_sum +=  weight * pixel;
              	w_sum +=  w * pixel;
            }
          }
          //量化bias
//          printf("before_bias:%f\n",biases_buf);
//          int quantized_biases = quantize_data(biases_buf, activation_scale);
//          printf("quantized_biases:%d\n",quantized_biases);
//          float biases = dequantize(quantized_biases, activation_scale);
//          printf("quantized_bias:%d\n",biases);
//          conv_to_pool_stream.write(relu(w_sum + biases));
          conv_to_pool_stream.write(relu(w_sum + biases_buf));
        }
    }
  }
}

void
convolutional_layer
(
  float pad_img [PAD_IMG_ROWS][PAD_IMG_COLS],
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
  hls::stream<float> conv_to_pool_streams [FILTERS]
)
{
  convolution(pad_img,  weight_buf_0, biases_buf_0, 0, conv_to_pool_streams[0]);
  convolution(pad_img1, weight_buf_1, biases_buf_1, 1, conv_to_pool_streams[1]);
  convolution(pad_img2, weight_buf_2, biases_buf_2, 2, conv_to_pool_streams[2]);
  convolution(pad_img3, weight_buf_3, biases_buf_3, 3, conv_to_pool_streams[3]);
  convolution(pad_img4, weight_buf_4, biases_buf_4, 4, conv_to_pool_streams[4]);
  convolution(pad_img5, weight_buf_5, biases_buf_5, 5, conv_to_pool_streams[5]);
  convolution(pad_img6, weight_buf_6, biases_buf_6, 6, conv_to_pool_streams[6]);
  convolution(pad_img7, weight_buf_7, biases_buf_7, 7, conv_to_pool_streams[7]);
}
