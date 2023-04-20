#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void cnn(int*, int*, int*, int*);
extern "C" void apatb_cnn_hw(volatile void * __xlx_apatb_param_img_in, volatile void * __xlx_apatb_param_prediction, volatile void * __xlx_apatb_param_weight_buf, volatile void * __xlx_apatb_param_biases_buf) {
  // Collect __xlx_img_in__tmp_vec
  vector<sc_bv<32> >__xlx_img_in__tmp_vec;
  for (int j = 0, e = 784; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_img_in)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_img_in)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_img_in)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_img_in)[j*4+3];
    __xlx_img_in__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_img_in = 784;
  int __xlx_offset_param_img_in = 0;
  int __xlx_offset_byte_param_img_in = 0*4;
  int* __xlx_img_in__input_buffer= new int[__xlx_img_in__tmp_vec.size()];
  for (int i = 0; i < __xlx_img_in__tmp_vec.size(); ++i) {
    __xlx_img_in__input_buffer[i] = __xlx_img_in__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_prediction__tmp_vec
  vector<sc_bv<32> >__xlx_prediction__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_prediction)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_prediction)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_prediction)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_prediction)[j*4+3];
    __xlx_prediction__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_prediction = 10;
  int __xlx_offset_param_prediction = 0;
  int __xlx_offset_byte_param_prediction = 0*4;
  int* __xlx_prediction__input_buffer= new int[__xlx_prediction__tmp_vec.size()];
  for (int i = 0; i < __xlx_prediction__tmp_vec.size(); ++i) {
    __xlx_prediction__input_buffer[i] = __xlx_prediction__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_weight_buf__tmp_vec
  vector<sc_bv<32> >__xlx_weight_buf__tmp_vec;
  for (int j = 0, e = 72; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weight_buf)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weight_buf)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_weight_buf)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_weight_buf)[j*4+3];
    __xlx_weight_buf__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weight_buf = 72;
  int __xlx_offset_param_weight_buf = 0;
  int __xlx_offset_byte_param_weight_buf = 0*4;
  int* __xlx_weight_buf__input_buffer= new int[__xlx_weight_buf__tmp_vec.size()];
  for (int i = 0; i < __xlx_weight_buf__tmp_vec.size(); ++i) {
    __xlx_weight_buf__input_buffer[i] = __xlx_weight_buf__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_biases_buf__tmp_vec
  vector<sc_bv<32> >__xlx_biases_buf__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_biases_buf)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_biases_buf)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_biases_buf)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_biases_buf)[j*4+3];
    __xlx_biases_buf__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_biases_buf = 8;
  int __xlx_offset_param_biases_buf = 0;
  int __xlx_offset_byte_param_biases_buf = 0*4;
  int* __xlx_biases_buf__input_buffer= new int[__xlx_biases_buf__tmp_vec.size()];
  for (int i = 0; i < __xlx_biases_buf__tmp_vec.size(); ++i) {
    __xlx_biases_buf__input_buffer[i] = __xlx_biases_buf__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  cnn(__xlx_img_in__input_buffer, __xlx_prediction__input_buffer, __xlx_weight_buf__input_buffer, __xlx_biases_buf__input_buffer);
// print __xlx_apatb_param_img_in
  sc_bv<32>*__xlx_img_in_output_buffer = new sc_bv<32>[__xlx_size_param_img_in];
  for (int i = 0; i < __xlx_size_param_img_in; ++i) {
    __xlx_img_in_output_buffer[i] = __xlx_img_in__input_buffer[i+__xlx_offset_param_img_in];
  }
  for (int i = 0; i < __xlx_size_param_img_in; ++i) {
    ((char*)__xlx_apatb_param_img_in)[i*4+0] = __xlx_img_in_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_img_in)[i*4+1] = __xlx_img_in_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_img_in)[i*4+2] = __xlx_img_in_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_img_in)[i*4+3] = __xlx_img_in_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_prediction
  sc_bv<32>*__xlx_prediction_output_buffer = new sc_bv<32>[__xlx_size_param_prediction];
  for (int i = 0; i < __xlx_size_param_prediction; ++i) {
    __xlx_prediction_output_buffer[i] = __xlx_prediction__input_buffer[i+__xlx_offset_param_prediction];
  }
  for (int i = 0; i < __xlx_size_param_prediction; ++i) {
    ((char*)__xlx_apatb_param_prediction)[i*4+0] = __xlx_prediction_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_prediction)[i*4+1] = __xlx_prediction_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_prediction)[i*4+2] = __xlx_prediction_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_prediction)[i*4+3] = __xlx_prediction_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_weight_buf
  sc_bv<32>*__xlx_weight_buf_output_buffer = new sc_bv<32>[__xlx_size_param_weight_buf];
  for (int i = 0; i < __xlx_size_param_weight_buf; ++i) {
    __xlx_weight_buf_output_buffer[i] = __xlx_weight_buf__input_buffer[i+__xlx_offset_param_weight_buf];
  }
  for (int i = 0; i < __xlx_size_param_weight_buf; ++i) {
    ((char*)__xlx_apatb_param_weight_buf)[i*4+0] = __xlx_weight_buf_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weight_buf)[i*4+1] = __xlx_weight_buf_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_weight_buf)[i*4+2] = __xlx_weight_buf_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_weight_buf)[i*4+3] = __xlx_weight_buf_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_biases_buf
  sc_bv<32>*__xlx_biases_buf_output_buffer = new sc_bv<32>[__xlx_size_param_biases_buf];
  for (int i = 0; i < __xlx_size_param_biases_buf; ++i) {
    __xlx_biases_buf_output_buffer[i] = __xlx_biases_buf__input_buffer[i+__xlx_offset_param_biases_buf];
  }
  for (int i = 0; i < __xlx_size_param_biases_buf; ++i) {
    ((char*)__xlx_apatb_param_biases_buf)[i*4+0] = __xlx_biases_buf_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_biases_buf)[i*4+1] = __xlx_biases_buf_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_biases_buf)[i*4+2] = __xlx_biases_buf_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_biases_buf)[i*4+3] = __xlx_biases_buf_output_buffer[i].range(31, 24).to_uint();
  }
}
