# This script segment is generated automatically by AutoPilot

# FIFO definition: 
set ID 582
set FifoName cnn_fifo_w32_d784_A
set InstName conv_to_pool_streams_0_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 784
set DataWd 32
set AddrWd 10
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 583
set FifoName cnn_fifo_w32_d784_A
set InstName conv_to_pool_streams_1_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 784
set DataWd 32
set AddrWd 10
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 584
set FifoName cnn_fifo_w32_d784_A
set InstName conv_to_pool_streams_2_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 784
set DataWd 32
set AddrWd 10
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 585
set FifoName cnn_fifo_w32_d784_A
set InstName conv_to_pool_streams_3_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 784
set DataWd 32
set AddrWd 10
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 586
set FifoName cnn_fifo_w32_d784_A
set InstName conv_to_pool_streams_4_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 784
set DataWd 32
set AddrWd 10
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 587
set FifoName cnn_fifo_w32_d784_A
set InstName conv_to_pool_streams_5_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 784
set DataWd 32
set AddrWd 10
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 588
set FifoName cnn_fifo_w32_d784_A
set InstName conv_to_pool_streams_6_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 784
set DataWd 32
set AddrWd 10
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 589
set FifoName cnn_fifo_w32_d784_A
set InstName conv_to_pool_streams_7_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 784
set DataWd 32
set AddrWd 10
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 590
set FifoName cnn_fifo_w32_d196_A
set InstName pool_to_flat_streams_0_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 591
set FifoName cnn_fifo_w32_d196_A
set InstName pool_to_flat_streams_1_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 592
set FifoName cnn_fifo_w32_d196_A
set InstName pool_to_flat_streams_2_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 593
set FifoName cnn_fifo_w32_d196_A
set InstName pool_to_flat_streams_3_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 594
set FifoName cnn_fifo_w32_d196_A
set InstName pool_to_flat_streams_4_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 595
set FifoName cnn_fifo_w32_d196_A
set InstName pool_to_flat_streams_5_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 596
set FifoName cnn_fifo_w32_d196_A
set InstName pool_to_flat_streams_6_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 597
set FifoName cnn_fifo_w32_d196_A
set InstName pool_to_flat_streams_7_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 598
set FifoName cnn_fifo_w32_d196_A
set InstName flat_to_dense_streams_0_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 599
set FifoName cnn_fifo_w32_d196_A
set InstName flat_to_dense_streams_1_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 600
set FifoName cnn_fifo_w32_d196_A
set InstName flat_to_dense_streams_2_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 601
set FifoName cnn_fifo_w32_d196_A
set InstName flat_to_dense_streams_3_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 602
set FifoName cnn_fifo_w32_d196_A
set InstName flat_to_dense_streams_4_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 603
set FifoName cnn_fifo_w32_d196_A
set InstName flat_to_dense_streams_5_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 604
set FifoName cnn_fifo_w32_d196_A
set InstName flat_to_dense_streams_6_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 605
set FifoName cnn_fifo_w32_d196_A
set InstName flat_to_dense_streams_7_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 196
set DataWd 32
set AddrWd 8
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {memory} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 606
set FifoName cnn_fifo_w32_d10_S
set InstName dense_to_softmax_streams_0_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 10
set DataWd 32
set AddrWd 4
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 607
set FifoName cnn_fifo_w32_d10_S
set InstName dense_to_softmax_streams_1_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 10
set DataWd 32
set AddrWd 4
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 608
set FifoName cnn_fifo_w32_d10_S
set InstName dense_to_softmax_streams_2_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 10
set DataWd 32
set AddrWd 4
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 609
set FifoName cnn_fifo_w32_d10_S
set InstName dense_to_softmax_streams_3_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 10
set DataWd 32
set AddrWd 4
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 610
set FifoName cnn_fifo_w32_d10_S
set InstName dense_to_softmax_streams_4_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 10
set DataWd 32
set AddrWd 4
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 611
set FifoName cnn_fifo_w32_d10_S
set InstName dense_to_softmax_streams_5_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 10
set DataWd 32
set AddrWd 4
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 612
set FifoName cnn_fifo_w32_d10_S
set InstName dense_to_softmax_streams_6_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 10
set DataWd 32
set AddrWd 4
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 613
set FifoName cnn_fifo_w32_d10_S
set InstName dense_to_softmax_streams_7_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 10
set DataWd 32
set AddrWd 4
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 614
set FifoName cnn_start_for_max_pooling_layer_U0
set InstName start_for_max_pooling_layer_U0_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 2
set DataWd 1
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 615
set FifoName cnn_start_for_flattening_layer_U0
set InstName start_for_flattening_layer_U0_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 2
set DataWd 1
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 616
set FifoName cnn_start_for_dense_layer_U0
set InstName start_for_dense_layer_U0_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 2
set DataWd 1
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
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
    id 617 \
    name pad_img \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pad_img \
    op interface \
    ports { pad_img_address0 { O 10 vector } pad_img_ce0 { O 1 bit } pad_img_d0 { O 32 vector } pad_img_q0 { I 32 vector } pad_img_we0 { O 1 bit } pad_img_address1 { O 10 vector } pad_img_ce1 { O 1 bit } pad_img_d1 { O 32 vector } pad_img_q1 { I 32 vector } pad_img_we1 { O 1 bit } pad_img_address2 { O 10 vector } pad_img_ce2 { O 1 bit } pad_img_d2 { O 32 vector } pad_img_q2 { I 32 vector } pad_img_we2 { O 1 bit } pad_img_address3 { O 10 vector } pad_img_ce3 { O 1 bit } pad_img_d3 { O 32 vector } pad_img_q3 { I 32 vector } pad_img_we3 { O 1 bit } pad_img_address4 { O 10 vector } pad_img_ce4 { O 1 bit } pad_img_d4 { O 32 vector } pad_img_q4 { I 32 vector } pad_img_we4 { O 1 bit } pad_img_address5 { O 10 vector } pad_img_ce5 { O 1 bit } pad_img_d5 { O 32 vector } pad_img_q5 { I 32 vector } pad_img_we5 { O 1 bit } pad_img_address6 { O 10 vector } pad_img_ce6 { O 1 bit } pad_img_d6 { O 32 vector } pad_img_q6 { I 32 vector } pad_img_we6 { O 1 bit } pad_img_address7 { O 10 vector } pad_img_ce7 { O 1 bit } pad_img_d7 { O 32 vector } pad_img_q7 { I 32 vector } pad_img_we7 { O 1 bit } pad_img_address8 { O 10 vector } pad_img_ce8 { O 1 bit } pad_img_d8 { O 32 vector } pad_img_q8 { I 32 vector } pad_img_we8 { O 1 bit } pad_img_address9 { O 10 vector } pad_img_ce9 { O 1 bit } pad_img_d9 { O 32 vector } pad_img_q9 { I 32 vector } pad_img_we9 { O 1 bit } pad_img_address10 { O 10 vector } pad_img_ce10 { O 1 bit } pad_img_d10 { O 32 vector } pad_img_q10 { I 32 vector } pad_img_we10 { O 1 bit } pad_img_address11 { O 10 vector } pad_img_ce11 { O 1 bit } pad_img_d11 { O 32 vector } pad_img_q11 { I 32 vector } pad_img_we11 { O 1 bit } pad_img_address12 { O 10 vector } pad_img_ce12 { O 1 bit } pad_img_d12 { O 32 vector } pad_img_q12 { I 32 vector } pad_img_we12 { O 1 bit } pad_img_address13 { O 10 vector } pad_img_ce13 { O 1 bit } pad_img_d13 { O 32 vector } pad_img_q13 { I 32 vector } pad_img_we13 { O 1 bit } pad_img_address14 { O 10 vector } pad_img_ce14 { O 1 bit } pad_img_d14 { O 32 vector } pad_img_q14 { I 32 vector } pad_img_we14 { O 1 bit } pad_img_address15 { O 10 vector } pad_img_ce15 { O 1 bit } pad_img_d15 { O 32 vector } pad_img_q15 { I 32 vector } pad_img_we15 { O 1 bit } pad_img_address16 { O 10 vector } pad_img_ce16 { O 1 bit } pad_img_d16 { O 32 vector } pad_img_q16 { I 32 vector } pad_img_we16 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pad_img'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 618 \
    name pad_img1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pad_img1 \
    op interface \
    ports { pad_img1_address0 { O 10 vector } pad_img1_ce0 { O 1 bit } pad_img1_d0 { O 32 vector } pad_img1_q0 { I 32 vector } pad_img1_we0 { O 1 bit } pad_img1_address1 { O 10 vector } pad_img1_ce1 { O 1 bit } pad_img1_d1 { O 32 vector } pad_img1_q1 { I 32 vector } pad_img1_we1 { O 1 bit } pad_img1_address2 { O 10 vector } pad_img1_ce2 { O 1 bit } pad_img1_d2 { O 32 vector } pad_img1_q2 { I 32 vector } pad_img1_we2 { O 1 bit } pad_img1_address3 { O 10 vector } pad_img1_ce3 { O 1 bit } pad_img1_d3 { O 32 vector } pad_img1_q3 { I 32 vector } pad_img1_we3 { O 1 bit } pad_img1_address4 { O 10 vector } pad_img1_ce4 { O 1 bit } pad_img1_d4 { O 32 vector } pad_img1_q4 { I 32 vector } pad_img1_we4 { O 1 bit } pad_img1_address5 { O 10 vector } pad_img1_ce5 { O 1 bit } pad_img1_d5 { O 32 vector } pad_img1_q5 { I 32 vector } pad_img1_we5 { O 1 bit } pad_img1_address6 { O 10 vector } pad_img1_ce6 { O 1 bit } pad_img1_d6 { O 32 vector } pad_img1_q6 { I 32 vector } pad_img1_we6 { O 1 bit } pad_img1_address7 { O 10 vector } pad_img1_ce7 { O 1 bit } pad_img1_d7 { O 32 vector } pad_img1_q7 { I 32 vector } pad_img1_we7 { O 1 bit } pad_img1_address8 { O 10 vector } pad_img1_ce8 { O 1 bit } pad_img1_d8 { O 32 vector } pad_img1_q8 { I 32 vector } pad_img1_we8 { O 1 bit } pad_img1_address9 { O 10 vector } pad_img1_ce9 { O 1 bit } pad_img1_d9 { O 32 vector } pad_img1_q9 { I 32 vector } pad_img1_we9 { O 1 bit } pad_img1_address10 { O 10 vector } pad_img1_ce10 { O 1 bit } pad_img1_d10 { O 32 vector } pad_img1_q10 { I 32 vector } pad_img1_we10 { O 1 bit } pad_img1_address11 { O 10 vector } pad_img1_ce11 { O 1 bit } pad_img1_d11 { O 32 vector } pad_img1_q11 { I 32 vector } pad_img1_we11 { O 1 bit } pad_img1_address12 { O 10 vector } pad_img1_ce12 { O 1 bit } pad_img1_d12 { O 32 vector } pad_img1_q12 { I 32 vector } pad_img1_we12 { O 1 bit } pad_img1_address13 { O 10 vector } pad_img1_ce13 { O 1 bit } pad_img1_d13 { O 32 vector } pad_img1_q13 { I 32 vector } pad_img1_we13 { O 1 bit } pad_img1_address14 { O 10 vector } pad_img1_ce14 { O 1 bit } pad_img1_d14 { O 32 vector } pad_img1_q14 { I 32 vector } pad_img1_we14 { O 1 bit } pad_img1_address15 { O 10 vector } pad_img1_ce15 { O 1 bit } pad_img1_d15 { O 32 vector } pad_img1_q15 { I 32 vector } pad_img1_we15 { O 1 bit } pad_img1_address16 { O 10 vector } pad_img1_ce16 { O 1 bit } pad_img1_d16 { O 32 vector } pad_img1_q16 { I 32 vector } pad_img1_we16 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pad_img1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 619 \
    name pad_img2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pad_img2 \
    op interface \
    ports { pad_img2_address0 { O 10 vector } pad_img2_ce0 { O 1 bit } pad_img2_d0 { O 32 vector } pad_img2_q0 { I 32 vector } pad_img2_we0 { O 1 bit } pad_img2_address1 { O 10 vector } pad_img2_ce1 { O 1 bit } pad_img2_d1 { O 32 vector } pad_img2_q1 { I 32 vector } pad_img2_we1 { O 1 bit } pad_img2_address2 { O 10 vector } pad_img2_ce2 { O 1 bit } pad_img2_d2 { O 32 vector } pad_img2_q2 { I 32 vector } pad_img2_we2 { O 1 bit } pad_img2_address3 { O 10 vector } pad_img2_ce3 { O 1 bit } pad_img2_d3 { O 32 vector } pad_img2_q3 { I 32 vector } pad_img2_we3 { O 1 bit } pad_img2_address4 { O 10 vector } pad_img2_ce4 { O 1 bit } pad_img2_d4 { O 32 vector } pad_img2_q4 { I 32 vector } pad_img2_we4 { O 1 bit } pad_img2_address5 { O 10 vector } pad_img2_ce5 { O 1 bit } pad_img2_d5 { O 32 vector } pad_img2_q5 { I 32 vector } pad_img2_we5 { O 1 bit } pad_img2_address6 { O 10 vector } pad_img2_ce6 { O 1 bit } pad_img2_d6 { O 32 vector } pad_img2_q6 { I 32 vector } pad_img2_we6 { O 1 bit } pad_img2_address7 { O 10 vector } pad_img2_ce7 { O 1 bit } pad_img2_d7 { O 32 vector } pad_img2_q7 { I 32 vector } pad_img2_we7 { O 1 bit } pad_img2_address8 { O 10 vector } pad_img2_ce8 { O 1 bit } pad_img2_d8 { O 32 vector } pad_img2_q8 { I 32 vector } pad_img2_we8 { O 1 bit } pad_img2_address9 { O 10 vector } pad_img2_ce9 { O 1 bit } pad_img2_d9 { O 32 vector } pad_img2_q9 { I 32 vector } pad_img2_we9 { O 1 bit } pad_img2_address10 { O 10 vector } pad_img2_ce10 { O 1 bit } pad_img2_d10 { O 32 vector } pad_img2_q10 { I 32 vector } pad_img2_we10 { O 1 bit } pad_img2_address11 { O 10 vector } pad_img2_ce11 { O 1 bit } pad_img2_d11 { O 32 vector } pad_img2_q11 { I 32 vector } pad_img2_we11 { O 1 bit } pad_img2_address12 { O 10 vector } pad_img2_ce12 { O 1 bit } pad_img2_d12 { O 32 vector } pad_img2_q12 { I 32 vector } pad_img2_we12 { O 1 bit } pad_img2_address13 { O 10 vector } pad_img2_ce13 { O 1 bit } pad_img2_d13 { O 32 vector } pad_img2_q13 { I 32 vector } pad_img2_we13 { O 1 bit } pad_img2_address14 { O 10 vector } pad_img2_ce14 { O 1 bit } pad_img2_d14 { O 32 vector } pad_img2_q14 { I 32 vector } pad_img2_we14 { O 1 bit } pad_img2_address15 { O 10 vector } pad_img2_ce15 { O 1 bit } pad_img2_d15 { O 32 vector } pad_img2_q15 { I 32 vector } pad_img2_we15 { O 1 bit } pad_img2_address16 { O 10 vector } pad_img2_ce16 { O 1 bit } pad_img2_d16 { O 32 vector } pad_img2_q16 { I 32 vector } pad_img2_we16 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pad_img2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 620 \
    name pad_img3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pad_img3 \
    op interface \
    ports { pad_img3_address0 { O 10 vector } pad_img3_ce0 { O 1 bit } pad_img3_d0 { O 32 vector } pad_img3_q0 { I 32 vector } pad_img3_we0 { O 1 bit } pad_img3_address1 { O 10 vector } pad_img3_ce1 { O 1 bit } pad_img3_d1 { O 32 vector } pad_img3_q1 { I 32 vector } pad_img3_we1 { O 1 bit } pad_img3_address2 { O 10 vector } pad_img3_ce2 { O 1 bit } pad_img3_d2 { O 32 vector } pad_img3_q2 { I 32 vector } pad_img3_we2 { O 1 bit } pad_img3_address3 { O 10 vector } pad_img3_ce3 { O 1 bit } pad_img3_d3 { O 32 vector } pad_img3_q3 { I 32 vector } pad_img3_we3 { O 1 bit } pad_img3_address4 { O 10 vector } pad_img3_ce4 { O 1 bit } pad_img3_d4 { O 32 vector } pad_img3_q4 { I 32 vector } pad_img3_we4 { O 1 bit } pad_img3_address5 { O 10 vector } pad_img3_ce5 { O 1 bit } pad_img3_d5 { O 32 vector } pad_img3_q5 { I 32 vector } pad_img3_we5 { O 1 bit } pad_img3_address6 { O 10 vector } pad_img3_ce6 { O 1 bit } pad_img3_d6 { O 32 vector } pad_img3_q6 { I 32 vector } pad_img3_we6 { O 1 bit } pad_img3_address7 { O 10 vector } pad_img3_ce7 { O 1 bit } pad_img3_d7 { O 32 vector } pad_img3_q7 { I 32 vector } pad_img3_we7 { O 1 bit } pad_img3_address8 { O 10 vector } pad_img3_ce8 { O 1 bit } pad_img3_d8 { O 32 vector } pad_img3_q8 { I 32 vector } pad_img3_we8 { O 1 bit } pad_img3_address9 { O 10 vector } pad_img3_ce9 { O 1 bit } pad_img3_d9 { O 32 vector } pad_img3_q9 { I 32 vector } pad_img3_we9 { O 1 bit } pad_img3_address10 { O 10 vector } pad_img3_ce10 { O 1 bit } pad_img3_d10 { O 32 vector } pad_img3_q10 { I 32 vector } pad_img3_we10 { O 1 bit } pad_img3_address11 { O 10 vector } pad_img3_ce11 { O 1 bit } pad_img3_d11 { O 32 vector } pad_img3_q11 { I 32 vector } pad_img3_we11 { O 1 bit } pad_img3_address12 { O 10 vector } pad_img3_ce12 { O 1 bit } pad_img3_d12 { O 32 vector } pad_img3_q12 { I 32 vector } pad_img3_we12 { O 1 bit } pad_img3_address13 { O 10 vector } pad_img3_ce13 { O 1 bit } pad_img3_d13 { O 32 vector } pad_img3_q13 { I 32 vector } pad_img3_we13 { O 1 bit } pad_img3_address14 { O 10 vector } pad_img3_ce14 { O 1 bit } pad_img3_d14 { O 32 vector } pad_img3_q14 { I 32 vector } pad_img3_we14 { O 1 bit } pad_img3_address15 { O 10 vector } pad_img3_ce15 { O 1 bit } pad_img3_d15 { O 32 vector } pad_img3_q15 { I 32 vector } pad_img3_we15 { O 1 bit } pad_img3_address16 { O 10 vector } pad_img3_ce16 { O 1 bit } pad_img3_d16 { O 32 vector } pad_img3_q16 { I 32 vector } pad_img3_we16 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pad_img3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 621 \
    name pad_img4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pad_img4 \
    op interface \
    ports { pad_img4_address0 { O 10 vector } pad_img4_ce0 { O 1 bit } pad_img4_d0 { O 32 vector } pad_img4_q0 { I 32 vector } pad_img4_we0 { O 1 bit } pad_img4_address1 { O 10 vector } pad_img4_ce1 { O 1 bit } pad_img4_d1 { O 32 vector } pad_img4_q1 { I 32 vector } pad_img4_we1 { O 1 bit } pad_img4_address2 { O 10 vector } pad_img4_ce2 { O 1 bit } pad_img4_d2 { O 32 vector } pad_img4_q2 { I 32 vector } pad_img4_we2 { O 1 bit } pad_img4_address3 { O 10 vector } pad_img4_ce3 { O 1 bit } pad_img4_d3 { O 32 vector } pad_img4_q3 { I 32 vector } pad_img4_we3 { O 1 bit } pad_img4_address4 { O 10 vector } pad_img4_ce4 { O 1 bit } pad_img4_d4 { O 32 vector } pad_img4_q4 { I 32 vector } pad_img4_we4 { O 1 bit } pad_img4_address5 { O 10 vector } pad_img4_ce5 { O 1 bit } pad_img4_d5 { O 32 vector } pad_img4_q5 { I 32 vector } pad_img4_we5 { O 1 bit } pad_img4_address6 { O 10 vector } pad_img4_ce6 { O 1 bit } pad_img4_d6 { O 32 vector } pad_img4_q6 { I 32 vector } pad_img4_we6 { O 1 bit } pad_img4_address7 { O 10 vector } pad_img4_ce7 { O 1 bit } pad_img4_d7 { O 32 vector } pad_img4_q7 { I 32 vector } pad_img4_we7 { O 1 bit } pad_img4_address8 { O 10 vector } pad_img4_ce8 { O 1 bit } pad_img4_d8 { O 32 vector } pad_img4_q8 { I 32 vector } pad_img4_we8 { O 1 bit } pad_img4_address9 { O 10 vector } pad_img4_ce9 { O 1 bit } pad_img4_d9 { O 32 vector } pad_img4_q9 { I 32 vector } pad_img4_we9 { O 1 bit } pad_img4_address10 { O 10 vector } pad_img4_ce10 { O 1 bit } pad_img4_d10 { O 32 vector } pad_img4_q10 { I 32 vector } pad_img4_we10 { O 1 bit } pad_img4_address11 { O 10 vector } pad_img4_ce11 { O 1 bit } pad_img4_d11 { O 32 vector } pad_img4_q11 { I 32 vector } pad_img4_we11 { O 1 bit } pad_img4_address12 { O 10 vector } pad_img4_ce12 { O 1 bit } pad_img4_d12 { O 32 vector } pad_img4_q12 { I 32 vector } pad_img4_we12 { O 1 bit } pad_img4_address13 { O 10 vector } pad_img4_ce13 { O 1 bit } pad_img4_d13 { O 32 vector } pad_img4_q13 { I 32 vector } pad_img4_we13 { O 1 bit } pad_img4_address14 { O 10 vector } pad_img4_ce14 { O 1 bit } pad_img4_d14 { O 32 vector } pad_img4_q14 { I 32 vector } pad_img4_we14 { O 1 bit } pad_img4_address15 { O 10 vector } pad_img4_ce15 { O 1 bit } pad_img4_d15 { O 32 vector } pad_img4_q15 { I 32 vector } pad_img4_we15 { O 1 bit } pad_img4_address16 { O 10 vector } pad_img4_ce16 { O 1 bit } pad_img4_d16 { O 32 vector } pad_img4_q16 { I 32 vector } pad_img4_we16 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pad_img4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 622 \
    name pad_img5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pad_img5 \
    op interface \
    ports { pad_img5_address0 { O 10 vector } pad_img5_ce0 { O 1 bit } pad_img5_d0 { O 32 vector } pad_img5_q0 { I 32 vector } pad_img5_we0 { O 1 bit } pad_img5_address1 { O 10 vector } pad_img5_ce1 { O 1 bit } pad_img5_d1 { O 32 vector } pad_img5_q1 { I 32 vector } pad_img5_we1 { O 1 bit } pad_img5_address2 { O 10 vector } pad_img5_ce2 { O 1 bit } pad_img5_d2 { O 32 vector } pad_img5_q2 { I 32 vector } pad_img5_we2 { O 1 bit } pad_img5_address3 { O 10 vector } pad_img5_ce3 { O 1 bit } pad_img5_d3 { O 32 vector } pad_img5_q3 { I 32 vector } pad_img5_we3 { O 1 bit } pad_img5_address4 { O 10 vector } pad_img5_ce4 { O 1 bit } pad_img5_d4 { O 32 vector } pad_img5_q4 { I 32 vector } pad_img5_we4 { O 1 bit } pad_img5_address5 { O 10 vector } pad_img5_ce5 { O 1 bit } pad_img5_d5 { O 32 vector } pad_img5_q5 { I 32 vector } pad_img5_we5 { O 1 bit } pad_img5_address6 { O 10 vector } pad_img5_ce6 { O 1 bit } pad_img5_d6 { O 32 vector } pad_img5_q6 { I 32 vector } pad_img5_we6 { O 1 bit } pad_img5_address7 { O 10 vector } pad_img5_ce7 { O 1 bit } pad_img5_d7 { O 32 vector } pad_img5_q7 { I 32 vector } pad_img5_we7 { O 1 bit } pad_img5_address8 { O 10 vector } pad_img5_ce8 { O 1 bit } pad_img5_d8 { O 32 vector } pad_img5_q8 { I 32 vector } pad_img5_we8 { O 1 bit } pad_img5_address9 { O 10 vector } pad_img5_ce9 { O 1 bit } pad_img5_d9 { O 32 vector } pad_img5_q9 { I 32 vector } pad_img5_we9 { O 1 bit } pad_img5_address10 { O 10 vector } pad_img5_ce10 { O 1 bit } pad_img5_d10 { O 32 vector } pad_img5_q10 { I 32 vector } pad_img5_we10 { O 1 bit } pad_img5_address11 { O 10 vector } pad_img5_ce11 { O 1 bit } pad_img5_d11 { O 32 vector } pad_img5_q11 { I 32 vector } pad_img5_we11 { O 1 bit } pad_img5_address12 { O 10 vector } pad_img5_ce12 { O 1 bit } pad_img5_d12 { O 32 vector } pad_img5_q12 { I 32 vector } pad_img5_we12 { O 1 bit } pad_img5_address13 { O 10 vector } pad_img5_ce13 { O 1 bit } pad_img5_d13 { O 32 vector } pad_img5_q13 { I 32 vector } pad_img5_we13 { O 1 bit } pad_img5_address14 { O 10 vector } pad_img5_ce14 { O 1 bit } pad_img5_d14 { O 32 vector } pad_img5_q14 { I 32 vector } pad_img5_we14 { O 1 bit } pad_img5_address15 { O 10 vector } pad_img5_ce15 { O 1 bit } pad_img5_d15 { O 32 vector } pad_img5_q15 { I 32 vector } pad_img5_we15 { O 1 bit } pad_img5_address16 { O 10 vector } pad_img5_ce16 { O 1 bit } pad_img5_d16 { O 32 vector } pad_img5_q16 { I 32 vector } pad_img5_we16 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pad_img5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 623 \
    name pad_img6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pad_img6 \
    op interface \
    ports { pad_img6_address0 { O 10 vector } pad_img6_ce0 { O 1 bit } pad_img6_d0 { O 32 vector } pad_img6_q0 { I 32 vector } pad_img6_we0 { O 1 bit } pad_img6_address1 { O 10 vector } pad_img6_ce1 { O 1 bit } pad_img6_d1 { O 32 vector } pad_img6_q1 { I 32 vector } pad_img6_we1 { O 1 bit } pad_img6_address2 { O 10 vector } pad_img6_ce2 { O 1 bit } pad_img6_d2 { O 32 vector } pad_img6_q2 { I 32 vector } pad_img6_we2 { O 1 bit } pad_img6_address3 { O 10 vector } pad_img6_ce3 { O 1 bit } pad_img6_d3 { O 32 vector } pad_img6_q3 { I 32 vector } pad_img6_we3 { O 1 bit } pad_img6_address4 { O 10 vector } pad_img6_ce4 { O 1 bit } pad_img6_d4 { O 32 vector } pad_img6_q4 { I 32 vector } pad_img6_we4 { O 1 bit } pad_img6_address5 { O 10 vector } pad_img6_ce5 { O 1 bit } pad_img6_d5 { O 32 vector } pad_img6_q5 { I 32 vector } pad_img6_we5 { O 1 bit } pad_img6_address6 { O 10 vector } pad_img6_ce6 { O 1 bit } pad_img6_d6 { O 32 vector } pad_img6_q6 { I 32 vector } pad_img6_we6 { O 1 bit } pad_img6_address7 { O 10 vector } pad_img6_ce7 { O 1 bit } pad_img6_d7 { O 32 vector } pad_img6_q7 { I 32 vector } pad_img6_we7 { O 1 bit } pad_img6_address8 { O 10 vector } pad_img6_ce8 { O 1 bit } pad_img6_d8 { O 32 vector } pad_img6_q8 { I 32 vector } pad_img6_we8 { O 1 bit } pad_img6_address9 { O 10 vector } pad_img6_ce9 { O 1 bit } pad_img6_d9 { O 32 vector } pad_img6_q9 { I 32 vector } pad_img6_we9 { O 1 bit } pad_img6_address10 { O 10 vector } pad_img6_ce10 { O 1 bit } pad_img6_d10 { O 32 vector } pad_img6_q10 { I 32 vector } pad_img6_we10 { O 1 bit } pad_img6_address11 { O 10 vector } pad_img6_ce11 { O 1 bit } pad_img6_d11 { O 32 vector } pad_img6_q11 { I 32 vector } pad_img6_we11 { O 1 bit } pad_img6_address12 { O 10 vector } pad_img6_ce12 { O 1 bit } pad_img6_d12 { O 32 vector } pad_img6_q12 { I 32 vector } pad_img6_we12 { O 1 bit } pad_img6_address13 { O 10 vector } pad_img6_ce13 { O 1 bit } pad_img6_d13 { O 32 vector } pad_img6_q13 { I 32 vector } pad_img6_we13 { O 1 bit } pad_img6_address14 { O 10 vector } pad_img6_ce14 { O 1 bit } pad_img6_d14 { O 32 vector } pad_img6_q14 { I 32 vector } pad_img6_we14 { O 1 bit } pad_img6_address15 { O 10 vector } pad_img6_ce15 { O 1 bit } pad_img6_d15 { O 32 vector } pad_img6_q15 { I 32 vector } pad_img6_we15 { O 1 bit } pad_img6_address16 { O 10 vector } pad_img6_ce16 { O 1 bit } pad_img6_d16 { O 32 vector } pad_img6_q16 { I 32 vector } pad_img6_we16 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pad_img6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 624 \
    name pad_img7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pad_img7 \
    op interface \
    ports { pad_img7_address0 { O 10 vector } pad_img7_ce0 { O 1 bit } pad_img7_d0 { O 32 vector } pad_img7_q0 { I 32 vector } pad_img7_we0 { O 1 bit } pad_img7_address1 { O 10 vector } pad_img7_ce1 { O 1 bit } pad_img7_d1 { O 32 vector } pad_img7_q1 { I 32 vector } pad_img7_we1 { O 1 bit } pad_img7_address2 { O 10 vector } pad_img7_ce2 { O 1 bit } pad_img7_d2 { O 32 vector } pad_img7_q2 { I 32 vector } pad_img7_we2 { O 1 bit } pad_img7_address3 { O 10 vector } pad_img7_ce3 { O 1 bit } pad_img7_d3 { O 32 vector } pad_img7_q3 { I 32 vector } pad_img7_we3 { O 1 bit } pad_img7_address4 { O 10 vector } pad_img7_ce4 { O 1 bit } pad_img7_d4 { O 32 vector } pad_img7_q4 { I 32 vector } pad_img7_we4 { O 1 bit } pad_img7_address5 { O 10 vector } pad_img7_ce5 { O 1 bit } pad_img7_d5 { O 32 vector } pad_img7_q5 { I 32 vector } pad_img7_we5 { O 1 bit } pad_img7_address6 { O 10 vector } pad_img7_ce6 { O 1 bit } pad_img7_d6 { O 32 vector } pad_img7_q6 { I 32 vector } pad_img7_we6 { O 1 bit } pad_img7_address7 { O 10 vector } pad_img7_ce7 { O 1 bit } pad_img7_d7 { O 32 vector } pad_img7_q7 { I 32 vector } pad_img7_we7 { O 1 bit } pad_img7_address8 { O 10 vector } pad_img7_ce8 { O 1 bit } pad_img7_d8 { O 32 vector } pad_img7_q8 { I 32 vector } pad_img7_we8 { O 1 bit } pad_img7_address9 { O 10 vector } pad_img7_ce9 { O 1 bit } pad_img7_d9 { O 32 vector } pad_img7_q9 { I 32 vector } pad_img7_we9 { O 1 bit } pad_img7_address10 { O 10 vector } pad_img7_ce10 { O 1 bit } pad_img7_d10 { O 32 vector } pad_img7_q10 { I 32 vector } pad_img7_we10 { O 1 bit } pad_img7_address11 { O 10 vector } pad_img7_ce11 { O 1 bit } pad_img7_d11 { O 32 vector } pad_img7_q11 { I 32 vector } pad_img7_we11 { O 1 bit } pad_img7_address12 { O 10 vector } pad_img7_ce12 { O 1 bit } pad_img7_d12 { O 32 vector } pad_img7_q12 { I 32 vector } pad_img7_we12 { O 1 bit } pad_img7_address13 { O 10 vector } pad_img7_ce13 { O 1 bit } pad_img7_d13 { O 32 vector } pad_img7_q13 { I 32 vector } pad_img7_we13 { O 1 bit } pad_img7_address14 { O 10 vector } pad_img7_ce14 { O 1 bit } pad_img7_d14 { O 32 vector } pad_img7_q14 { I 32 vector } pad_img7_we14 { O 1 bit } pad_img7_address15 { O 10 vector } pad_img7_ce15 { O 1 bit } pad_img7_d15 { O 32 vector } pad_img7_q15 { I 32 vector } pad_img7_we15 { O 1 bit } pad_img7_address16 { O 10 vector } pad_img7_ce16 { O 1 bit } pad_img7_d16 { O 32 vector } pad_img7_q16 { I 32 vector } pad_img7_we16 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pad_img7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 625 \
    name weight_buf_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_buf_0 \
    op interface \
    ports { weight_buf_0_address0 { O 4 vector } weight_buf_0_ce0 { O 1 bit } weight_buf_0_d0 { O 32 vector } weight_buf_0_q0 { I 32 vector } weight_buf_0_we0 { O 1 bit } weight_buf_0_address1 { O 4 vector } weight_buf_0_ce1 { O 1 bit } weight_buf_0_d1 { O 32 vector } weight_buf_0_q1 { I 32 vector } weight_buf_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_buf_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 626 \
    name weight_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_buf_1 \
    op interface \
    ports { weight_buf_1_address0 { O 4 vector } weight_buf_1_ce0 { O 1 bit } weight_buf_1_d0 { O 32 vector } weight_buf_1_q0 { I 32 vector } weight_buf_1_we0 { O 1 bit } weight_buf_1_address1 { O 4 vector } weight_buf_1_ce1 { O 1 bit } weight_buf_1_d1 { O 32 vector } weight_buf_1_q1 { I 32 vector } weight_buf_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 627 \
    name weight_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_buf_2 \
    op interface \
    ports { weight_buf_2_address0 { O 4 vector } weight_buf_2_ce0 { O 1 bit } weight_buf_2_d0 { O 32 vector } weight_buf_2_q0 { I 32 vector } weight_buf_2_we0 { O 1 bit } weight_buf_2_address1 { O 4 vector } weight_buf_2_ce1 { O 1 bit } weight_buf_2_d1 { O 32 vector } weight_buf_2_q1 { I 32 vector } weight_buf_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_buf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 628 \
    name weight_buf_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_buf_3 \
    op interface \
    ports { weight_buf_3_address0 { O 4 vector } weight_buf_3_ce0 { O 1 bit } weight_buf_3_d0 { O 32 vector } weight_buf_3_q0 { I 32 vector } weight_buf_3_we0 { O 1 bit } weight_buf_3_address1 { O 4 vector } weight_buf_3_ce1 { O 1 bit } weight_buf_3_d1 { O 32 vector } weight_buf_3_q1 { I 32 vector } weight_buf_3_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_buf_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 629 \
    name weight_buf_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_buf_4 \
    op interface \
    ports { weight_buf_4_address0 { O 4 vector } weight_buf_4_ce0 { O 1 bit } weight_buf_4_d0 { O 32 vector } weight_buf_4_q0 { I 32 vector } weight_buf_4_we0 { O 1 bit } weight_buf_4_address1 { O 4 vector } weight_buf_4_ce1 { O 1 bit } weight_buf_4_d1 { O 32 vector } weight_buf_4_q1 { I 32 vector } weight_buf_4_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_buf_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 630 \
    name weight_buf_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_buf_5 \
    op interface \
    ports { weight_buf_5_address0 { O 4 vector } weight_buf_5_ce0 { O 1 bit } weight_buf_5_d0 { O 32 vector } weight_buf_5_q0 { I 32 vector } weight_buf_5_we0 { O 1 bit } weight_buf_5_address1 { O 4 vector } weight_buf_5_ce1 { O 1 bit } weight_buf_5_d1 { O 32 vector } weight_buf_5_q1 { I 32 vector } weight_buf_5_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_buf_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 631 \
    name weight_buf_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_buf_6 \
    op interface \
    ports { weight_buf_6_address0 { O 4 vector } weight_buf_6_ce0 { O 1 bit } weight_buf_6_d0 { O 32 vector } weight_buf_6_q0 { I 32 vector } weight_buf_6_we0 { O 1 bit } weight_buf_6_address1 { O 4 vector } weight_buf_6_ce1 { O 1 bit } weight_buf_6_d1 { O 32 vector } weight_buf_6_q1 { I 32 vector } weight_buf_6_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_buf_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 632 \
    name weight_buf_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_buf_7 \
    op interface \
    ports { weight_buf_7_address0 { O 4 vector } weight_buf_7_ce0 { O 1 bit } weight_buf_7_d0 { O 32 vector } weight_buf_7_q0 { I 32 vector } weight_buf_7_we0 { O 1 bit } weight_buf_7_address1 { O 4 vector } weight_buf_7_ce1 { O 1 bit } weight_buf_7_d1 { O 32 vector } weight_buf_7_q1 { I 32 vector } weight_buf_7_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_buf_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 641 \
    name prediction \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename prediction \
    op interface \
    ports { prediction_address0 { O 4 vector } prediction_ce0 { O 1 bit } prediction_d0 { O 32 vector } prediction_q0 { I 32 vector } prediction_we0 { O 1 bit } prediction_address1 { O 4 vector } prediction_ce1 { O 1 bit } prediction_d1 { O 32 vector } prediction_q1 { I 32 vector } prediction_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'prediction'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 633 \
    name biases_buf_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_biases_buf_0 \
    op interface \
    ports { biases_buf_0 { I 32 vector } biases_buf_0_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 634 \
    name biases_buf_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_biases_buf_1 \
    op interface \
    ports { biases_buf_1 { I 32 vector } biases_buf_1_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 635 \
    name biases_buf_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_biases_buf_2 \
    op interface \
    ports { biases_buf_2 { I 32 vector } biases_buf_2_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 636 \
    name biases_buf_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_biases_buf_3 \
    op interface \
    ports { biases_buf_3 { I 32 vector } biases_buf_3_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 637 \
    name biases_buf_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_biases_buf_4 \
    op interface \
    ports { biases_buf_4 { I 32 vector } biases_buf_4_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 638 \
    name biases_buf_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_biases_buf_5 \
    op interface \
    ports { biases_buf_5 { I 32 vector } biases_buf_5_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 639 \
    name biases_buf_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_biases_buf_6 \
    op interface \
    ports { biases_buf_6 { I 32 vector } biases_buf_6_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 640 \
    name biases_buf_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_biases_buf_7 \
    op interface \
    ports { biases_buf_7 { I 32 vector } biases_buf_7_ap_vld { I 1 bit } } \
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


