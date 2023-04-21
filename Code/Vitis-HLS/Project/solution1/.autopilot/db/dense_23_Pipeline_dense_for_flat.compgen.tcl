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
    id 374 \
    name dense_array_load_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_59 \
    op interface \
    ports { dense_array_load_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name dense_array_load_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_58 \
    op interface \
    ports { dense_array_load_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name dense_array_load_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_57 \
    op interface \
    ports { dense_array_load_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name dense_array_load_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_56 \
    op interface \
    ports { dense_array_load_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name dense_array_load_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_55 \
    op interface \
    ports { dense_array_load_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name dense_array_load_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_54 \
    op interface \
    ports { dense_array_load_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name dense_array_load_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_53 \
    op interface \
    ports { dense_array_load_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name dense_array_load_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_52 \
    op interface \
    ports { dense_array_load_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name dense_array_load_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_array_load_51 \
    op interface \
    ports { dense_array_load_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
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
    id 384 \
    name flat_to_dense_streams_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_flat_to_dense_streams_2 \
    op interface \
    ports { flat_to_dense_streams_2_dout { I 32 vector } flat_to_dense_streams_2_num_data_valid { I 9 vector } flat_to_dense_streams_2_fifo_cap { I 9 vector } flat_to_dense_streams_2_empty_n { I 1 bit } flat_to_dense_streams_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
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
    id 386 \
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
    id 387 \
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
    id 388 \
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
    id 389 \
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
    id 390 \
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
    id 391 \
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
    id 392 \
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
    id 393 \
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
    id 394 \
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


