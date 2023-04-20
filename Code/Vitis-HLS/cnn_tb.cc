#include "cnn.hh"
#include "utils.hh"
#include "../Headers/conv_weights.h"
#include "../Headers/definitions.h"

#include <cstdio>
#include <ctime>

#define N 1000
#define input_buf_num 10

int
read_images (const char * file, float images [input_buf_num][IMG_ROWS][IMG_COLS])
{
  FILE *fp;

  fp = fopen(file, "r");

  if (fp == NULL)
    return -1;

  for (int i = 0; i < input_buf_num; ++i)
    for (int x = 0; x < IMG_ROWS; ++x)
      for (int y = 0; y < IMG_COLS; ++y)
        if(fscanf(fp, "%f", & images[i][x][y]) != 1)
          return 1; // Error.

  return fclose(fp);
}

int
read_labels(const char * file, int labels[input_buf_num])
{
  FILE *fp;

  fp = fopen(file, "r");

  if (fp == NULL)
    return -1;

  for (int i = 0; i < input_buf_num; ++i)
    if(fscanf(fp, "%d", & labels[i]) != 1)
      return 1;

  return fclose(fp);
}

int
get_max_prediction (float prediction [DIGITS])
{
  int max_digit = 0;
  for (int i = 0; i < DIGITS; ++i)
  {
    if (prediction[i] > prediction[max_digit])
      max_digit = i;
  }
  return max_digit;
}

int main ()
{
  /**** Basic parameters check. ****/
  // Enforce odd kernel dimensions.
  if ((0 == (KRN_ROWS % 2)) || (0 == (KRN_COLS % 2)))
  {
    printf("Error: odd kernel sizes are mandatory for this implementation \n");
    return 1;
  }

  /**** Do N predictions. ****/
  double time = 0;
  int correct_predictions = 0;
  float prediction_buf [DIGITS];
  float images_buf[input_buf_num][IMG_ROWS][IMG_COLS];
  float weight_buf[FILTERS][KRN_ROWS][KRN_COLS];
  float biases_buf[FILTERS];

  /**** Read the weights to weight_buf ****/
  for (int f = 0; f < FILTERS; ++f)
  {
    for (int kr = 0; kr < KRN_ROWS; ++kr)
    {
      for (int kc = 0; kc < KRN_COLS; ++kc)
      {
        weight_buf[f][kr][kc] = conv_weights[f][kr][kc];
      }
    }
  }

   /**** Read the biases to biases_buf ****/
    for (int f = 0; f < FILTERS; ++f){
     biases_buf[f] = conv_biases[f];
    }

  /**** Read the images to images_buf ****/
  for (int i = 0; i < N / input_buf_num; i++){
    if (0 != read_images("/home/ytq/codeField/undergraduate/HLS-CNN/Code/Data/in.dat", images_buf))
    {
      printf("Error: can't open file ``../Data/in.dat''\n");
      return 1;
    }


  /**** Read expected labels. ****/
  int labels[input_buf_num];
  if (0 != read_labels("/home/ytq/codeField/undergraduate/HLS-CNN/Code/Data/out.dat", labels))
  {
    printf("Error: can't open file ``../Data/out.dat''\n");
    return 1;
  }

  for (int inner = 0; inner < input_buf_num; inner++){
    // CNN execution, obtain a prediction.
    clock_t begin = clock();
    cnn(images_buf[inner], prediction_buf, weight_buf, biases_buf);
    clock_t end = clock();

    if (get_max_prediction(prediction_buf) == labels[inner])
    {
      ++correct_predictions;
    }
    else
    {
      printf("\nExpected: %d\n", labels[inner]);
      float pad_img [PAD_IMG_ROWS][PAD_IMG_COLS];
      normalization_and_padding(images_buf[inner], pad_img);
      print_pad_img(pad_img);
      printf("Prediction:\n");
      for (int j = 0; j < DIGITS; ++j)
      printf("%d: %f\n", j, prediction_buf[j]);
      printf("\n");
    }
    // Sum up time spent.
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    time += time_spent;
  }

}

  double
  correct_predictions_perc = (double)correct_predictions * 100.0 / (double)N;
  printf("Total predictions: %d\n", N);
  printf("Correct predictions: %.2f %%\n", correct_predictions_perc);
  printf("Average latency: %f (ms)\n", (time / N) * 1000);

  return 0;
}

