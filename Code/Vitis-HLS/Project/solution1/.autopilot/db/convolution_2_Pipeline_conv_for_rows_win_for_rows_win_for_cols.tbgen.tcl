set moduleName convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols
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
set C_modelName {convolution.2_Pipeline_conv_for_rows_win_for_rows_win_for_cols}
set C_modelType { void 0 }
set C_modelArgList {
	{ pad_img float 32 regular {array 900 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ w float 32 regular  }
	{ w_41 float 32 regular  }
	{ w_42 float 32 regular  }
	{ w_43 float 32 regular  }
	{ w_44 float 32 regular  }
	{ w_45 float 32 regular  }
	{ w_46 float 32 regular  }
	{ w_47 float 32 regular  }
	{ w_48 float 32 regular  }
	{ biases_buf float 32 regular  }
	{ conv_to_pool_streams_2 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pad_img", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_41", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_42", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_43", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_44", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_45", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_46", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_47", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_48", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "biases_buf", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_to_pool_streams_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ w_41 sc_in sc_lv 32 signal 2 } 
	{ w_42 sc_in sc_lv 32 signal 3 } 
	{ w_43 sc_in sc_lv 32 signal 4 } 
	{ w_44 sc_in sc_lv 32 signal 5 } 
	{ w_45 sc_in sc_lv 32 signal 6 } 
	{ w_46 sc_in sc_lv 32 signal 7 } 
	{ w_47 sc_in sc_lv 32 signal 8 } 
	{ w_48 sc_in sc_lv 32 signal 9 } 
	{ biases_buf sc_in sc_lv 32 signal 10 } 
	{ conv_to_pool_streams_2_din sc_out sc_lv 32 signal 11 } 
	{ conv_to_pool_streams_2_full_n sc_in sc_logic 1 signal 11 } 
	{ conv_to_pool_streams_2_write sc_out sc_logic 1 signal 11 } 
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
 	{ "name": "w_41", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_41", "role": "default" }} , 
 	{ "name": "w_42", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_42", "role": "default" }} , 
 	{ "name": "w_43", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_43", "role": "default" }} , 
 	{ "name": "w_44", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_44", "role": "default" }} , 
 	{ "name": "w_45", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_45", "role": "default" }} , 
 	{ "name": "w_46", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_46", "role": "default" }} , 
 	{ "name": "w_47", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_47", "role": "default" }} , 
 	{ "name": "w_48", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_48", "role": "default" }} , 
 	{ "name": "biases_buf", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases_buf", "role": "default" }} , 
 	{ "name": "conv_to_pool_streams_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_2", "role": "din" }} , 
 	{ "name": "conv_to_pool_streams_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_2", "role": "full_n" }} , 
 	{ "name": "conv_to_pool_streams_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols",
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
			{"Name" : "w_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "conv_for_rows_win_for_rows_win_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U74", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U75", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U76", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U77", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U78", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols {
		pad_img {Type I LastRead 7 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		w_41 {Type I LastRead 0 FirstWrite -1}
		w_42 {Type I LastRead 0 FirstWrite -1}
		w_43 {Type I LastRead 0 FirstWrite -1}
		w_44 {Type I LastRead 0 FirstWrite -1}
		w_45 {Type I LastRead 0 FirstWrite -1}
		w_46 {Type I LastRead 0 FirstWrite -1}
		w_47 {Type I LastRead 0 FirstWrite -1}
		w_48 {Type I LastRead 0 FirstWrite -1}
		biases_buf {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_2 {Type O LastRead -1 FirstWrite 80}}}

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
	w_41 { ap_none {  { w_41 in_data 0 32 } } }
	w_42 { ap_none {  { w_42 in_data 0 32 } } }
	w_43 { ap_none {  { w_43 in_data 0 32 } } }
	w_44 { ap_none {  { w_44 in_data 0 32 } } }
	w_45 { ap_none {  { w_45 in_data 0 32 } } }
	w_46 { ap_none {  { w_46 in_data 0 32 } } }
	w_47 { ap_none {  { w_47 in_data 0 32 } } }
	w_48 { ap_none {  { w_48 in_data 0 32 } } }
	biases_buf { ap_none {  { biases_buf in_data 0 32 } } }
	conv_to_pool_streams_2 { ap_fifo {  { conv_to_pool_streams_2_din fifo_data 1 32 }  { conv_to_pool_streams_2_full_n fifo_status 0 1 }  { conv_to_pool_streams_2_write fifo_update 1 1 } } }
}
