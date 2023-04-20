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
    id 337 \
    name conv_to_pool_streams_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_to_pool_streams_0 \
    op interface \
    ports { conv_to_pool_streams_0_dout { I 32 vector } conv_to_pool_streams_0_empty_n { I 1 bit } conv_to_pool_streams_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name conv_to_pool_streams_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_to_pool_streams_1 \
    op interface \
    ports { conv_to_pool_streams_1_dout { I 32 vector } conv_to_pool_streams_1_empty_n { I 1 bit } conv_to_pool_streams_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name conv_to_pool_streams_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_to_pool_streams_2 \
    op interface \
    ports { conv_to_pool_streams_2_dout { I 32 vector } conv_to_pool_streams_2_empty_n { I 1 bit } conv_to_pool_streams_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name conv_to_pool_streams_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_to_pool_streams_3 \
    op interface \
    ports { conv_to_pool_streams_3_dout { I 32 vector } conv_to_pool_streams_3_empty_n { I 1 bit } conv_to_pool_streams_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name conv_to_pool_streams_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_to_pool_streams_4 \
    op interface \
    ports { conv_to_pool_streams_4_dout { I 32 vector } conv_to_pool_streams_4_empty_n { I 1 bit } conv_to_pool_streams_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name conv_to_pool_streams_5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_to_pool_streams_5 \
    op interface \
    ports { conv_to_pool_streams_5_dout { I 32 vector } conv_to_pool_streams_5_empty_n { I 1 bit } conv_to_pool_streams_5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name conv_to_pool_streams_6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_to_pool_streams_6 \
    op interface \
    ports { conv_to_pool_streams_6_dout { I 32 vector } conv_to_pool_streams_6_empty_n { I 1 bit } conv_to_pool_streams_6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name conv_to_pool_streams_7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_to_pool_streams_7 \
    op interface \
    ports { conv_to_pool_streams_7_dout { I 32 vector } conv_to_pool_streams_7_empty_n { I 1 bit } conv_to_pool_streams_7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name pool_to_flat_streams_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pool_to_flat_streams_0 \
    op interface \
    ports { pool_to_flat_streams_0_din { O 32 vector } pool_to_flat_streams_0_full_n { I 1 bit } pool_to_flat_streams_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name pool_to_flat_streams_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pool_to_flat_streams_1 \
    op interface \
    ports { pool_to_flat_streams_1_din { O 32 vector } pool_to_flat_streams_1_full_n { I 1 bit } pool_to_flat_streams_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name pool_to_flat_streams_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pool_to_flat_streams_2 \
    op interface \
    ports { pool_to_flat_streams_2_din { O 32 vector } pool_to_flat_streams_2_full_n { I 1 bit } pool_to_flat_streams_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name pool_to_flat_streams_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pool_to_flat_streams_3 \
    op interface \
    ports { pool_to_flat_streams_3_din { O 32 vector } pool_to_flat_streams_3_full_n { I 1 bit } pool_to_flat_streams_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name pool_to_flat_streams_4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pool_to_flat_streams_4 \
    op interface \
    ports { pool_to_flat_streams_4_din { O 32 vector } pool_to_flat_streams_4_full_n { I 1 bit } pool_to_flat_streams_4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name pool_to_flat_streams_5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pool_to_flat_streams_5 \
    op interface \
    ports { pool_to_flat_streams_5_din { O 32 vector } pool_to_flat_streams_5_full_n { I 1 bit } pool_to_flat_streams_5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name pool_to_flat_streams_6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pool_to_flat_streams_6 \
    op interface \
    ports { pool_to_flat_streams_6_din { O 32 vector } pool_to_flat_streams_6_full_n { I 1 bit } pool_to_flat_streams_6_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name pool_to_flat_streams_7 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pool_to_flat_streams_7 \
    op interface \
    ports { pool_to_flat_streams_7_din { O 32 vector } pool_to_flat_streams_7_full_n { I 1 bit } pool_to_flat_streams_7_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


