# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name dense_array_load_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_39 \
    op interface \
    ports { dense_array_load_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name dense_array_load_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_38 \
    op interface \
    ports { dense_array_load_38 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name dense_array_load_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_37 \
    op interface \
    ports { dense_array_load_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name dense_array_load_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_36 \
    op interface \
    ports { dense_array_load_36 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name dense_array_load_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_35 \
    op interface \
    ports { dense_array_load_35 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name dense_array_load_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_34 \
    op interface \
    ports { dense_array_load_34 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name dense_array_load_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_33 \
    op interface \
    ports { dense_array_load_33 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name dense_array_load_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_32 \
    op interface \
    ports { dense_array_load_32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name dense_array_load_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_31 \
    op interface \
    ports { dense_array_load_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name dense_array_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load \
    op interface \
    ports { dense_array_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name flat_to_dense_streams_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_flat_to_dense_streams_4 \
    op interface \
    ports { flat_to_dense_streams_4_dout { I 32 vector } flat_to_dense_streams_4_num_data_valid { I 9 vector } flat_to_dense_streams_4_fifo_cap { I 9 vector } flat_to_dense_streams_4_empty_n { I 1 bit } flat_to_dense_streams_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name add10_914_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add10_914_out \
    op interface \
    ports { add10_914_out { O 32 vector } add10_914_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name add10_813_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add10_813_out \
    op interface \
    ports { add10_813_out { O 32 vector } add10_813_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name add10_712_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add10_712_out \
    op interface \
    ports { add10_712_out { O 32 vector } add10_712_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name add10_611_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add10_611_out \
    op interface \
    ports { add10_611_out { O 32 vector } add10_611_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name add10_510_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add10_510_out \
    op interface \
    ports { add10_510_out { O 32 vector } add10_510_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name add10_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add10_49_out \
    op interface \
    ports { add10_49_out { O 32 vector } add10_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name add10_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add10_38_out \
    op interface \
    ports { add10_38_out { O 32 vector } add10_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name add10_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add10_27_out \
    op interface \
    ports { add10_27_out { O 32 vector } add10_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name add10_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add10_16_out \
    op interface \
    ports { add10_16_out { O 32 vector } add10_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name add105_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add105_out \
    op interface \
    ports { add105_out { O 32 vector } add105_out_ap_vld { O 1 bit } } \
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


