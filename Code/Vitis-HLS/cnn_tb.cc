#include "cnn.hh"
#include "utils.hh"
#include "../Headers/conv_weights.h"
#include "../Headers/definitions.h"

#include <cstdio>
#include <ctime>
#include <cmath>
#include <iostream>
#include <chrono>

#define N 10000
#define input_buf_num 100

int read_images (const char * file, float images [input_buf_num][IMG_ROWS][IMG_COLS])
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

int read_labels(const char * file, int labels[input_buf_num])
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

int get_max_prediction (float prediction [DIGITS])
{
  int max_digit = 0;
  for (int i = 0; i < DIGITS; ++i)
  {
    if (prediction[i] > prediction[max_digit])
      max_digit = i;
  }
  return max_digit;
}

int quantize_data(float value, float value_scale) {
//    return static_cast<int>(round(value / value_scale * 10));
	return static_cast<int>(round(value / value_scale));
}
float dequantize(int quantized_value, float value_scale) {
    return quantized_value * value_scale;
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

  float weight_scale = 0.5;
  float activation_scale = 0.2;

  /**** Do N predictions. ****/
  double time = 0;
  int correct_predictions = 0;
  float prediction_buf [DIGITS];
  float images_buf[input_buf_num][IMG_ROWS][IMG_COLS];
  float weight_buf[FILTERS][KRN_ROWS][KRN_COLS];
  float biases_buf[FILTERS];

  // 添加性能测评代码，记录开始时间
  auto start_time = std::chrono::high_resolution_clock::now();


  /**** Read the weights to weight_buf ****/
  for (int f = 0; f < FILTERS; ++f)
  {
#pragma HLS PIPELINE
    for (int kr = 0; kr < KRN_ROWS; ++kr)
    {
      for (int kc = 0; kc < KRN_COLS; ++kc)
      {
//    	printf("conv_weights:%f\n",conv_weights[f][kr][kc]);
    	int quantized_weight = quantize_data(conv_weights[f][kr][kc], weight_scale);
//    	printf("quantized_weight:%d\n",quantized_weight);
    	weight_buf[f][kr][kc] = dequantize(quantized_weight, weight_scale);//进行反量化
//    	printf("weight_buf:%f\n\n",weight_buf[f][kr][kc]);

//    	weight_buf[f][kr][kc] = quantized_weight;//量化为INT类型
//    	weight_buf[f][kr][kc] = conv_weights[f][kr][kc];//直接提取不进行量化

      }
    }
  }

   /**** Read the biases to biases_buf ****/
    for (int f = 0; f < FILTERS; ++f){
#pragma HLS PIPELINE
       int quantized_bias = quantize_data(conv_biases[f], activation_scale);
       biases_buf[f] = dequantize(quantized_bias, activation_scale);//反量化
//     biases_buf[f] = quantized_bias;//量化为INT类型
//     biases_buf[f] = conv_biases[f];//直接提取不进行量化
    }

  /**** Read the images to images_buf ****/

  for (int i = 0; i < N / input_buf_num; i++){
#pragma HLS PIPELINE
    if (0 != read_images("/home/ytq/codeField/undergraduate/CNN_Accelerator/Code/Data/in.dat", images_buf))
    {
      printf("Error: can't open file ``in.dat''\n");
      return 1;
    }


  /**** Read expected labels. ****/
  int labels[input_buf_num];
  if (0 != read_labels("/home/ytq/codeField/undergraduate/CNN_Accelerator/Code/Data/out.dat", labels))
  {
    printf("Error: can't open file ``out.dat''\n");
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
  // 添加性能测评代码，记录结束时间
  auto end_time = std::chrono::high_resolution_clock::now();
  // 计算运行时间（时钟周期数）
  auto run_time = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time);

  // 输出运行时间
  std::cout << "Run time: " << run_time.count() << " ms" << std::endl;

  double
  correct_predictions_perc = (double)correct_predictions * 100.0 / (double)N;
  printf("Total predictions: %d\n", N);
  printf("Correct predictions: %.2f %%\n", correct_predictions_perc);
  printf("Average latency: %f (ms)\n", (time / N) * 1000);

  return 0;
}



