# 1 "cnn.cc"
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
# 1 "cnn.cc" 2
# 1 "./cnn.hh" 1


# 1 "./../Headers/definitions.h" 1
# 4 "./cnn.hh" 2

__attribute__((sdx_kernel("cnn", 0))) void cnn
(
  float img_in [28][28],
  float pred [10],
  float weight_buf[8][3][3],
  float biases_buf[8]
);
# 2 "cnn.cc" 2
# 1 "./utils.hh" 1




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
# 6 "./utils.hh" 2

void
normalization_and_padding(
  float img_in [28][28],
  float img_out [(28 + (3 - 1))][(28 + (3 - 1))]
);
# 3 "cnn.cc" 2
# 1 "./conv.hh" 1






void
convolution
(
  float pad_img [(28 + (3 - 1))][(28 + (3 - 1))],
  int weight_buf[3][3],
  int biases_buf,
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
# 4 "cnn.cc" 2
# 1 "./pool.hh" 1






void
max_pooling_layer
(
  hls::stream<float> conv_to_pool_streams[8],
  hls::stream<float> pool_to_flat_streams[8]
);
# 5 "cnn.cc" 2
# 1 "./flat.hh" 1






void
flattening_layer
(
  hls::stream<float> pool_to_flat_streams[8],
  hls::stream<float> flat_to_dense_stream[8]
);
# 6 "cnn.cc" 2
# 1 "./dense.hh" 1






void dense_layer_soft_max
(
  hls::stream<float> dense_to_softmax_streams [8],
  float prediction [10]
);

void
dense_layer
(
  hls::stream<float> flat_to_dense_streams[8],
  hls::stream<float> dense_to_softmax_stream[8]
);
# 7 "cnn.cc" 2

# 1 "/usr/include/string.h" 1 3 4
# 26 "/usr/include/string.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 402 "/usr/include/features.h" 3 4
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 403 "/usr/include/features.h" 2 3 4
# 424 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 427 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 428 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 429 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 425 "/usr/include/features.h" 2 3 4
# 448 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 449 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 2 3 4
# 27 "/usr/include/string.h" 2 3 4

extern "C" {





# 1 "/home/ytq/source/vivado/Vitis_HLS/2022.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 62 "/home/ytq/source/vivado/Vitis_HLS/2022.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 34 "/usr/include/string.h" 2 3 4








extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) throw () __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));





extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));




extern void *memset (void *__s, int __c, size_t __n) throw () __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 90 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 103 "/usr/include/string.h" 3 4
extern void *rawmemchr (const void *__s, int __c)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 114 "/usr/include/string.h" 3 4
extern void *memrchr (const void *__s, int __c, size_t __n)
      throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     throw () __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     throw () __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) throw () __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     throw () __attribute__ ((__nonnull__ (2)));




# 1 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 3 4
struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
};

typedef struct __locale_struct *__locale_t;
# 23 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 2 3 4

typedef __locale_t locale_t;
# 153 "/usr/include/string.h" 2 3 4


extern int strcoll_l (const char *__s1, const char *__s2, locale_t __l)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));


extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    locale_t __l) throw () __attribute__ ((__nonnull__ (2, 4)));





extern char *strdup (const char *__s)
     throw () __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     throw () __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 225 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 252 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 265 "/usr/include/string.h" 3 4
extern char *strchrnul (const char *__s, int __c)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strcspn (const char *__s, const char *__reject)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 302 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 329 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     throw () __attribute__ ((__nonnull__ (2)));



extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     throw () __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     throw () __attribute__ ((__nonnull__ (2, 3)));
# 359 "/usr/include/string.h" 3 4
extern char *strcasestr (const char *__haystack, const char *__needle)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));







extern void *memmem (const void *__haystack, size_t __haystacklen,
       const void *__needle, size_t __needlelen)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 3)));



extern void *__mempcpy (void *__restrict __dest,
   const void *__restrict __src, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern void *mempcpy (void *__restrict __dest,
        const void *__restrict __src, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));




extern size_t strlen (const char *__s)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern size_t strnlen (const char *__string, size_t __maxlen)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern char *strerror (int __errnum) throw ();
# 420 "/usr/include/string.h" 3 4
extern char *strerror_r (int __errnum, char *__buf, size_t __buflen)
     throw () __attribute__ ((__nonnull__ (2))) ;





extern char *strerror_l (int __errnum, locale_t __l) throw ();




# 1 "/usr/include/strings.h" 1 3 4
# 23 "/usr/include/strings.h" 3 4
# 1 "/home/ytq/source/vivado/Vitis_HLS/2022.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 24 "/usr/include/strings.h" 2 3 4






extern "C" {



extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bcopy (const void *__src, void *__dest, size_t __n)
  throw () __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) throw () __attribute__ ((__nonnull__ (1)));
# 68 "/usr/include/strings.h" 3 4
extern char *index (const char *__s, int __c)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 96 "/usr/include/strings.h" 3 4
extern char *rindex (const char *__s, int __c)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern int ffs (int __i) throw () __attribute__ ((__const__));





extern int ffsl (long int __l) throw () __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     throw () __attribute__ ((__const__));



extern int strcasecmp (const char *__s1, const char *__s2)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));






extern int strcasecmp_l (const char *__s1, const char *__s2, locale_t __loc)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));



extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, locale_t __loc)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));


}
# 432 "/usr/include/string.h" 2 3 4



extern void explicit_bzero (void *__s, size_t __n) throw () __attribute__ ((__nonnull__ (1)));



extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     throw () __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) throw ();


extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     throw () __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));




extern int strverscmp (const char *__s1, const char *__s2)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strfry (char *__string) throw () __attribute__ ((__nonnull__ (1)));


extern void *memfrob (void *__s, size_t __n) throw () __attribute__ ((__nonnull__ (1)));
# 486 "/usr/include/string.h" 3 4
extern char *basename (const char *__filename) throw () __attribute__ ((__nonnull__ (1)));
# 498 "/usr/include/string.h" 3 4
}
# 9 "cnn.cc" 2





void
dataflow_section
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
  float prediction [10]
)
{
#line 6 "/home/ytq/codeField/undergraduate/CNN_Accelerator/Code/Vitis-HLS/Project/solution1/directives.tcl"
#pragma HLSDIRECTIVE DATAFLOW
# 43 "cnn.cc"







  hls::stream<float, 28 * 28>
  conv_to_pool_streams [8];


  convolutional_layer(pad_img, pad_img1, pad_img2, pad_img3,
                      pad_img4, pad_img5, pad_img6, pad_img7,
       weight_buf_0,weight_buf_1,weight_buf_2,
       weight_buf_3,weight_buf_4,weight_buf_5,
       weight_buf_6,weight_buf_7,
       biases_buf_0,biases_buf_1,biases_buf_2,
       biases_buf_3,biases_buf_4,biases_buf_5,
       biases_buf_6,biases_buf_7,
       conv_to_pool_streams);
# 73 "cnn.cc"
  hls::stream<float, (28 / 2) * (28 / 2)>
  pool_to_flat_streams[8];

  max_pooling_layer(conv_to_pool_streams, pool_to_flat_streams);
# 85 "cnn.cc"
  hls::stream<float, (8 * (28 / 2) * (28 / 2)) / 8> flat_to_dense_streams [8];
  flattening_layer(pool_to_flat_streams, flat_to_dense_streams);


  hls::stream<float, 10> dense_to_softmax_streams [8];
  dense_layer(flat_to_dense_streams, dense_to_softmax_streams);


  dense_layer_soft_max(dense_to_softmax_streams, prediction);
}

__attribute__((sdx_kernel("cnn", 0))) void cnn
(
  float img_in [28][28],
  float prediction [10],
  float weight_buf[8][3][3],
  float biases_buf[8]
)
{
#line 14 "/home/ytq/codeField/undergraduate/CNN_Accelerator/Code/Vitis-HLS/Project/solution1/directives.tcl"
#pragma HLSDIRECTIVE TOP name=cnn
# 103 "cnn.cc"

#line 21 "/home/ytq/codeField/undergraduate/CNN_Accelerator/Code/Vitis-HLS/Project/solution1/csynth.tcl"
#pragma HLSDIRECTIVE TOP name=cnn
# 103 "cnn.cc"



  float pad_img [(28 + (3 - 1))][(28 + (3 - 1))];
  normalization_and_padding(img_in, pad_img);
# 117 "cnn.cc"
  float pad_img1 [(28 + (3 - 1))][(28 + (3 - 1))];
  float pad_img2 [(28 + (3 - 1))][(28 + (3 - 1))];
  float pad_img3 [(28 + (3 - 1))][(28 + (3 - 1))];
  float pad_img4 [(28 + (3 - 1))][(28 + (3 - 1))];
  float pad_img5 [(28 + (3 - 1))][(28 + (3 - 1))];
  float pad_img6 [(28 + (3 - 1))][(28 + (3 - 1))];
  float pad_img7 [(28 + (3 - 1))][(28 + (3 - 1))];

  float weight_buf_0[3][3];
  float weight_buf_1[3][3];
  float weight_buf_2[3][3];
  float weight_buf_3[3][3];
  float weight_buf_4[3][3];
  float weight_buf_5[3][3];
  float weight_buf_6[3][3];
  float weight_buf_7[3][3];

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
  for (int i = 0; i < (28 + (3 - 1)); ++i)
    clone_for_cols:
    for (int j = 0; j < (28 + (3 - 1)); ++j)
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

  memcpy(weight_buf_0,weight_buf[0],3*3*sizeof(float));
  memcpy(weight_buf_1,weight_buf[1],3*3*sizeof(float));
  memcpy(weight_buf_2,weight_buf[2],3*3*sizeof(float));
  memcpy(weight_buf_3,weight_buf[3],3*3*sizeof(float));
  memcpy(weight_buf_4,weight_buf[4],3*3*sizeof(float));
  memcpy(weight_buf_5,weight_buf[5],3*3*sizeof(float));
  memcpy(weight_buf_6,weight_buf[6],3*3*sizeof(float));
  memcpy(weight_buf_7,weight_buf[7],3*3*sizeof(float));

  biases_buf_0 = biases_buf[0];
  biases_buf_1 = biases_buf[1];
  biases_buf_2 = biases_buf[2];
  biases_buf_3 = biases_buf[3];
  biases_buf_4 = biases_buf[4];
  biases_buf_5 = biases_buf[5];
  biases_buf_6 = biases_buf[6];
  biases_buf_7 = biases_buf[7];


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
