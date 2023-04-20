#pragma once

#include "../Headers/definitions.h"

#include "hls_stream.h"

void
convolution
(
  float                pad_img [PAD_IMG_ROWS][PAD_IMG_COLS],
  float 			   weight_buf[KRN_ROWS][KRN_COLS],
  float 			   biases_buf,
  int                  filter,
  hls::stream<float> & conv_to_pool_stream
);

void convolutional_layer
(
  float                pad_img [PAD_IMG_ROWS][PAD_IMG_COLS],
  float                pad_img1 [PAD_IMG_ROWS][PAD_IMG_COLS],
  float                pad_img2 [PAD_IMG_ROWS][PAD_IMG_COLS],
  float                pad_img3 [PAD_IMG_ROWS][PAD_IMG_COLS],
  float                pad_img4 [PAD_IMG_ROWS][PAD_IMG_COLS],
  float                pad_img5 [PAD_IMG_ROWS][PAD_IMG_COLS],
  float                pad_img6 [PAD_IMG_ROWS][PAD_IMG_COLS],
  float                pad_img7 [PAD_IMG_ROWS][PAD_IMG_COLS],
  float 			   weight_buf_0[KRN_ROWS][KRN_COLS],
  float 			   weight_buf_1[KRN_ROWS][KRN_COLS],
  float 			   weight_buf_2[KRN_ROWS][KRN_COLS],
  float 			   weight_buf_3[KRN_ROWS][KRN_COLS],
  float 			   weight_buf_4[KRN_ROWS][KRN_COLS],
  float 			   weight_buf_5[KRN_ROWS][KRN_COLS],
  float 			   weight_buf_6[KRN_ROWS][KRN_COLS],
  float 			   weight_buf_7[KRN_ROWS][KRN_COLS],
  float 			   biases_buf_0,
  float 			   biases_buf_1,
  float 			   biases_buf_2,
  float 			   biases_buf_3,
  float 			   biases_buf_4,
  float 			   biases_buf_5,
  float 			   biases_buf_6,
  float 			   biases_buf_7,
  hls::stream<float> conv_to_pool_streams [FILTERS]
);
