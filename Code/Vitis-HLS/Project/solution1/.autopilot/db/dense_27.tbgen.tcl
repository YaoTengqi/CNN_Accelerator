set moduleName dense_27
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
set C_modelName {dense.27}
set C_modelType { void 0 }
set C_modelArgList {
	{ flat_to_dense_streams_6 int 32 regular {fifo 0 volatile }  }
	{ dense_to_softmax_streams_6 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "flat_to_dense_streams_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense_to_softmax_streams_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ flat_to_dense_streams_6_dout sc_in sc_lv 32 signal 0 } 
	{ flat_to_dense_streams_6_num_data_valid sc_in sc_lv 9 signal 0 } 
	{ flat_to_dense_streams_6_fifo_cap sc_in sc_lv 9 signal 0 } 
	{ flat_to_dense_streams_6_empty_n sc_in sc_logic 1 signal 0 } 
	{ flat_to_dense_streams_6_read sc_out sc_logic 1 signal 0 } 
	{ dense_to_softmax_streams_6_din sc_out sc_lv 32 signal 1 } 
	{ dense_to_softmax_streams_6_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ dense_to_softmax_streams_6_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ dense_to_softmax_streams_6_full_n sc_in sc_logic 1 signal 1 } 
	{ dense_to_softmax_streams_6_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "flat_to_dense_streams_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flat_to_dense_streams_6", "role": "dout" }} , 
 	{ "name": "flat_to_dense_streams_6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "flat_to_dense_streams_6", "role": "num_data_valid" }} , 
 	{ "name": "flat_to_dense_streams_6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "flat_to_dense_streams_6", "role": "fifo_cap" }} , 
 	{ "name": "flat_to_dense_streams_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_6", "role": "empty_n" }} , 
 	{ "name": "flat_to_dense_streams_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_6", "role": "read" }} , 
 	{ "name": "dense_to_softmax_streams_6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_6", "role": "din" }} , 
 	{ "name": "dense_to_softmax_streams_6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_6", "role": "num_data_valid" }} , 
 	{ "name": "dense_to_softmax_streams_6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_6", "role": "fifo_cap" }} , 
 	{ "name": "dense_to_softmax_streams_6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_6", "role": "full_n" }} , 
 	{ "name": "dense_to_softmax_streams_6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_6", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "18"],
		"CDFG" : "dense_27",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2013", "EstimateLatencyMax" : "2013",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "flat_to_dense_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dense_27_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_6", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_78", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_78", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_71", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_71", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_64", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_57", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_50", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_43", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_36", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_29", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_22", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_15", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_array_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_1_fu_195", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "dense_27_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dense_array", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_dense_for_flat_fu_201", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "dense_27_Pipeline_dense_for_flat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1974", "EstimateLatencyMax" : "1974",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dense_array_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "flat_to_dense_streams_6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add10_914_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add10_813_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add10_712_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add10_611_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add10_510_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add10_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add10_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add10_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add10_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dense_weights_78", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_71", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_64", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "dense_for_flat", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_78_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_71_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_64_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_57_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_50_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_43_U", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_36_U", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_29_U", "Parent" : "4"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_22_U", "Parent" : "4"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_15_U", "Parent" : "4"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U565", "Parent" : "4"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U566", "Parent" : "4"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "dense_27_Pipeline_VITIS_LOOP_60_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dense_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_to_softmax_streams_6", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_6_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_27_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"}]}


set ArgLastReadFirstWriteLatency {
	dense_27 {
		flat_to_dense_streams_6 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_6 {Type O LastRead -1 FirstWrite 1}
		dense_weights_78 {Type I LastRead -1 FirstWrite -1}
		dense_weights_71 {Type I LastRead -1 FirstWrite -1}
		dense_weights_64 {Type I LastRead -1 FirstWrite -1}
		dense_weights_57 {Type I LastRead -1 FirstWrite -1}
		dense_weights_50 {Type I LastRead -1 FirstWrite -1}
		dense_weights_43 {Type I LastRead -1 FirstWrite -1}
		dense_weights_36 {Type I LastRead -1 FirstWrite -1}
		dense_weights_29 {Type I LastRead -1 FirstWrite -1}
		dense_weights_22 {Type I LastRead -1 FirstWrite -1}
		dense_weights_15 {Type I LastRead -1 FirstWrite -1}}
	dense_27_Pipeline_1 {
		dense_array {Type O LastRead -1 FirstWrite 0}}
	dense_27_Pipeline_dense_for_flat {
		dense_array_load_19 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_18 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_17 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_16 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_15 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_14 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_13 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_12 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_11 {Type I LastRead 0 FirstWrite -1}
		dense_array_load {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_6 {Type I LastRead 1 FirstWrite -1}
		add10_914_out {Type O LastRead -1 FirstWrite 12}
		add10_813_out {Type O LastRead -1 FirstWrite 12}
		add10_712_out {Type O LastRead -1 FirstWrite 12}
		add10_611_out {Type O LastRead -1 FirstWrite 12}
		add10_510_out {Type O LastRead -1 FirstWrite 12}
		add10_49_out {Type O LastRead -1 FirstWrite 12}
		add10_38_out {Type O LastRead -1 FirstWrite 12}
		add10_27_out {Type O LastRead -1 FirstWrite 12}
		add10_16_out {Type O LastRead -1 FirstWrite 12}
		add105_out {Type O LastRead -1 FirstWrite 12}
		dense_weights_78 {Type I LastRead -1 FirstWrite -1}
		dense_weights_71 {Type I LastRead -1 FirstWrite -1}
		dense_weights_64 {Type I LastRead -1 FirstWrite -1}
		dense_weights_57 {Type I LastRead -1 FirstWrite -1}
		dense_weights_50 {Type I LastRead -1 FirstWrite -1}
		dense_weights_43 {Type I LastRead -1 FirstWrite -1}
		dense_weights_36 {Type I LastRead -1 FirstWrite -1}
		dense_weights_29 {Type I LastRead -1 FirstWrite -1}
		dense_weights_22 {Type I LastRead -1 FirstWrite -1}
		dense_weights_15 {Type I LastRead -1 FirstWrite -1}}
	dense_27_Pipeline_VITIS_LOOP_60_2 {
		dense_array {Type I LastRead 0 FirstWrite -1}
		dense_to_softmax_streams_6 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2013", "Max" : "2013"}
	, {"Name" : "Interval", "Min" : "2013", "Max" : "2013"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	flat_to_dense_streams_6 { ap_fifo {  { flat_to_dense_streams_6_dout fifo_port_we 0 32 }  { flat_to_dense_streams_6_num_data_valid fifo_status_num_data_valid 0 9 }  { flat_to_dense_streams_6_fifo_cap fifo_update 0 9 }  { flat_to_dense_streams_6_empty_n fifo_status 0 1 }  { flat_to_dense_streams_6_read fifo_data 1 1 } } }
	dense_to_softmax_streams_6 { ap_fifo {  { dense_to_softmax_streams_6_din fifo_port_we 1 32 }  { dense_to_softmax_streams_6_num_data_valid fifo_status_num_data_valid 0 5 }  { dense_to_softmax_streams_6_fifo_cap fifo_update 0 5 }  { dense_to_softmax_streams_6_full_n fifo_status 0 1 }  { dense_to_softmax_streams_6_write fifo_data 1 1 } } }
}
