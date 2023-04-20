#pragma once

#include "../Headers/definitions.h"

void cnn
(
  float img_in [IMG_ROWS][IMG_COLS], // Take an image_buf in input.
  float pred   [DIGITS],              // Get a prediction in output.
  float weight_buf[FILTERS][KRN_ROWS][KRN_COLS], //weight
  float biases_buf[FILTERS] // biases
);

