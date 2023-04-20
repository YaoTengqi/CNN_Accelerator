set SynModuleInfo {
  {SRCNAME cnn_Pipeline_pad_for_rows_pad_for_cols MODELNAME cnn_Pipeline_pad_for_rows_pad_for_cols RTLNAME cnn_cnn_Pipeline_pad_for_rows_pad_for_cols
    SUBMODULES {
      {MODELNAME cnn_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME cnn_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME cnn_flow_control_loop_pipe_sequential_init RTLNAME cnn_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cnn_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cnn_Pipeline_clone_for_rows_clone_for_cols MODELNAME cnn_Pipeline_clone_for_rows_clone_for_cols RTLNAME cnn_cnn_Pipeline_clone_for_rows_clone_for_cols}
  {SRCNAME cnn_Pipeline_3 MODELNAME cnn_Pipeline_3 RTLNAME cnn_cnn_Pipeline_3}
  {SRCNAME cnn_Pipeline_4 MODELNAME cnn_Pipeline_4 RTLNAME cnn_cnn_Pipeline_4}
  {SRCNAME cnn_Pipeline_5 MODELNAME cnn_Pipeline_5 RTLNAME cnn_cnn_Pipeline_5}
  {SRCNAME cnn_Pipeline_6 MODELNAME cnn_Pipeline_6 RTLNAME cnn_cnn_Pipeline_6}
  {SRCNAME cnn_Pipeline_7 MODELNAME cnn_Pipeline_7 RTLNAME cnn_cnn_Pipeline_7}
  {SRCNAME cnn_Pipeline_8 MODELNAME cnn_Pipeline_8 RTLNAME cnn_cnn_Pipeline_8}
  {SRCNAME cnn_Pipeline_9 MODELNAME cnn_Pipeline_9 RTLNAME cnn_cnn_Pipeline_9}
  {SRCNAME cnn_Pipeline_10 MODELNAME cnn_Pipeline_10 RTLNAME cnn_cnn_Pipeline_10}
  {SRCNAME convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols MODELNAME convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols RTLNAME cnn_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols
    SUBMODULES {
      {MODELNAME cnn_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME cnn_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME cnn_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME cnn_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME cnn_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME cnn_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME convolution MODELNAME convolution RTLNAME cnn_convolution
    SUBMODULES {
      {MODELNAME cnn_sitofp_32ns_32_6_no_dsp_1 RTLNAME cnn_sitofp_32ns_32_6_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 5 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME convolution.1_Pipeline_conv_for_rows_win_for_rows_win_for_cols MODELNAME convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols RTLNAME cnn_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols}
  {SRCNAME convolution.1 MODELNAME convolution_1 RTLNAME cnn_convolution_1}
  {SRCNAME convolution.2_Pipeline_conv_for_rows_win_for_rows_win_for_cols MODELNAME convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols RTLNAME cnn_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols}
  {SRCNAME convolution.2 MODELNAME convolution_2 RTLNAME cnn_convolution_2}
  {SRCNAME convolution.3_Pipeline_conv_for_rows_win_for_rows_win_for_cols MODELNAME convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols RTLNAME cnn_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols}
  {SRCNAME convolution.3 MODELNAME convolution_3 RTLNAME cnn_convolution_3}
  {SRCNAME convolution.4_Pipeline_conv_for_rows_win_for_rows_win_for_cols MODELNAME convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols RTLNAME cnn_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols}
  {SRCNAME convolution.4 MODELNAME convolution_4 RTLNAME cnn_convolution_4}
  {SRCNAME convolution.5_Pipeline_conv_for_rows_win_for_rows_win_for_cols MODELNAME convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols RTLNAME cnn_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols}
  {SRCNAME convolution.5 MODELNAME convolution_5 RTLNAME cnn_convolution_5}
  {SRCNAME convolution.6_Pipeline_conv_for_rows_win_for_rows_win_for_cols MODELNAME convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols RTLNAME cnn_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols}
  {SRCNAME convolution.6 MODELNAME convolution_6 RTLNAME cnn_convolution_6}
  {SRCNAME convolution.7_Pipeline_conv_for_rows_win_for_rows_win_for_cols MODELNAME convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols RTLNAME cnn_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols}
  {SRCNAME convolution.7 MODELNAME convolution_7 RTLNAME cnn_convolution_7}
  {SRCNAME convolutional_layer MODELNAME convolutional_layer RTLNAME cnn_convolutional_layer}
  {SRCNAME max_pooling MODELNAME max_pooling RTLNAME cnn_max_pooling
    SUBMODULES {
      {MODELNAME cnn_flow_control_loop_pipe RTLNAME cnn_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cnn_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME max_pooling.8 MODELNAME max_pooling_8 RTLNAME cnn_max_pooling_8}
  {SRCNAME max_pooling.9 MODELNAME max_pooling_9 RTLNAME cnn_max_pooling_9}
  {SRCNAME max_pooling.10 MODELNAME max_pooling_10 RTLNAME cnn_max_pooling_10}
  {SRCNAME max_pooling.11 MODELNAME max_pooling_11 RTLNAME cnn_max_pooling_11}
  {SRCNAME max_pooling.12 MODELNAME max_pooling_12 RTLNAME cnn_max_pooling_12}
  {SRCNAME max_pooling.13 MODELNAME max_pooling_13 RTLNAME cnn_max_pooling_13}
  {SRCNAME max_pooling.14 MODELNAME max_pooling_14 RTLNAME cnn_max_pooling_14}
  {SRCNAME max_pooling_layer MODELNAME max_pooling_layer RTLNAME cnn_max_pooling_layer}
  {SRCNAME flattening MODELNAME flattening RTLNAME cnn_flattening}
  {SRCNAME flattening.15 MODELNAME flattening_15 RTLNAME cnn_flattening_15}
  {SRCNAME flattening.16 MODELNAME flattening_16 RTLNAME cnn_flattening_16}
  {SRCNAME flattening.17 MODELNAME flattening_17 RTLNAME cnn_flattening_17}
  {SRCNAME flattening.18 MODELNAME flattening_18 RTLNAME cnn_flattening_18}
  {SRCNAME flattening.19 MODELNAME flattening_19 RTLNAME cnn_flattening_19}
  {SRCNAME flattening.20 MODELNAME flattening_20 RTLNAME cnn_flattening_20}
  {SRCNAME flattening.21 MODELNAME flattening_21 RTLNAME cnn_flattening_21}
  {SRCNAME flattening_layer MODELNAME flattening_layer RTLNAME cnn_flattening_layer}
  {SRCNAME dense_Pipeline_1 MODELNAME dense_Pipeline_1 RTLNAME cnn_dense_Pipeline_1}
  {SRCNAME dense_Pipeline_dense_for_flat MODELNAME dense_Pipeline_dense_for_flat RTLNAME cnn_dense_Pipeline_dense_for_flat
    SUBMODULES {
      {MODELNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_72_ROM_AUTO_1R RTLNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_72_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_65_ROM_AUTO_1R RTLNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_65_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_58_ROM_AUTO_1R RTLNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_58_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_51_ROM_AUTO_1R RTLNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_51_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_44_ROM_AUTO_1R RTLNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_44_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_37_ROM_AUTO_1R RTLNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_37_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_30_ROM_AUTO_1R RTLNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_30_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_23_ROM_AUTO_1R RTLNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_23_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_16_ROM_AUTO_1R RTLNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_16_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_ROM_AUTO_1R RTLNAME cnn_dense_Pipeline_dense_for_flat_dense_weights_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_Pipeline_VITIS_LOOP_60_2 MODELNAME dense_Pipeline_VITIS_LOOP_60_2 RTLNAME cnn_dense_Pipeline_VITIS_LOOP_60_2}
  {SRCNAME dense MODELNAME dense RTLNAME cnn_dense
    SUBMODULES {
      {MODELNAME cnn_dense_dense_array_RAM_AUTO_1R1W RTLNAME cnn_dense_dense_array_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense.22_Pipeline_1 MODELNAME dense_22_Pipeline_1 RTLNAME cnn_dense_22_Pipeline_1}
  {SRCNAME dense.22_Pipeline_dense_for_flat MODELNAME dense_22_Pipeline_dense_for_flat RTLNAME cnn_dense_22_Pipeline_dense_for_flat}
  {SRCNAME dense.22_Pipeline_VITIS_LOOP_60_2 MODELNAME dense_22_Pipeline_VITIS_LOOP_60_2 RTLNAME cnn_dense_22_Pipeline_VITIS_LOOP_60_2}
  {SRCNAME dense.22 MODELNAME dense_22 RTLNAME cnn_dense_22}
  {SRCNAME dense.23_Pipeline_1 MODELNAME dense_23_Pipeline_1 RTLNAME cnn_dense_23_Pipeline_1}
  {SRCNAME dense.23_Pipeline_dense_for_flat MODELNAME dense_23_Pipeline_dense_for_flat RTLNAME cnn_dense_23_Pipeline_dense_for_flat}
  {SRCNAME dense.23_Pipeline_VITIS_LOOP_60_2 MODELNAME dense_23_Pipeline_VITIS_LOOP_60_2 RTLNAME cnn_dense_23_Pipeline_VITIS_LOOP_60_2}
  {SRCNAME dense.23 MODELNAME dense_23 RTLNAME cnn_dense_23}
  {SRCNAME dense.24_Pipeline_1 MODELNAME dense_24_Pipeline_1 RTLNAME cnn_dense_24_Pipeline_1}
  {SRCNAME dense.24_Pipeline_dense_for_flat MODELNAME dense_24_Pipeline_dense_for_flat RTLNAME cnn_dense_24_Pipeline_dense_for_flat}
  {SRCNAME dense.24_Pipeline_VITIS_LOOP_60_2 MODELNAME dense_24_Pipeline_VITIS_LOOP_60_2 RTLNAME cnn_dense_24_Pipeline_VITIS_LOOP_60_2}
  {SRCNAME dense.24 MODELNAME dense_24 RTLNAME cnn_dense_24}
  {SRCNAME dense.25_Pipeline_1 MODELNAME dense_25_Pipeline_1 RTLNAME cnn_dense_25_Pipeline_1}
  {SRCNAME dense.25_Pipeline_dense_for_flat MODELNAME dense_25_Pipeline_dense_for_flat RTLNAME cnn_dense_25_Pipeline_dense_for_flat}
  {SRCNAME dense.25_Pipeline_VITIS_LOOP_60_2 MODELNAME dense_25_Pipeline_VITIS_LOOP_60_2 RTLNAME cnn_dense_25_Pipeline_VITIS_LOOP_60_2}
  {SRCNAME dense.25 MODELNAME dense_25 RTLNAME cnn_dense_25}
  {SRCNAME dense.26_Pipeline_1 MODELNAME dense_26_Pipeline_1 RTLNAME cnn_dense_26_Pipeline_1}
  {SRCNAME dense.26_Pipeline_dense_for_flat MODELNAME dense_26_Pipeline_dense_for_flat RTLNAME cnn_dense_26_Pipeline_dense_for_flat}
  {SRCNAME dense.26_Pipeline_VITIS_LOOP_60_2 MODELNAME dense_26_Pipeline_VITIS_LOOP_60_2 RTLNAME cnn_dense_26_Pipeline_VITIS_LOOP_60_2}
  {SRCNAME dense.26 MODELNAME dense_26 RTLNAME cnn_dense_26}
  {SRCNAME dense.27_Pipeline_1 MODELNAME dense_27_Pipeline_1 RTLNAME cnn_dense_27_Pipeline_1}
  {SRCNAME dense.27_Pipeline_dense_for_flat MODELNAME dense_27_Pipeline_dense_for_flat RTLNAME cnn_dense_27_Pipeline_dense_for_flat}
  {SRCNAME dense.27_Pipeline_VITIS_LOOP_60_2 MODELNAME dense_27_Pipeline_VITIS_LOOP_60_2 RTLNAME cnn_dense_27_Pipeline_VITIS_LOOP_60_2}
  {SRCNAME dense.27 MODELNAME dense_27 RTLNAME cnn_dense_27}
  {SRCNAME dense.28_Pipeline_1 MODELNAME dense_28_Pipeline_1 RTLNAME cnn_dense_28_Pipeline_1}
  {SRCNAME dense.28_Pipeline_dense_for_flat MODELNAME dense_28_Pipeline_dense_for_flat RTLNAME cnn_dense_28_Pipeline_dense_for_flat}
  {SRCNAME dense.28_Pipeline_VITIS_LOOP_60_2 MODELNAME dense_28_Pipeline_VITIS_LOOP_60_2 RTLNAME cnn_dense_28_Pipeline_VITIS_LOOP_60_2}
  {SRCNAME dense.28 MODELNAME dense_28 RTLNAME cnn_dense_28}
  {SRCNAME dense_layer MODELNAME dense_layer RTLNAME cnn_dense_layer}
  {SRCNAME dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size MODELNAME dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size RTLNAME cnn_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size
    SUBMODULES {
      {MODELNAME cnn_fexp_32ns_32ns_32_10_full_dsp_1 RTLNAME cnn_fexp_32ns_32ns_32_10_full_dsp_1 BINDTYPE op TYPE fexp IMPL fulldsp LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME cnn_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_dense_biases_ROM_bkb RTLNAME cnn_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_dense_biases_ROM_bkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_layer_soft_max_Pipeline_dense_soft_max_for_digits MODELNAME dense_layer_soft_max_Pipeline_dense_soft_max_for_digits RTLNAME cnn_dense_layer_soft_max_Pipeline_dense_soft_max_for_digits}
  {SRCNAME dense_layer_soft_max MODELNAME dense_layer_soft_max RTLNAME cnn_dense_layer_soft_max}
  {SRCNAME dataflow_section MODELNAME dataflow_section RTLNAME cnn_dataflow_section
    SUBMODULES {
      {MODELNAME cnn_fifo_w32_d784_A RTLNAME cnn_fifo_w32_d784_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME conv_to_pool_streams_0_U}
      {MODELNAME cnn_fifo_w32_d784_A RTLNAME cnn_fifo_w32_d784_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME conv_to_pool_streams_1_U}
      {MODELNAME cnn_fifo_w32_d784_A RTLNAME cnn_fifo_w32_d784_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME conv_to_pool_streams_2_U}
      {MODELNAME cnn_fifo_w32_d784_A RTLNAME cnn_fifo_w32_d784_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME conv_to_pool_streams_3_U}
      {MODELNAME cnn_fifo_w32_d784_A RTLNAME cnn_fifo_w32_d784_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME conv_to_pool_streams_4_U}
      {MODELNAME cnn_fifo_w32_d784_A RTLNAME cnn_fifo_w32_d784_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME conv_to_pool_streams_5_U}
      {MODELNAME cnn_fifo_w32_d784_A RTLNAME cnn_fifo_w32_d784_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME conv_to_pool_streams_6_U}
      {MODELNAME cnn_fifo_w32_d784_A RTLNAME cnn_fifo_w32_d784_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME conv_to_pool_streams_7_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pool_to_flat_streams_0_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pool_to_flat_streams_1_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pool_to_flat_streams_2_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pool_to_flat_streams_3_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pool_to_flat_streams_4_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pool_to_flat_streams_5_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pool_to_flat_streams_6_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pool_to_flat_streams_7_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME flat_to_dense_streams_0_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME flat_to_dense_streams_1_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME flat_to_dense_streams_2_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME flat_to_dense_streams_3_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME flat_to_dense_streams_4_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME flat_to_dense_streams_5_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME flat_to_dense_streams_6_U}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME flat_to_dense_streams_7_U}
      {MODELNAME cnn_fifo_w32_d10_S RTLNAME cnn_fifo_w32_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dense_to_softmax_streams_0_U}
      {MODELNAME cnn_fifo_w32_d10_S RTLNAME cnn_fifo_w32_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dense_to_softmax_streams_1_U}
      {MODELNAME cnn_fifo_w32_d10_S RTLNAME cnn_fifo_w32_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dense_to_softmax_streams_2_U}
      {MODELNAME cnn_fifo_w32_d10_S RTLNAME cnn_fifo_w32_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dense_to_softmax_streams_3_U}
      {MODELNAME cnn_fifo_w32_d10_S RTLNAME cnn_fifo_w32_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dense_to_softmax_streams_4_U}
      {MODELNAME cnn_fifo_w32_d10_S RTLNAME cnn_fifo_w32_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dense_to_softmax_streams_5_U}
      {MODELNAME cnn_fifo_w32_d10_S RTLNAME cnn_fifo_w32_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dense_to_softmax_streams_6_U}
      {MODELNAME cnn_fifo_w32_d10_S RTLNAME cnn_fifo_w32_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dense_to_softmax_streams_7_U}
      {MODELNAME cnn_start_for_max_pooling_layer_U0 RTLNAME cnn_start_for_max_pooling_layer_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_max_pooling_layer_U0_U}
      {MODELNAME cnn_start_for_flattening_layer_U0 RTLNAME cnn_start_for_flattening_layer_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_flattening_layer_U0_U}
      {MODELNAME cnn_start_for_dense_layer_U0 RTLNAME cnn_start_for_dense_layer_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_layer_U0_U}
    }
  }
  {SRCNAME cnn MODELNAME cnn RTLNAME cnn IS_TOP 1
    SUBMODULES {
      {MODELNAME cnn_pad_img_RAM_1WNR_AUTO_1R1W RTLNAME cnn_pad_img_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_weight_buf_0_RAM_AUTO_1R1W RTLNAME cnn_weight_buf_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
