set moduleName dense_23_Pipeline_dense_for_flat
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
set hasInterrupt 0
set C_modelName {dense.23_Pipeline_dense_for_flat}
set C_modelType { void 0 }
set C_modelArgList {
	{ dense_array_load_59 float 32 regular  }
	{ dense_array_load_58 float 32 regular  }
	{ dense_array_load_57 float 32 regular  }
	{ dense_array_load_56 float 32 regular  }
	{ dense_array_load_55 float 32 regular  }
	{ dense_array_load_54 float 32 regular  }
	{ dense_array_load_53 float 32 regular  }
	{ dense_array_load_52 float 32 regular  }
	{ dense_array_load_51 float 32 regular  }
	{ dense_array_load float 32 regular  }
	{ flat_to_dense_streams_2 int 32 regular {fifo 0 volatile }  }
	{ add10_914_out float 32 regular {pointer 1}  }
	{ add10_813_out float 32 regular {pointer 1}  }
	{ add10_712_out float 32 regular {pointer 1}  }
	{ add10_611_out float 32 regular {pointer 1}  }
	{ add10_510_out float 32 regular {pointer 1}  }
	{ add10_49_out float 32 regular {pointer 1}  }
	{ add10_38_out float 32 regular {pointer 1}  }
	{ add10_27_out float 32 regular {pointer 1}  }
	{ add10_16_out float 32 regular {pointer 1}  }
	{ add105_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dense_array_load_59", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense_array_load_58", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense_array_load_57", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense_array_load_56", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense_array_load_55", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense_array_load_54", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense_array_load_53", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense_array_load_52", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense_array_load_51", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense_array_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flat_to_dense_streams_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add10_914_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add10_813_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add10_712_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add10_611_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add10_510_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add10_49_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add10_38_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add10_27_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add10_16_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add105_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dense_array_load_59 sc_in sc_lv 32 signal 0 } 
	{ dense_array_load_58 sc_in sc_lv 32 signal 1 } 
	{ dense_array_load_57 sc_in sc_lv 32 signal 2 } 
	{ dense_array_load_56 sc_in sc_lv 32 signal 3 } 
	{ dense_array_load_55 sc_in sc_lv 32 signal 4 } 
	{ dense_array_load_54 sc_in sc_lv 32 signal 5 } 
	{ dense_array_load_53 sc_in sc_lv 32 signal 6 } 
	{ dense_array_load_52 sc_in sc_lv 32 signal 7 } 
	{ dense_array_load_51 sc_in sc_lv 32 signal 8 } 
	{ dense_array_load sc_in sc_lv 32 signal 9 } 
	{ flat_to_dense_streams_2_dout sc_in sc_lv 32 signal 10 } 
	{ flat_to_dense_streams_2_num_data_valid sc_in sc_lv 9 signal 10 } 
	{ flat_to_dense_streams_2_fifo_cap sc_in sc_lv 9 signal 10 } 
	{ flat_to_dense_streams_2_empty_n sc_in sc_logic 1 signal 10 } 
	{ flat_to_dense_streams_2_read sc_out sc_logic 1 signal 10 } 
	{ add10_914_out sc_out sc_lv 32 signal 11 } 
	{ add10_914_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ add10_813_out sc_out sc_lv 32 signal 12 } 
	{ add10_813_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ add10_712_out sc_out sc_lv 32 signal 13 } 
	{ add10_712_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ add10_611_out sc_out sc_lv 32 signal 14 } 
	{ add10_611_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ add10_510_out sc_out sc_lv 32 signal 15 } 
	{ add10_510_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ add10_49_out sc_out sc_lv 32 signal 16 } 
	{ add10_49_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ add10_38_out sc_out sc_lv 32 signal 17 } 
	{ add10_38_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ add10_27_out sc_out sc_lv 32 signal 18 } 
	{ add10_27_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ add10_16_out sc_out sc_lv 32 signal 19 } 
	{ add10_16_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ add105_out sc_out sc_lv 32 signal 20 } 
	{ add105_out_ap_vld sc_out sc_logic 1 outvld 20 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dense_array_load_59", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_array_load_59", "role": "default" }} , 
 	{ "name": "dense_array_load_58", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_array_load_58", "role": "default" }} , 
 	{ "name": "dense_array_load_57", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_array_load_57", "role": "default" }} , 
 	{ "name": "dense_array_load_56", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_array_load_56", "role": "default" }} , 
 	{ "name": "dense_array_load_55", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_array_load_55", "role": "default" }} , 
 	{ "name": "dense_array_load_54", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_array_load_54", "role": "default" }} , 
 	{ "name": "dense_array_load_53", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_array_load_53", "role": "default" }} , 
 	{ "name": "dense_array_load_52", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_array_load_52", "role": "default" }} , 
 	{ "name": "dense_array_load_51", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_array_load_51", "role": "default" }} , 
 	{ "name": "dense_array_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_array_load", "role": "default" }} , 
 	{ "name": "flat_to_dense_streams_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flat_to_dense_streams_2", "role": "dout" }} , 
 	{ "name": "flat_to_dense_streams_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "flat_to_dense_streams_2", "role": "num_data_valid" }} , 
 	{ "name": "flat_to_dense_streams_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "flat_to_dense_streams_2", "role": "fifo_cap" }} , 
 	{ "name": "flat_to_dense_streams_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_2", "role": "empty_n" }} , 
 	{ "name": "flat_to_dense_streams_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_2", "role": "read" }} , 
 	{ "name": "add10_914_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add10_914_out", "role": "default" }} , 
 	{ "name": "add10_914_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add10_914_out", "role": "ap_vld" }} , 
 	{ "name": "add10_813_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add10_813_out", "role": "default" }} , 
 	{ "name": "add10_813_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add10_813_out", "role": "ap_vld" }} , 
 	{ "name": "add10_712_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add10_712_out", "role": "default" }} , 
 	{ "name": "add10_712_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add10_712_out", "role": "ap_vld" }} , 
 	{ "name": "add10_611_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add10_611_out", "role": "default" }} , 
 	{ "name": "add10_611_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add10_611_out", "role": "ap_vld" }} , 
 	{ "name": "add10_510_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add10_510_out", "role": "default" }} , 
 	{ "name": "add10_510_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add10_510_out", "role": "ap_vld" }} , 
 	{ "name": "add10_49_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add10_49_out", "role": "default" }} , 
 	{ "name": "add10_49_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add10_49_out", "role": "ap_vld" }} , 
 	{ "name": "add10_38_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add10_38_out", "role": "default" }} , 
 	{ "name": "add10_38_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add10_38_out", "role": "ap_vld" }} , 
 	{ "name": "add10_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add10_27_out", "role": "default" }} , 
 	{ "name": "add10_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add10_27_out", "role": "ap_vld" }} , 
 	{ "name": "add10_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add10_16_out", "role": "default" }} , 
 	{ "name": "add10_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add10_16_out", "role": "ap_vld" }} , 
 	{ "name": "add105_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add105_out", "role": "default" }} , 
 	{ "name": "add105_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add105_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "dense_23_Pipeline_dense_for_flat",
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
			{"Name" : "dense_array_load_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "flat_to_dense_streams_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_2_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "dense_weights_74", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_67", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_11", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "dense_for_flat", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_weights_74_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_weights_67_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_weights_60_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_weights_53_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_weights_46_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_weights_39_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_weights_32_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_weights_25_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_weights_18_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_weights_11_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U372", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U373", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dense_23_Pipeline_dense_for_flat {
		dense_array_load_59 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_58 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_57 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_56 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_55 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_54 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_53 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_52 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_51 {Type I LastRead 0 FirstWrite -1}
		dense_array_load {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_2 {Type I LastRead 1 FirstWrite -1}
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
		dense_weights_74 {Type I LastRead -1 FirstWrite -1}
		dense_weights_67 {Type I LastRead -1 FirstWrite -1}
		dense_weights_60 {Type I LastRead -1 FirstWrite -1}
		dense_weights_53 {Type I LastRead -1 FirstWrite -1}
		dense_weights_46 {Type I LastRead -1 FirstWrite -1}
		dense_weights_39 {Type I LastRead -1 FirstWrite -1}
		dense_weights_32 {Type I LastRead -1 FirstWrite -1}
		dense_weights_25 {Type I LastRead -1 FirstWrite -1}
		dense_weights_18 {Type I LastRead -1 FirstWrite -1}
		dense_weights_11 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1974", "Max" : "1974"}
	, {"Name" : "Interval", "Min" : "1974", "Max" : "1974"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dense_array_load_59 { ap_none {  { dense_array_load_59 in_data 0 32 } } }
	dense_array_load_58 { ap_none {  { dense_array_load_58 in_data 0 32 } } }
	dense_array_load_57 { ap_none {  { dense_array_load_57 in_data 0 32 } } }
	dense_array_load_56 { ap_none {  { dense_array_load_56 in_data 0 32 } } }
	dense_array_load_55 { ap_none {  { dense_array_load_55 in_data 0 32 } } }
	dense_array_load_54 { ap_none {  { dense_array_load_54 in_data 0 32 } } }
	dense_array_load_53 { ap_none {  { dense_array_load_53 in_data 0 32 } } }
	dense_array_load_52 { ap_none {  { dense_array_load_52 in_data 0 32 } } }
	dense_array_load_51 { ap_none {  { dense_array_load_51 in_data 0 32 } } }
	dense_array_load { ap_none {  { dense_array_load in_data 0 32 } } }
	flat_to_dense_streams_2 { ap_fifo {  { flat_to_dense_streams_2_dout fifo_port_we 0 32 }  { flat_to_dense_streams_2_num_data_valid fifo_status_num_data_valid 0 9 }  { flat_to_dense_streams_2_fifo_cap fifo_update 0 9 }  { flat_to_dense_streams_2_empty_n fifo_status 0 1 }  { flat_to_dense_streams_2_read fifo_data 1 1 } } }
	add10_914_out { ap_vld {  { add10_914_out out_data 1 32 }  { add10_914_out_ap_vld out_vld 1 1 } } }
	add10_813_out { ap_vld {  { add10_813_out out_data 1 32 }  { add10_813_out_ap_vld out_vld 1 1 } } }
	add10_712_out { ap_vld {  { add10_712_out out_data 1 32 }  { add10_712_out_ap_vld out_vld 1 1 } } }
	add10_611_out { ap_vld {  { add10_611_out out_data 1 32 }  { add10_611_out_ap_vld out_vld 1 1 } } }
	add10_510_out { ap_vld {  { add10_510_out out_data 1 32 }  { add10_510_out_ap_vld out_vld 1 1 } } }
	add10_49_out { ap_vld {  { add10_49_out out_data 1 32 }  { add10_49_out_ap_vld out_vld 1 1 } } }
	add10_38_out { ap_vld {  { add10_38_out out_data 1 32 }  { add10_38_out_ap_vld out_vld 1 1 } } }
	add10_27_out { ap_vld {  { add10_27_out out_data 1 32 }  { add10_27_out_ap_vld out_vld 1 1 } } }
	add10_16_out { ap_vld {  { add10_16_out out_data 1 32 }  { add10_16_out_ap_vld out_vld 1 1 } } }
	add105_out { ap_vld {  { add105_out out_data 1 32 }  { add105_out_ap_vld out_vld 1 1 } } }
}
