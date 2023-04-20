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
    id 402 \
    name dense_array_load_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_45 \
    op interface \
    ports { dense_array_load_45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name dense_array_load_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_44 \
    op interface \
    ports { dense_array_load_44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name dense_array_load_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_43 \
    op interface \
    ports { dense_array_load_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name dense_array_load_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_42 \
    op interface \
    ports { dense_array_load_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name dense_array_load_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_41 \
    op interface \
    ports { dense_array_load_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name dense_array_load_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_40 \
    op interface \
    ports { dense_array_load_40 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
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
    id 409 \
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
    id 410 \
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
    id 411 \
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
    id 412 \
    name flat_to_dense_streams_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_flat_to_dense_streams_3 \
    op interface \
    ports { flat_to_dense_streams_3_dout { I 32 vector } flat_to_dense_streams_3_empty_n { I 1 bit } flat_to_dense_streams_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name add7_914_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add7_914_out \
    op interface \
    ports { add7_914_out { O 32 vector } add7_914_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name add7_813_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add7_813_out \
    op interface \
    ports { add7_813_out { O 32 vector } add7_813_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name add7_712_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add7_712_out \
    op interface \
    ports { add7_712_out { O 32 vector } add7_712_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name add7_611_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add7_611_out \
    op interface \
    ports { add7_611_out { O 32 vector } add7_611_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name add7_510_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add7_510_out \
    op interface \
    ports { add7_510_out { O 32 vector } add7_510_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name add7_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add7_49_out \
    op interface \
    ports { add7_49_out { O 32 vector } add7_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name add7_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add7_38_out \
    op interface \
    ports { add7_38_out { O 32 vector } add7_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name add7_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add7_27_out \
    op interface \
    ports { add7_27_out { O 32 vector } add7_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name add7_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add7_16_out \
    op interface \
    ports { add7_16_out { O 32 vector } add7_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name add75_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add75_out \
    op interface \
    ports { add75_out { O 32 vector } add75_out_ap_vld { O 1 bit } } \
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


