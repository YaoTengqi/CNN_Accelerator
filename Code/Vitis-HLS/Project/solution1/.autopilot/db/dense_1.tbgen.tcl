set moduleName dense_1
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
set C_modelName {dense.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ flat_to_dense_streams_1 int 32 regular {fifo 0 volatile }  }
	{ dense_to_softmax_streams_1 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "flat_to_dense_streams_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense_to_softmax_streams_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ flat_to_dense_streams_1_dout sc_in sc_lv 32 signal 0 } 
	{ flat_to_dense_streams_1_empty_n sc_in sc_logic 1 signal 0 } 
	{ flat_to_dense_streams_1_read sc_out sc_logic 1 signal 0 } 
	{ dense_to_softmax_streams_1_din sc_out sc_lv 32 signal 1 } 
	{ dense_to_softmax_streams_1_full_n sc_in sc_logic 1 signal 1 } 
	{ dense_to_softmax_streams_1_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "flat_to_dense_streams_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flat_to_dense_streams_1", "role": "dout" }} , 
 	{ "name": "flat_to_dense_streams_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_1", "role": "empty_n" }} , 
 	{ "name": "flat_to_dense_streams_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_1", "role": "read" }} , 
 	{ "name": "dense_to_softmax_streams_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_1", "role": "din" }} , 
 	{ "name": "dense_to_softmax_streams_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_1", "role": "full_n" }} , 
 	{ "name": "dense_to_softmax_streams_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "18"],
		"CDFG" : "dense_1",
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
			{"Name" : "flat_to_dense_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_1_Pipeline_dense_for_flat_fu_199", "Port" : "flat_to_dense_streams_1", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_60_2_fu_247", "Port" : "dense_to_softmax_streams_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_73", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_1_Pipeline_dense_for_flat_fu_199", "Port" : "dense_weights_73", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_66", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_1_Pipeline_dense_for_flat_fu_199", "Port" : "dense_weights_66", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_1_Pipeline_dense_for_flat_fu_199", "Port" : "dense_weights_59", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_1_Pipeline_dense_for_flat_fu_199", "Port" : "dense_weights_52", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_1_Pipeline_dense_for_flat_fu_199", "Port" : "dense_weights_45", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_1_Pipeline_dense_for_flat_fu_199", "Port" : "dense_weights_38", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_1_Pipeline_dense_for_flat_fu_199", "Port" : "dense_weights_31", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_1_Pipeline_dense_for_flat_fu_199", "Port" : "dense_weights_24", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_1_Pipeline_dense_for_flat_fu_199", "Port" : "dense_weights_17", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dense_1_Pipeline_dense_for_flat_fu_199", "Port" : "dense_weights_10", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_array_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_1_fu_193", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "dense_1_Pipeline_1",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_1_fu_193.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_dense_for_flat_fu_199", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "dense_1_Pipeline_dense_for_flat",
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
			{"Name" : "dense_array_load_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "flat_to_dense_streams_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add7_914_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add7_813_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add7_712_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add7_611_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add7_510_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add7_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add7_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add7_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add7_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dense_weights_73", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_66", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_10", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "dense_for_flat", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_dense_for_flat_fu_199.dense_weights_73_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_dense_for_flat_fu_199.dense_weights_66_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_dense_for_flat_fu_199.dense_weights_59_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_dense_for_flat_fu_199.dense_weights_52_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_dense_for_flat_fu_199.dense_weights_45_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_dense_for_flat_fu_199.dense_weights_38_U", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_dense_for_flat_fu_199.dense_weights_31_U", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_dense_for_flat_fu_199.dense_weights_24_U", "Parent" : "4"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_dense_for_flat_fu_199.dense_weights_17_U", "Parent" : "4"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_dense_for_flat_fu_199.dense_weights_10_U", "Parent" : "4"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_dense_for_flat_fu_199.fadd_32ns_32ns_32_7_full_dsp_1_U344", "Parent" : "4"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_dense_for_flat_fu_199.fmul_32ns_32ns_32_4_max_dsp_1_U345", "Parent" : "4"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_dense_for_flat_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_VITIS_LOOP_60_2_fu_247", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "dense_1_Pipeline_VITIS_LOOP_60_2",
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
			{"Name" : "dense_to_softmax_streams_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_1_Pipeline_VITIS_LOOP_60_2_fu_247.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"}]}


set ArgLastReadFirstWriteLatency {
	dense_1 {
		flat_to_dense_streams_1 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_1 {Type O LastRead -1 FirstWrite 1}
		dense_weights_73 {Type I LastRead -1 FirstWrite -1}
		dense_weights_66 {Type I LastRead -1 FirstWrite -1}
		dense_weights_59 {Type I LastRead -1 FirstWrite -1}
		dense_weights_52 {Type I LastRead -1 FirstWrite -1}
		dense_weights_45 {Type I LastRead -1 FirstWrite -1}
		dense_weights_38 {Type I LastRead -1 FirstWrite -1}
		dense_weights_31 {Type I LastRead -1 FirstWrite -1}
		dense_weights_24 {Type I LastRead -1 FirstWrite -1}
		dense_weights_17 {Type I LastRead -1 FirstWrite -1}
		dense_weights_10 {Type I LastRead -1 FirstWrite -1}}
	dense_1_Pipeline_1 {
		dense_array {Type O LastRead -1 FirstWrite 0}}
	dense_1_Pipeline_dense_for_flat {
		dense_array_load_63 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_62 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_61 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_60 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_59 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_58 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_57 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_56 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_55 {Type I LastRead 0 FirstWrite -1}
		dense_array_load {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_1 {Type I LastRead 1 FirstWrite -1}
		add7_914_out {Type O LastRead -1 FirstWrite 12}
		add7_813_out {Type O LastRead -1 FirstWrite 12}
		add7_712_out {Type O LastRead -1 FirstWrite 12}
		add7_611_out {Type O LastRead -1 FirstWrite 12}
		add7_510_out {Type O LastRead -1 FirstWrite 12}
		add7_49_out {Type O LastRead -1 FirstWrite 12}
		add7_38_out {Type O LastRead -1 FirstWrite 12}
		add7_27_out {Type O LastRead -1 FirstWrite 12}
		add7_16_out {Type O LastRead -1 FirstWrite 12}
		add75_out {Type O LastRead -1 FirstWrite 12}
		dense_weights_73 {Type I LastRead -1 FirstWrite -1}
		dense_weights_66 {Type I LastRead -1 FirstWrite -1}
		dense_weights_59 {Type I LastRead -1 FirstWrite -1}
		dense_weights_52 {Type I LastRead -1 FirstWrite -1}
		dense_weights_45 {Type I LastRead -1 FirstWrite -1}
		dense_weights_38 {Type I LastRead -1 FirstWrite -1}
		dense_weights_31 {Type I LastRead -1 FirstWrite -1}
		dense_weights_24 {Type I LastRead -1 FirstWrite -1}
		dense_weights_17 {Type I LastRead -1 FirstWrite -1}
		dense_weights_10 {Type I LastRead -1 FirstWrite -1}}
	dense_1_Pipeline_VITIS_LOOP_60_2 {
		dense_array {Type I LastRead 0 FirstWrite -1}
		dense_to_softmax_streams_1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2013", "Max" : "2013"}
	, {"Name" : "Interval", "Min" : "2013", "Max" : "2013"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	flat_to_dense_streams_1 { ap_fifo {  { flat_to_dense_streams_1_dout fifo_data 0 32 }  { flat_to_dense_streams_1_empty_n fifo_status 0 1 }  { flat_to_dense_streams_1_read fifo_update 1 1 } } }
	dense_to_softmax_streams_1 { ap_fifo {  { dense_to_softmax_streams_1_din fifo_data 1 32 }  { dense_to_softmax_streams_1_full_n fifo_status 0 1 }  { dense_to_softmax_streams_1_write fifo_update 1 1 } } }
}
