set moduleName convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {convolution.3_Pipeline_conv_for_rows_win_for_rows_win_for_cols}
set C_modelType { void 0 }
set C_modelArgList {
	{ pad_img float 32 regular {array 900 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ w float 32 regular  }
	{ w_33 float 32 regular  }
	{ w_34 float 32 regular  }
	{ w_35 float 32 regular  }
	{ w_36 float 32 regular  }
	{ w_37 float 32 regular  }
	{ w_38 float 32 regular  }
	{ w_39 float 32 regular  }
	{ w_40 float 32 regular  }
	{ biases_buf float 32 regular  }
	{ conv_to_pool_streams_3 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pad_img", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_33", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_34", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_35", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_36", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_37", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_38", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_39", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_40", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "biases_buf", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_to_pool_streams_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pad_img_address0 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce0 sc_out sc_logic 1 signal 0 } 
	{ pad_img_q0 sc_in sc_lv 32 signal 0 } 
	{ pad_img_address1 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce1 sc_out sc_logic 1 signal 0 } 
	{ pad_img_q1 sc_in sc_lv 32 signal 0 } 
	{ w sc_in sc_lv 32 signal 1 } 
	{ w_33 sc_in sc_lv 32 signal 2 } 
	{ w_34 sc_in sc_lv 32 signal 3 } 
	{ w_35 sc_in sc_lv 32 signal 4 } 
	{ w_36 sc_in sc_lv 32 signal 5 } 
	{ w_37 sc_in sc_lv 32 signal 6 } 
	{ w_38 sc_in sc_lv 32 signal 7 } 
	{ w_39 sc_in sc_lv 32 signal 8 } 
	{ w_40 sc_in sc_lv 32 signal 9 } 
	{ biases_buf sc_in sc_lv 32 signal 10 } 
	{ conv_to_pool_streams_3_din sc_out sc_lv 32 signal 11 } 
	{ conv_to_pool_streams_3_full_n sc_in sc_logic 1 signal 11 } 
	{ conv_to_pool_streams_3_write sc_out sc_logic 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pad_img_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address0" }} , 
 	{ "name": "pad_img_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce0" }} , 
 	{ "name": "pad_img_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q0" }} , 
 	{ "name": "pad_img_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address1" }} , 
 	{ "name": "pad_img_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce1" }} , 
 	{ "name": "pad_img_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q1" }} , 
 	{ "name": "w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "default" }} , 
 	{ "name": "w_33", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_33", "role": "default" }} , 
 	{ "name": "w_34", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_34", "role": "default" }} , 
 	{ "name": "w_35", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_35", "role": "default" }} , 
 	{ "name": "w_36", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_36", "role": "default" }} , 
 	{ "name": "w_37", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_37", "role": "default" }} , 
 	{ "name": "w_38", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_38", "role": "default" }} , 
 	{ "name": "w_39", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_39", "role": "default" }} , 
 	{ "name": "w_40", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_40", "role": "default" }} , 
 	{ "name": "biases_buf", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases_buf", "role": "default" }} , 
 	{ "name": "conv_to_pool_streams_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_3", "role": "din" }} , 
 	{ "name": "conv_to_pool_streams_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_3", "role": "full_n" }} , 
 	{ "name": "conv_to_pool_streams_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_3", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols",
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
			{"Name" : "w_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "conv_for_rows_win_for_rows_win_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U95", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U96", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U97", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U98", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U99", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols {
		pad_img {Type I LastRead 7 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		w_33 {Type I LastRead 0 FirstWrite -1}
		w_34 {Type I LastRead 0 FirstWrite -1}
		w_35 {Type I LastRead 0 FirstWrite -1}
		w_36 {Type I LastRead 0 FirstWrite -1}
		w_37 {Type I LastRead 0 FirstWrite -1}
		w_38 {Type I LastRead 0 FirstWrite -1}
		w_39 {Type I LastRead 0 FirstWrite -1}
		w_40 {Type I LastRead 0 FirstWrite -1}
		biases_buf {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_3 {Type O LastRead -1 FirstWrite 80}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3997", "Max" : "3997"}
	, {"Name" : "Interval", "Min" : "3997", "Max" : "3997"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pad_img { ap_memory {  { pad_img_address0 mem_address 1 10 }  { pad_img_ce0 mem_ce 1 1 }  { pad_img_q0 mem_dout 0 32 }  { pad_img_address1 MemPortADDR2 1 10 }  { pad_img_ce1 MemPortCE2 1 1 }  { pad_img_q1 MemPortDOUT2 0 32 } } }
	w { ap_none {  { w in_data 0 32 } } }
	w_33 { ap_none {  { w_33 in_data 0 32 } } }
	w_34 { ap_none {  { w_34 in_data 0 32 } } }
	w_35 { ap_none {  { w_35 in_data 0 32 } } }
	w_36 { ap_none {  { w_36 in_data 0 32 } } }
	w_37 { ap_none {  { w_37 in_data 0 32 } } }
	w_38 { ap_none {  { w_38 in_data 0 32 } } }
	w_39 { ap_none {  { w_39 in_data 0 32 } } }
	w_40 { ap_none {  { w_40 in_data 0 32 } } }
	biases_buf { ap_none {  { biases_buf in_data 0 32 } } }
	conv_to_pool_streams_3 { ap_fifo {  { conv_to_pool_streams_3_din fifo_data 1 32 }  { conv_to_pool_streams_3_full_n fifo_status 0 1 }  { conv_to_pool_streams_3_write fifo_update 1 1 } } }
}
