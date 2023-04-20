# 1 "conv.cc"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 375 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/ytq/source/vivado/Vitis_HLS/2022.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 108 "/home/ytq/source/vivado/Vitis_HLS/2022.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_ReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Read(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_WriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Write(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_PrintNone(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintInt(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintDouble(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Return(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_Unroll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_Inline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecStable(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecStableContent(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBindPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipoDepth(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_DataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void __xilinx_ip_top(...) __attribute__ ((nothrow)) __attribute__((overloadable));


}
# 2 "<built-in>" 2
# 1 "conv.cc" 2
# 1 "./conv.hh" 1


# 1 "./../Headers/definitions.h" 1
# 4 "./conv.hh" 2

# 1 "/home/ytq/source/vivado/Vitis_HLS/2022.2/common/technology/autopilot/hls_stream.h" 1
# 15 "/home/ytq/source/vivado/Vitis_HLS/2022.2/common/technology/autopilot/hls_stream.h"
# 1 "/home/ytq/source/vivado/Vitis_HLS/2022.2/common/technology/autopilot/hls_stream_39.h" 1
# 26 "/home/ytq/source/vivado/Vitis_HLS/2022.2/common/technology/autopilot/hls_stream_39.h"
namespace hls {
# 52 "/home/ytq/source/vivado/Vitis_HLS/2022.2/common/technology/autopilot/hls_stream_39.h"
template<typename __STREAM_T__, int DEPTH=0>
class stream;

template<typename __STREAM_T__>
class stream<__STREAM_T__, 0>
{
  public:
    using value_type = __STREAM_T__;

    inline __attribute__((always_inline)) __attribute__((nodebug)) stream() {
      __fpga_set_stream_depth(&this->V, 0);
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) stream(const char* name) {
      (void)(name);
      __fpga_set_stream_depth(&this->V, 0);
    }


  private:
    inline __attribute__((always_inline)) __attribute__((nodebug)) stream(const stream< __STREAM_T__ >& chn):V(chn.V) {
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) stream& operator= (const stream< __STREAM_T__ >& chn) {
        V = chn.V;
        return *this;
    }

  public:

    inline __attribute__((always_inline)) __attribute__((nodebug)) void operator >> (__STREAM_T__& rdata) {
        read(rdata);
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) void operator << (const __STREAM_T__& wdata) {
        write(wdata);
    }


  public:

    inline __attribute__((always_inline)) __attribute__((nodebug)) bool empty() const {
        return !__fpga_fifo_not_empty(&V);
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) bool full() const {
        return !__fpga_fifo_not_full(&V);
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) void read(__STREAM_T__& dout) {
        __fpga_fifo_pop(&V, &dout);
    }


    inline __attribute__((noinline)) __attribute__((nodebug)) bool read_dep(__STREAM_T__& dout, volatile bool flag) {
        __fpga_fifo_pop(&V, &dout);
        return flag;
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) __STREAM_T__ read() {
        __STREAM_T__ tmp;
        read(tmp);
        return tmp;
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) bool read_nb(__STREAM_T__& dout) {
        __STREAM_T__ tmp;

        if (__fpga_fifo_nb_pop(&V, &tmp)) {
            dout = tmp;
            return true;
        } else {
            return false;
        }
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) void write(const __STREAM_T__& din) {
        __fpga_fifo_push(&V, &din);
    }


    inline __attribute__((noinline)) __attribute__((nodebug)) bool write_dep(const __STREAM_T__& din, volatile bool flag) {
        __fpga_fifo_push(&V, &din);
        return flag;
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) bool write_nb(const __STREAM_T__& din) {
        return __fpga_fifo_nb_push(&V, &din);
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) unsigned size() const {
        return __fpga_fifo_size(&V);
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) unsigned capacity() const {
        return __fpga_fifo_capacity(&V);
    }


    void set_name(const char* name) { (void)(name); }

  public:
    __STREAM_T__ V __attribute__((no_ctor));
};

template<typename __STREAM_T__, int DEPTH>
class stream : public stream<__STREAM_T__, 0> {
  public:
    inline __attribute__((always_inline)) __attribute__((nodebug)) stream() {
      __fpga_set_stream_depth(&this->V, DEPTH);
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) stream(const char* name) {
      (void)(name);
      __fpga_set_stream_depth(&this->V, DEPTH);
    }
};
}
# 16 "/home/ytq/source/vivado/Vitis_HLS/2022.2/common/technology/autopilot/hls_stream.h" 2
# 6 "./conv.hh" 2

void
convolution
(
  float pad_img [(28 + (3 - 1))][(28 + (3 - 1))],
  float weight_buf[3][3],
  float biases_buf,
  int filter,
  hls::stream<float> & conv_to_pool_stream
);

void convolutional_layer
(
  float pad_img [(28 + (3 - 1))][(28 + (3 - 1))],
  float pad_img1 [(28 + (3 - 1))][(28 + (3 - 1))],
  float pad_img2 [(28 + (3 - 1))][(28 + (3 - 1))],
  float pad_img3 [(28 + (3 - 1))][(28 + (3 - 1))],
  float pad_img4 [(28 + (3 - 1))][(28 + (3 - 1))],
  float pad_img5 [(28 + (3 - 1))][(28 + (3 - 1))],
  float pad_img6 [(28 + (3 - 1))][(28 + (3 - 1))],
  float pad_img7 [(28 + (3 - 1))][(28 + (3 - 1))],
  float weight_buf_0[3][3],
  float weight_buf_1[3][3],
  float weight_buf_2[3][3],
  float weight_buf_3[3][3],
  float weight_buf_4[3][3],
  float weight_buf_5[3][3],
  float weight_buf_6[3][3],
  float weight_buf_7[3][3],
  float biases_buf_0,
  float biases_buf_1,
  float biases_buf_2,
  float biases_buf_3,
  float biases_buf_4,
  float biases_buf_5,
  float biases_buf_6,
  float biases_buf_7,
  hls::stream<float> conv_to_pool_streams [8]
);
# 2 "conv.cc" 2


float relu (float x)
{
  if(x > 0.0)
    return x;
  else
    return 0.0;
}

void
convolution
(
  float pad_img [(28 + (3 - 1))][(28 + (3 - 1))],
  float weight_buf[3][3],
  float biases_buf,
  int filter,
  hls::stream<float> & conv_to_pool_stream
)
{
  float w_sum = 0.0;

  conv_for_rows:
  for(int r = 0; r < 28; r += 2)
  {
    conv_for_cols:
    for(int c = 0; c < 28; c += 2)
    {
      win_for_rows:
      for (int wr = 0; wr < 3 -1; ++wr)
        win_for_cols:
        for (int wc = 0; wc < 3 -1; ++wc)
        {
#line 12 "/home/ytq/codeField/undergraduate/HLS-CNN/Code/Vitis-HLS/Project/solution1/directives.tcl"
#pragma HLSDIRECTIVE PIPELINE II=5
# 34 "conv.cc"

          w_sum = 0.0;

          krn_for_rows:
          for(int kr = 0; kr < 3; ++kr)
          {
            krn_for_cols:
            for(int kc = 0; kc < 3; ++kc)
            {
              float w = weight_buf[kr][kc];
              float pixel = pad_img[r+wr+kr][c+wc+kc];
              w_sum += w * pixel;
            }
          }

          conv_to_pool_stream.write(relu(w_sum + biases_buf));
        }
    }
  }
}

void
convolutional_layer
(
  float pad_img [(28 + (3 - 1))][(28 + (3 - 1))],
  float pad_img1 [(28 + (3 - 1))][(28 + (3 - 1))],
  float pad_img2 [(28 + (3 - 1))][(28 + (3 - 1))],
  float pad_img3 [(28 + (3 - 1))][(28 + (3 - 1))],
  float pad_img4 [(28 + (3 - 1))][(28 + (3 - 1))],
  float pad_img5 [(28 + (3 - 1))][(28 + (3 - 1))],
  float pad_img6 [(28 + (3 - 1))][(28 + (3 - 1))],
  float pad_img7 [(28 + (3 - 1))][(28 + (3 - 1))],
  float weight_buf_0[3][3],
  float weight_buf_1[3][3],
  float weight_buf_2[3][3],
  float weight_buf_3[3][3],
  float weight_buf_4[3][3],
  float weight_buf_5[3][3],
  float weight_buf_6[3][3],
  float weight_buf_7[3][3],
  float biases_buf_0,
  float biases_buf_1,
  float biases_buf_2,
  float biases_buf_3,
  float biases_buf_4,
  float biases_buf_5,
  float biases_buf_6,
  float biases_buf_7,
  hls::stream<float> conv_to_pool_streams [8]
)
{
#line 8 "/home/ytq/codeField/undergraduate/HLS-CNN/Code/Vitis-HLS/Project/solution1/directives.tcl"
#pragma HLSDIRECTIVE DATAFLOW
# 84 "conv.cc"

  convolution(pad_img, weight_buf_0, biases_buf_0, 0, conv_to_pool_streams[0]);
  convolution(pad_img1, weight_buf_1, biases_buf_1, 1, conv_to_pool_streams[1]);
  convolution(pad_img2, weight_buf_2, biases_buf_2, 2, conv_to_pool_streams[2]);
  convolution(pad_img3, weight_buf_3, biases_buf_3, 3, conv_to_pool_streams[3]);
  convolution(pad_img4, weight_buf_4, biases_buf_4, 4, conv_to_pool_streams[4]);
  convolution(pad_img5, weight_buf_5, biases_buf_5, 5, conv_to_pool_streams[5]);
  convolution(pad_img6, weight_buf_6, biases_buf_6, 6, conv_to_pool_streams[6]);
  convolution(pad_img7, weight_buf_7, biases_buf_7, 7, conv_to_pool_streams[7]);
}
