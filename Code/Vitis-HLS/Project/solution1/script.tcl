############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Project
set_top cnn
add_files cnn.cc
add_files conv.cc
add_files dense.cc
add_files flat.cc
add_files pool.cc
add_files utils.cc
add_files -tb cnn_tb.cc -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../Data -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7a200t-fbg484-1}
create_clock -period 10 -name default
config_interface -m_axi_latency 0
source "./Project/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
