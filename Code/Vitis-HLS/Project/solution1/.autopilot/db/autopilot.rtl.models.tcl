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
  {SRCNAME convolution MODELNAME convolution RTLNAME cnn_convolution}
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
  {SRCNAME max_pooling.1 MODELNAME max_pooling_1 RTLNAME cnn_max_pooling_1}
  {SRCNAME max_pooling.2 MODELNAME max_pooling_2 RTLNAME cnn_max_pooling_2}
  {SRCNAME max_pooling.3 MODELNAME max_pooling_3 RTLNAME cnn_max_pooling_3}
  {SRCNAME max_pooling.4 MODELNAME max_pooling_4 RTLNAME cnn_max_pooling_4}
  {SRCNAME max_pooling.5 MODELNAME max_pooling_5 RTLNAME cnn_max_pooling_5}
  {SRCNAME max_pooling.6 MODELNAME max_pooling_6 RTLNAME cnn_max_pooling_6}
  {SRCNAME max_pooling.7 MODELNAME max_pooling_7 RTLNAME cnn_max_pooling_7}
  {SRCNAME max_pooling_layer MODELNAME max_pooling_layer RTLNAME cnn_max_pooling_layer}
  {SRCNAME flattening MODELNAME flattening RTLNAME cnn_flattening}
  {SRCNAME flattening.1 MODELNAME flattening_1 RTLNAME cnn_flattening_1}
  {SRCNAME flattening.2 MODELNAME flattening_2 RTLNAME cnn_flattening_2}
  {SRCNAME flattening.3 MODELNAME flattening_3 RTLNAME cnn_flattening_3}
  {SRCNAME flattening.4 MODELNAME flattening_4 RTLNAME cnn_flattening_4}
  {SRCNAME flattening.5 MODELNAME flattening_5 RTLNAME cnn_flattening_5}
  {SRCNAME flattening.6 MODELNAME flattening_6 RTLNAME cnn_flattening_6}
  {SRCNAME flattening.7 MODELNAME flattening_7 RTLNAME cnn_flattening_7}
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
  {SRCNAME dense.1_Pipeline_1 MODELNAME dense_1_Pipeline_1 RTLNAME cnn_dense_1_Pipeline_1}
  {SRCNAME dense.1_Pipeline_dense_for_flat MODELNAME dense_1_Pipeline_dense_for_flat RTLNAME cnn_dense_1_Pipeline_dense_for_flat}
  {SRCNAME dense.1_Pipeline_VITIS_LOOP_60_2 MODELNAME dense_1_Pipeline_VITIS_LOOP_60_2 RTLNAME cnn_dense_1_Pipeline_VITIS_LOOP_60_2}
  {SRCNAME dense.1 MODELNAME dense_1 RTLNAME cnn_dense_1}
  {SRCNAME dense.2_Pipeline_1 MODELNAME dense_2_Pipeline_1 RTLNAME cnn_dense_2_Pipeline_1}
  {SRCNAME dense.2_Pipeline_dense_for_flat MODELNAME dense_2_Pipeline_dense_for_flat RTLNAME cnn_dense_2_Pipeline_dense_for_flat}
  {SRCNAME dense.2_Pipeline_VITIS_LOOP_60_2 MODELNAME dense_2_Pipeline_VITIS_LOOP_60_2 RTLNAME cnn_dense_2_Pipeline_VITIS_LOOP_60_2}
  {SRCNAME dense.2 MODELNAME dense_2 RTLNAME cnn_dense_2}
  {SRCNAME dense.3_Pipeline_1 MODELNAME dense_3_Pipeline_1 RTLNAME cnn_dense_3_Pipeline_1}
  {SRCNAME dense.3_Pipeline_dense_for_flat MODELNAME dense_3_Pipeline_dense_for_flat RTLNAME cnn_dense_3_Pipeline_dense_for_flat}
  {SRCNAME dense.3_Pipeline_VITIS_LOOP_60_2 MODELNAME dense_3_Pipeline_VITIS_LOOP_60_2 RTLNAME cnn_dense_3_Pipeline_VITIS_LOOP_60_2}
  {SRCNAME dense.3 MODELNAME dense_3 RTLNAME cnn_dense_3}
  {SRCNAME dense.4_Pipeline_1 MODELNAME dense_4_Pipeline_1 RTLNAME cnn_dense_4_Pipeline_1}
  {SRCNAME dense.4_Pipeline_dense_for_flat MODELNAME dense_4_Pipeline_dense_for_flat RTLNAME cnn_dense_4_Pipeline_dense_for_flat}
  {SRCNAME dense.4_Pipeline_VITIS_LOOP_60_2 MODELNAME dense_4_Pipeline_VITIS_LOOP_60_2 RTLNAME cnn_dense_4_Pipeline_VITIS_LOOP_60_2}
  {SRCNAME dense.4 MODELNAME dense_4 RTLNAME cnn_dense_4}
  {SRCNAME dense.5_Pipeline_1 MODELNAME dense_5_Pipeline_1 RTLNAME cnn_dense_5_Pipeline_1}
  {SRCNAME dense.5_Pipeline_dense_for_flat MODELNAME dense_5_Pipeline_dense_for_flat RTLNAME cnn_dense_5_Pipeline_dense_for_flat}
  {SRCNAME dense.5_Pipeline_VITIS_LOOP_60_2 MODELNAME dense_5_Pipeline_VITIS_LOOP_60_2 RTLNAME cnn_dense_5_Pipeline_VITIS_LOOP_60_2}
  {SRCNAME dense.5 MODELNAME dense_5 RTLNAME cnn_dense_5}
  {SRCNAME dense.6_Pipeline_1 MODELNAME dense_6_Pipeline_1 RTLNAME cnn_dense_6_Pipeline_1}
  {SRCNAME dense.6_Pipeline_dense_for_flat MODELNAME dense_6_Pipeline_dense_for_flat RTLNAME cnn_dense_6_Pipeline_dense_for_flat}
  {SRCNAME dense.6_Pipeline_VITIS_LOOP_60_2 MODELNAME dense_6_Pipeline_VITIS_LOOP_60_2 RTLNAME cnn_dense_6_Pipeline_VITIS_LOOP_60_2}
  {SRCNAME dense.6 MODELNAME dense_6 RTLNAME cnn_dense_6}
  {SRCNAME dense.7_Pipeline_1 MODELNAME dense_7_Pipeline_1 RTLNAME cnn_dense_7_Pipeline_1}
  {SRCNAME dense.7_Pipeline_dense_for_flat MODELNAME dense_7_Pipeline_dense_for_flat RTLNAME cnn_dense_7_Pipeline_dense_for_flat}
  {SRCNAME dense.7_Pipeline_VITIS_LOOP_60_2 MODELNAME dense_7_Pipeline_VITIS_LOOP_60_2 RTLNAME cnn_dense_7_Pipeline_VITIS_LOOP_60_2}
  {SRCNAME dense.7 MODELNAME dense_7 RTLNAME cnn_dense_7}
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
      {MODELNAME cnn_fifo_w32_d784_A RTLNAME cnn_fifo_w32_d784_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME cnn_fifo_w32_d196_A RTLNAME cnn_fifo_w32_d196_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME cnn_fifo_w32_d10_S RTLNAME cnn_fifo_w32_d10_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME cnn_start_for_max_pooling_layer_U0 RTLNAME cnn_start_for_max_pooling_layer_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME cnn_start_for_flattening_layer_U0 RTLNAME cnn_start_for_flattening_layer_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME cnn_start_for_dense_layer_U0 RTLNAME cnn_start_for_dense_layer_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME cnn MODELNAME cnn RTLNAME cnn IS_TOP 1
    SUBMODULES {
      {MODELNAME cnn_pad_img_RAM_1WNR_AUTO_1R1W RTLNAME cnn_pad_img_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_weight_buf_0_RAM_AUTO_1R1W RTLNAME cnn_weight_buf_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
