# This script segment is generated automatically by AutoPilot

set name cnn_fexp_32ns_32ns_32_10_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fexp} IMPL {fulldsp} LATENCY 9 ALLOW_PRAGMA 1
}


# Memory (RAM/ROM)  definition:
set ID 559
set hasByteEnable 0
set MemName cnn_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_dense_biases_ROM_bkb
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 10
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111010100101000101101010100100" "00111110101010000010010100110110" "00111101110001001011101101100100" "10111101111100011111001011100101" "00111100100110010011110101010100" "00111110001101100010100010000000" "10111100100010011011111100111011" "00111110100000011111001111111100" "10111111000100000001011111000110" "10111110001101000010100001100000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 2.152
set ClkPeriod 10
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 568 \
    name prediction \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename prediction \
    op interface \
    ports { prediction_address0 { O 4 vector } prediction_ce0 { O 1 bit } prediction_we0 { O 1 bit } prediction_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'prediction'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 560 \
    name dense_to_softmax_streams_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_to_softmax_streams_0 \
    op interface \
    ports { dense_to_softmax_streams_0_dout { I 32 vector } dense_to_softmax_streams_0_empty_n { I 1 bit } dense_to_softmax_streams_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 561 \
    name dense_to_softmax_streams_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_to_softmax_streams_1 \
    op interface \
    ports { dense_to_softmax_streams_1_dout { I 32 vector } dense_to_softmax_streams_1_empty_n { I 1 bit } dense_to_softmax_streams_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 562 \
    name dense_to_softmax_streams_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_to_softmax_streams_2 \
    op interface \
    ports { dense_to_softmax_streams_2_dout { I 32 vector } dense_to_softmax_streams_2_empty_n { I 1 bit } dense_to_softmax_streams_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 563 \
    name dense_to_softmax_streams_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_to_softmax_streams_3 \
    op interface \
    ports { dense_to_softmax_streams_3_dout { I 32 vector } dense_to_softmax_streams_3_empty_n { I 1 bit } dense_to_softmax_streams_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 564 \
    name dense_to_softmax_streams_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_to_softmax_streams_4 \
    op interface \
    ports { dense_to_softmax_streams_4_dout { I 32 vector } dense_to_softmax_streams_4_empty_n { I 1 bit } dense_to_softmax_streams_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 565 \
    name dense_to_softmax_streams_5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_to_softmax_streams_5 \
    op interface \
    ports { dense_to_softmax_streams_5_dout { I 32 vector } dense_to_softmax_streams_5_empty_n { I 1 bit } dense_to_softmax_streams_5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 566 \
    name dense_to_softmax_streams_6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_to_softmax_streams_6 \
    op interface \
    ports { dense_to_softmax_streams_6_dout { I 32 vector } dense_to_softmax_streams_6_empty_n { I 1 bit } dense_to_softmax_streams_6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 567 \
    name dense_to_softmax_streams_7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_to_softmax_streams_7 \
    op interface \
    ports { dense_to_softmax_streams_7_dout { I 32 vector } dense_to_softmax_streams_7_empty_n { I 1 bit } dense_to_softmax_streams_7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 569 \
    name exp_sum_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_exp_sum_out \
    op interface \
    ports { exp_sum_out { O 32 vector } exp_sum_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName cnn_flow_control_loop_pipe_sequential_init_U
set CompName cnn_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix cnn_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


