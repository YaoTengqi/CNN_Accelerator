set moduleName convolution_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {convolution.4}
set C_modelType { void 0 }
set C_modelArgList {
	{ pad_img float 32 regular {array 900 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ weight_buf float 32 regular {array 9 { 1 1 } 1 1 }  }
	{ biases_buf float 32 regular  }
	{ conv_to_pool_streams_4 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pad_img", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "biases_buf", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_to_pool_streams_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pad_img_address0 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce0 sc_out sc_logic 1 signal 0 } 
	{ pad_img_q0 sc_in sc_lv 32 signal 0 } 
	{ pad_img_address1 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce1 sc_out sc_logic 1 signal 0 } 
	{ pad_img_q1 sc_in sc_lv 32 signal 0 } 
	{ weight_buf_address0 sc_out sc_lv 4 signal 1 } 
	{ weight_buf_ce0 sc_out sc_logic 1 signal 1 } 
	{ weight_buf_q0 sc_in sc_lv 32 signal 1 } 
	{ weight_buf_address1 sc_out sc_lv 4 signal 1 } 
	{ weight_buf_ce1 sc_out sc_logic 1 signal 1 } 
	{ weight_buf_q1 sc_in sc_lv 32 signal 1 } 
	{ biases_buf sc_in sc_lv 32 signal 2 } 
	{ conv_to_pool_streams_4_din sc_out sc_lv 32 signal 3 } 
	{ conv_to_pool_streams_4_num_data_valid sc_in sc_lv 11 signal 3 } 
	{ conv_to_pool_streams_4_fifo_cap sc_in sc_lv 11 signal 3 } 
	{ conv_to_pool_streams_4_full_n sc_in sc_logic 1 signal 3 } 
	{ conv_to_pool_streams_4_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pad_img_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address0" }} , 
 	{ "name": "pad_img_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce0" }} , 
 	{ "name": "pad_img_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q0" }} , 
 	{ "name": "pad_img_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address1" }} , 
 	{ "name": "pad_img_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce1" }} , 
 	{ "name": "pad_img_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q1" }} , 
 	{ "name": "weight_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf", "role": "address0" }} , 
 	{ "name": "weight_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf", "role": "ce0" }} , 
 	{ "name": "weight_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf", "role": "q0" }} , 
 	{ "name": "weight_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf", "role": "address1" }} , 
 	{ "name": "weight_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf", "role": "ce1" }} , 
 	{ "name": "weight_buf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf", "role": "q1" }} , 
 	{ "name": "biases_buf", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases_buf", "role": "default" }} , 
 	{ "name": "conv_to_pool_streams_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_4", "role": "din" }} , 
 	{ "name": "conv_to_pool_streams_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "conv_to_pool_streams_4", "role": "num_data_valid" }} , 
 	{ "name": "conv_to_pool_streams_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "conv_to_pool_streams_4", "role": "fifo_cap" }} , 
 	{ "name": "conv_to_pool_streams_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_4", "role": "full_n" }} , 
 	{ "name": "conv_to_pool_streams_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_4", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "convolution_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4003", "EstimateLatencyMax" : "4003",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pad_img", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_4", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7"],
		"CDFG" : "convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3997", "EstimateLatencyMax" : "3997",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pad_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "conv_for_rows_win_for_rows_win_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U116", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U117", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U118", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U119", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U120", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	convolution_4 {
		pad_img {Type I LastRead 7 FirstWrite -1}
		weight_buf {Type I LastRead 5 FirstWrite -1}
		biases_buf {Type I LastRead 4 FirstWrite -1}
		conv_to_pool_streams_4 {Type O LastRead -1 FirstWrite 80}}
	convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols {
		pad_img {Type I LastRead 7 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		w_25 {Type I LastRead 0 FirstWrite -1}
		w_26 {Type I LastRead 0 FirstWrite -1}
		w_27 {Type I LastRead 0 FirstWrite -1}
		w_28 {Type I LastRead 0 FirstWrite -1}
		w_29 {Type I LastRead 0 FirstWrite -1}
		w_30 {Type I LastRead 0 FirstWrite -1}
		w_31 {Type I LastRead 0 FirstWrite -1}
		w_32 {Type I LastRead 0 FirstWrite -1}
		biases_buf {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_4 {Type O LastRead -1 FirstWrite 80}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4003", "Max" : "4003"}
	, {"Name" : "Interval", "Min" : "4003", "Max" : "4003"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pad_img { ap_memory {  { pad_img_address0 mem_address 1 10 }  { pad_img_ce0 mem_ce 1 1 }  { pad_img_q0 mem_dout 0 32 }  { pad_img_address1 MemPortADDR2 1 10 }  { pad_img_ce1 MemPortCE2 1 1 }  { pad_img_q1 MemPortDOUT2 0 32 } } }
	weight_buf { ap_memory {  { weight_buf_address0 mem_address 1 4 }  { weight_buf_ce0 mem_ce 1 1 }  { weight_buf_q0 mem_dout 0 32 }  { weight_buf_address1 MemPortADDR2 1 4 }  { weight_buf_ce1 MemPortCE2 1 1 }  { weight_buf_q1 MemPortDOUT2 0 32 } } }
	biases_buf { ap_none {  { biases_buf in_data 0 32 } } }
	conv_to_pool_streams_4 { ap_fifo {  { conv_to_pool_streams_4_din fifo_port_we 1 32 }  { conv_to_pool_streams_4_num_data_valid fifo_status_num_data_valid 0 11 }  { conv_to_pool_streams_4_fifo_cap fifo_update 0 11 }  { conv_to_pool_streams_4_full_n fifo_status 0 1 }  { conv_to_pool_streams_4_write fifo_data 1 1 } } }
}
