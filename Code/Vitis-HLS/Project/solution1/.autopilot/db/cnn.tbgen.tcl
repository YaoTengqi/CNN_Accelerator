set moduleName cnn
set isTopModule 1
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
set C_modelName {cnn}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_in int 32 regular {array 784 { 1 3 } 1 1 }  }
	{ prediction int 32 regular {array 10 { 0 1 } 1 1 }  }
	{ weight_buf int 32 regular {array 72 { 1 3 } 1 1 }  }
	{ biases_buf int 32 regular {array 8 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_in", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "prediction", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "weight_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "biases_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_in_address0 sc_out sc_lv 10 signal 0 } 
	{ img_in_ce0 sc_out sc_logic 1 signal 0 } 
	{ img_in_q0 sc_in sc_lv 32 signal 0 } 
	{ prediction_address0 sc_out sc_lv 4 signal 1 } 
	{ prediction_ce0 sc_out sc_logic 1 signal 1 } 
	{ prediction_we0 sc_out sc_logic 1 signal 1 } 
	{ prediction_d0 sc_out sc_lv 32 signal 1 } 
	{ prediction_address1 sc_out sc_lv 4 signal 1 } 
	{ prediction_ce1 sc_out sc_logic 1 signal 1 } 
	{ prediction_q1 sc_in sc_lv 32 signal 1 } 
	{ weight_buf_address0 sc_out sc_lv 7 signal 2 } 
	{ weight_buf_ce0 sc_out sc_logic 1 signal 2 } 
	{ weight_buf_q0 sc_in sc_lv 32 signal 2 } 
	{ biases_buf_address0 sc_out sc_lv 3 signal 3 } 
	{ biases_buf_ce0 sc_out sc_logic 1 signal 3 } 
	{ biases_buf_q0 sc_in sc_lv 32 signal 3 } 
	{ biases_buf_address1 sc_out sc_lv 3 signal 3 } 
	{ biases_buf_ce1 sc_out sc_logic 1 signal 3 } 
	{ biases_buf_q1 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_in_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "img_in", "role": "address0" }} , 
 	{ "name": "img_in_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in", "role": "ce0" }} , 
 	{ "name": "img_in_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_in", "role": "q0" }} , 
 	{ "name": "prediction_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "prediction", "role": "address0" }} , 
 	{ "name": "prediction_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prediction", "role": "ce0" }} , 
 	{ "name": "prediction_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prediction", "role": "we0" }} , 
 	{ "name": "prediction_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prediction", "role": "d0" }} , 
 	{ "name": "prediction_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "prediction", "role": "address1" }} , 
 	{ "name": "prediction_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prediction", "role": "ce1" }} , 
 	{ "name": "prediction_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prediction", "role": "q1" }} , 
 	{ "name": "weight_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weight_buf", "role": "address0" }} , 
 	{ "name": "weight_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf", "role": "ce0" }} , 
 	{ "name": "weight_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf", "role": "q0" }} , 
 	{ "name": "biases_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "biases_buf", "role": "address0" }} , 
 	{ "name": "biases_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases_buf", "role": "ce0" }} , 
 	{ "name": "biases_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases_buf", "role": "q0" }} , 
 	{ "name": "biases_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "biases_buf", "role": "address1" }} , 
 	{ "name": "biases_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases_buf", "role": "ce1" }} , 
 	{ "name": "biases_buf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases_buf", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "20", "22", "24", "26", "28", "30", "32", "34", "36", "38"],
		"CDFG" : "cnn",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5920", "EstimateLatencyMax" : "5920",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_in", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_cnn_Pipeline_pad_for_rows_pad_for_cols_fu_369", "Port" : "img_in", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "prediction", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "prediction", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_cnn_Pipeline_5_fu_404", "Port" : "weight_buf", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "28", "SubInstance" : "grp_cnn_Pipeline_6_fu_411", "Port" : "weight_buf", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "24", "SubInstance" : "grp_cnn_Pipeline_4_fu_397", "Port" : "weight_buf", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "20", "SubInstance" : "grp_cnn_Pipeline_3_fu_377", "Port" : "weight_buf", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_cnn_Pipeline_7_fu_418", "Port" : "weight_buf", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "32", "SubInstance" : "grp_cnn_Pipeline_8_fu_425", "Port" : "weight_buf", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "34", "SubInstance" : "grp_cnn_Pipeline_9_fu_432", "Port" : "weight_buf", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "36", "SubInstance" : "grp_cnn_Pipeline_10_fu_439", "Port" : "weight_buf", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "biases_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_72", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_72", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_65", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_65", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_58", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_51", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_44", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_37", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_30", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_23", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_16", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_73", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_73", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_66", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_66", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_59", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_52", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_45", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_38", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_31", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_24", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_17", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_10", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_74", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_74", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_67", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_67", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_60", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_53", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_46", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_39", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_32", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_25", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_18", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_11", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_75", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_75", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_68", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_68", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_61", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_54", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_47", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_40", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_33", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_26", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_19", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_12", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_76", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_76", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_69", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_69", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_62", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_55", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_55", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_48", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_41", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_34", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_27", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_20", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_13", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_77", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_77", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_70", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_70", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_63", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_63", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_56", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_56", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_49", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_42", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_35", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_28", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_21", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_14", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_78", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_78", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_71", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_71", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_64", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_57", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_50", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_43", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_36", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_29", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_22", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_15", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_0", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_1", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_2", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_3", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_4", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_5", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_6", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_7", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_8", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_weights_9", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "dense_biases", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_dataflow_section_fu_446", "Port" : "dense_biases", "Inst_start_state" : "17", "Inst_end_state" : "18"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pad_img_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pad_img1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pad_img2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pad_img3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pad_img4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pad_img5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pad_img6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pad_img7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_buf_0_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_buf_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_buf_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_buf_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_buf_4_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_buf_5_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_buf_6_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_buf_7_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_pad_for_rows_pad_for_cols_fu_369", "Parent" : "0", "Child" : ["18", "19"],
		"CDFG" : "cnn_Pipeline_pad_for_rows_pad_for_cols",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "920", "EstimateLatencyMax" : "920",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pad_img", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "img_in", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "pad_for_rows_pad_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter19", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter19", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_pad_for_rows_pad_for_cols_fu_369.fdiv_32ns_32ns_32_16_no_dsp_1_U1", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_pad_for_rows_pad_for_cols_fu_369.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_3_fu_377", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "cnn_Pipeline_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "weight_buf_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_3_fu_377.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_clone_for_rows_clone_for_cols_fu_385", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "cnn_Pipeline_clone_for_rows_clone_for_cols",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "903", "EstimateLatencyMax" : "903",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pad_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pad_img1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pad_img2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pad_img3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pad_img4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pad_img5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pad_img6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pad_img7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "clone_for_rows_clone_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_clone_for_rows_clone_for_cols_fu_385.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_4_fu_397", "Parent" : "0", "Child" : ["25"],
		"CDFG" : "cnn_Pipeline_4",
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
			{"Name" : "weight_buf_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_4_fu_397.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_5_fu_404", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "cnn_Pipeline_5",
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
			{"Name" : "weight_buf_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_5_fu_404.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_6_fu_411", "Parent" : "0", "Child" : ["29"],
		"CDFG" : "cnn_Pipeline_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "weight_buf_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_6_fu_411.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_7_fu_418", "Parent" : "0", "Child" : ["31"],
		"CDFG" : "cnn_Pipeline_7",
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
			{"Name" : "weight_buf_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_7_fu_418.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_8_fu_425", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "cnn_Pipeline_8",
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
			{"Name" : "weight_buf_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_8_fu_425.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_9_fu_432", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "cnn_Pipeline_9",
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
			{"Name" : "weight_buf_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_9_fu_432.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_10_fu_439", "Parent" : "0", "Child" : ["37"],
		"CDFG" : "cnn_Pipeline_10",
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
			{"Name" : "weight_buf_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_Pipeline_10_fu_439.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446", "Parent" : "0", "Child" : ["39", "184", "209", "226", "387", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431"],
		"CDFG" : "dataflow_section",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4009", "EstimateLatencyMax" : "4009",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "39", "Name" : "convolutional_layer_U0"},
			{"ID" : "387", "Name" : "dense_layer_soft_max_U0"}],
		"OutputProcess" : [
			{"ID" : "387", "Name" : "dense_layer_soft_max_U0"}],
		"Port" : [
			{"Name" : "pad_img", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "pad_img1"}]},
			{"Name" : "pad_img2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "pad_img2"}]},
			{"Name" : "pad_img3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "pad_img3"}]},
			{"Name" : "pad_img4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "pad_img4"}]},
			{"Name" : "pad_img5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "pad_img5"}]},
			{"Name" : "pad_img6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "pad_img6"}]},
			{"Name" : "pad_img7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "pad_img7"}]},
			{"Name" : "weight_buf_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "weight_buf_0"}]},
			{"Name" : "weight_buf_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "weight_buf_1"}]},
			{"Name" : "weight_buf_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "weight_buf_2"}]},
			{"Name" : "weight_buf_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "weight_buf_3"}]},
			{"Name" : "weight_buf_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "weight_buf_4"}]},
			{"Name" : "weight_buf_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "weight_buf_5"}]},
			{"Name" : "weight_buf_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "weight_buf_6"}]},
			{"Name" : "weight_buf_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "convolutional_layer_U0", "Port" : "weight_buf_7"}]},
			{"Name" : "biases_buf_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "prediction", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "387", "SubInstance" : "dense_layer_soft_max_U0", "Port" : "prediction"}]},
			{"Name" : "dense_weights_72", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_72"}]},
			{"Name" : "dense_weights_65", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_65"}]},
			{"Name" : "dense_weights_58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_58"}]},
			{"Name" : "dense_weights_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_51"}]},
			{"Name" : "dense_weights_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_44"}]},
			{"Name" : "dense_weights_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_37"}]},
			{"Name" : "dense_weights_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_30"}]},
			{"Name" : "dense_weights_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_23"}]},
			{"Name" : "dense_weights_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_16"}]},
			{"Name" : "dense_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights"}]},
			{"Name" : "dense_weights_73", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_73"}]},
			{"Name" : "dense_weights_66", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_66"}]},
			{"Name" : "dense_weights_59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_59"}]},
			{"Name" : "dense_weights_52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_52"}]},
			{"Name" : "dense_weights_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_45"}]},
			{"Name" : "dense_weights_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_38"}]},
			{"Name" : "dense_weights_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_31"}]},
			{"Name" : "dense_weights_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_24"}]},
			{"Name" : "dense_weights_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_17"}]},
			{"Name" : "dense_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_10"}]},
			{"Name" : "dense_weights_74", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_74"}]},
			{"Name" : "dense_weights_67", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_67"}]},
			{"Name" : "dense_weights_60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_60"}]},
			{"Name" : "dense_weights_53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_53"}]},
			{"Name" : "dense_weights_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_46"}]},
			{"Name" : "dense_weights_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_39"}]},
			{"Name" : "dense_weights_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_32"}]},
			{"Name" : "dense_weights_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_25"}]},
			{"Name" : "dense_weights_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_18"}]},
			{"Name" : "dense_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_11"}]},
			{"Name" : "dense_weights_75", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_75"}]},
			{"Name" : "dense_weights_68", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_68"}]},
			{"Name" : "dense_weights_61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_61"}]},
			{"Name" : "dense_weights_54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_54"}]},
			{"Name" : "dense_weights_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_47"}]},
			{"Name" : "dense_weights_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_40"}]},
			{"Name" : "dense_weights_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_33"}]},
			{"Name" : "dense_weights_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_26"}]},
			{"Name" : "dense_weights_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_19"}]},
			{"Name" : "dense_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_12"}]},
			{"Name" : "dense_weights_76", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_76"}]},
			{"Name" : "dense_weights_69", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_69"}]},
			{"Name" : "dense_weights_62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_62"}]},
			{"Name" : "dense_weights_55", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_55"}]},
			{"Name" : "dense_weights_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_48"}]},
			{"Name" : "dense_weights_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_41"}]},
			{"Name" : "dense_weights_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_34"}]},
			{"Name" : "dense_weights_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_27"}]},
			{"Name" : "dense_weights_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_20"}]},
			{"Name" : "dense_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_13"}]},
			{"Name" : "dense_weights_77", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_77"}]},
			{"Name" : "dense_weights_70", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_70"}]},
			{"Name" : "dense_weights_63", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_63"}]},
			{"Name" : "dense_weights_56", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_56"}]},
			{"Name" : "dense_weights_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_49"}]},
			{"Name" : "dense_weights_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_42"}]},
			{"Name" : "dense_weights_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_35"}]},
			{"Name" : "dense_weights_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_28"}]},
			{"Name" : "dense_weights_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_21"}]},
			{"Name" : "dense_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_14"}]},
			{"Name" : "dense_weights_78", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_78"}]},
			{"Name" : "dense_weights_71", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_71"}]},
			{"Name" : "dense_weights_64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_64"}]},
			{"Name" : "dense_weights_57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_57"}]},
			{"Name" : "dense_weights_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_50"}]},
			{"Name" : "dense_weights_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_43"}]},
			{"Name" : "dense_weights_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_36"}]},
			{"Name" : "dense_weights_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_29"}]},
			{"Name" : "dense_weights_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_22"}]},
			{"Name" : "dense_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_15"}]},
			{"Name" : "dense_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_0"}]},
			{"Name" : "dense_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_1"}]},
			{"Name" : "dense_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_2"}]},
			{"Name" : "dense_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_3"}]},
			{"Name" : "dense_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_4"}]},
			{"Name" : "dense_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_5"}]},
			{"Name" : "dense_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_6"}]},
			{"Name" : "dense_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_7"}]},
			{"Name" : "dense_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_8"}]},
			{"Name" : "dense_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_9"}]},
			{"Name" : "dense_biases", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "387", "SubInstance" : "dense_layer_soft_max_U0", "Port" : "dense_biases"}]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0", "Parent" : "38", "Child" : ["40", "58", "76", "94", "112", "130", "148", "166"],
		"CDFG" : "convolutional_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4009", "EstimateLatencyMax" : "4009",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "40", "Name" : "convolution_U0"},
			{"ID" : "58", "Name" : "convolution_1_U0"},
			{"ID" : "76", "Name" : "convolution_2_U0"},
			{"ID" : "94", "Name" : "convolution_3_U0"},
			{"ID" : "112", "Name" : "convolution_4_U0"},
			{"ID" : "130", "Name" : "convolution_5_U0"},
			{"ID" : "148", "Name" : "convolution_6_U0"},
			{"ID" : "166", "Name" : "convolution_7_U0"}],
		"OutputProcess" : [
			{"ID" : "40", "Name" : "convolution_U0"},
			{"ID" : "58", "Name" : "convolution_1_U0"},
			{"ID" : "76", "Name" : "convolution_2_U0"},
			{"ID" : "94", "Name" : "convolution_3_U0"},
			{"ID" : "112", "Name" : "convolution_4_U0"},
			{"ID" : "130", "Name" : "convolution_5_U0"},
			{"ID" : "148", "Name" : "convolution_6_U0"},
			{"ID" : "166", "Name" : "convolution_7_U0"}],
		"Port" : [
			{"Name" : "pad_img", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "convolution_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "convolution_1_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "convolution_2_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "convolution_3_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "convolution_4_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "convolution_5_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "convolution_6_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "convolution_7_U0", "Port" : "pad_img"}]},
			{"Name" : "weight_buf_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "convolution_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "convolution_1_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "convolution_2_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "convolution_3_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "convolution_4_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "convolution_5_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "convolution_6_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "convolution_7_U0", "Port" : "weight_buf"}]},
			{"Name" : "biases_buf_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","185"], "DependentChan" : "397", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "convolution_U0", "Port" : "conv_to_pool_streams_0"}]},
			{"Name" : "conv_to_pool_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","188"], "DependentChan" : "398", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "convolution_1_U0", "Port" : "conv_to_pool_streams_1"}]},
			{"Name" : "conv_to_pool_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","191"], "DependentChan" : "399", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "convolution_2_U0", "Port" : "conv_to_pool_streams_2"}]},
			{"Name" : "conv_to_pool_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","194"], "DependentChan" : "400", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "convolution_3_U0", "Port" : "conv_to_pool_streams_3"}]},
			{"Name" : "conv_to_pool_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","197"], "DependentChan" : "401", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "convolution_4_U0", "Port" : "conv_to_pool_streams_4"}]},
			{"Name" : "conv_to_pool_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","200"], "DependentChan" : "402", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "convolution_5_U0", "Port" : "conv_to_pool_streams_5"}]},
			{"Name" : "conv_to_pool_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","203"], "DependentChan" : "403", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "convolution_6_U0", "Port" : "conv_to_pool_streams_6"}]},
			{"Name" : "conv_to_pool_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","206"], "DependentChan" : "404", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "convolution_7_U0", "Port" : "conv_to_pool_streams_7"}]}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0", "Parent" : "39", "Child" : ["41", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57"],
		"CDFG" : "convolution",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4009", "EstimateLatencyMax" : "4009",
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
					{"ID" : "41", "SubInstance" : "grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","185"], "DependentChan" : "397", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_0", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "40", "Child" : ["42", "43", "44", "45", "46", "47"],
		"CDFG" : "convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols",
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
			{"Name" : "w_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv8", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "conv_for_rows_win_for_rows_win_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U29", "Parent" : "41"},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U30", "Parent" : "41"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U31", "Parent" : "41"},
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U32", "Parent" : "41"},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U33", "Parent" : "41"},
	{"ID" : "47", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.sitofp_32ns_32_6_no_dsp_1_U49", "Parent" : "40"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.sitofp_32ns_32_6_no_dsp_1_U50", "Parent" : "40"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.sitofp_32ns_32_6_no_dsp_1_U51", "Parent" : "40"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.sitofp_32ns_32_6_no_dsp_1_U52", "Parent" : "40"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.sitofp_32ns_32_6_no_dsp_1_U53", "Parent" : "40"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.sitofp_32ns_32_6_no_dsp_1_U54", "Parent" : "40"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.sitofp_32ns_32_6_no_dsp_1_U55", "Parent" : "40"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.sitofp_32ns_32_6_no_dsp_1_U56", "Parent" : "40"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.sitofp_32ns_32_6_no_dsp_1_U57", "Parent" : "40"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0.sitofp_32ns_32_6_no_dsp_1_U58", "Parent" : "40"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0", "Parent" : "39", "Child" : ["59", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75"],
		"CDFG" : "convolution_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4009", "EstimateLatencyMax" : "4009",
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
					{"ID" : "59", "SubInstance" : "grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","188"], "DependentChan" : "398", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_1", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "58", "Child" : ["60", "61", "62", "63", "64", "65"],
		"CDFG" : "convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols",
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
			{"Name" : "w_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "conv_for_rows_win_for_rows_win_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U64", "Parent" : "59"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U65", "Parent" : "59"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U66", "Parent" : "59"},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U67", "Parent" : "59"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U68", "Parent" : "59"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.sitofp_32ns_32_6_no_dsp_1_U81", "Parent" : "58"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.sitofp_32ns_32_6_no_dsp_1_U82", "Parent" : "58"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.sitofp_32ns_32_6_no_dsp_1_U83", "Parent" : "58"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.sitofp_32ns_32_6_no_dsp_1_U84", "Parent" : "58"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.sitofp_32ns_32_6_no_dsp_1_U85", "Parent" : "58"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.sitofp_32ns_32_6_no_dsp_1_U86", "Parent" : "58"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.sitofp_32ns_32_6_no_dsp_1_U87", "Parent" : "58"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.sitofp_32ns_32_6_no_dsp_1_U88", "Parent" : "58"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.sitofp_32ns_32_6_no_dsp_1_U89", "Parent" : "58"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.sitofp_32ns_32_6_no_dsp_1_U90", "Parent" : "58"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0", "Parent" : "39", "Child" : ["77", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93"],
		"CDFG" : "convolution_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4009", "EstimateLatencyMax" : "4009",
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
					{"ID" : "77", "SubInstance" : "grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","191"], "DependentChan" : "399", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_2", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "76", "Child" : ["78", "79", "80", "81", "82", "83"],
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
			{"Name" : "w_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv6", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "conv_for_rows_win_for_rows_win_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U95", "Parent" : "77"},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U96", "Parent" : "77"},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U97", "Parent" : "77"},
	{"ID" : "81", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U98", "Parent" : "77"},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U99", "Parent" : "77"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.sitofp_32ns_32_6_no_dsp_1_U112", "Parent" : "76"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.sitofp_32ns_32_6_no_dsp_1_U113", "Parent" : "76"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.sitofp_32ns_32_6_no_dsp_1_U114", "Parent" : "76"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.sitofp_32ns_32_6_no_dsp_1_U115", "Parent" : "76"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.sitofp_32ns_32_6_no_dsp_1_U116", "Parent" : "76"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.sitofp_32ns_32_6_no_dsp_1_U117", "Parent" : "76"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.sitofp_32ns_32_6_no_dsp_1_U118", "Parent" : "76"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.sitofp_32ns_32_6_no_dsp_1_U119", "Parent" : "76"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.sitofp_32ns_32_6_no_dsp_1_U120", "Parent" : "76"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.sitofp_32ns_32_6_no_dsp_1_U121", "Parent" : "76"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0", "Parent" : "39", "Child" : ["95", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111"],
		"CDFG" : "convolution_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4009", "EstimateLatencyMax" : "4009",
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
					{"ID" : "95", "SubInstance" : "grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","194"], "DependentChan" : "400", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_3", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "94", "Child" : ["96", "97", "98", "99", "100", "101"],
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
			{"Name" : "w_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv5", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "conv_for_rows_win_for_rows_win_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U126", "Parent" : "95"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U127", "Parent" : "95"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U128", "Parent" : "95"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U129", "Parent" : "95"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U130", "Parent" : "95"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "95"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.sitofp_32ns_32_6_no_dsp_1_U143", "Parent" : "94"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.sitofp_32ns_32_6_no_dsp_1_U144", "Parent" : "94"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.sitofp_32ns_32_6_no_dsp_1_U145", "Parent" : "94"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.sitofp_32ns_32_6_no_dsp_1_U146", "Parent" : "94"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.sitofp_32ns_32_6_no_dsp_1_U147", "Parent" : "94"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.sitofp_32ns_32_6_no_dsp_1_U148", "Parent" : "94"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.sitofp_32ns_32_6_no_dsp_1_U149", "Parent" : "94"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.sitofp_32ns_32_6_no_dsp_1_U150", "Parent" : "94"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.sitofp_32ns_32_6_no_dsp_1_U151", "Parent" : "94"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.sitofp_32ns_32_6_no_dsp_1_U152", "Parent" : "94"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0", "Parent" : "39", "Child" : ["113", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129"],
		"CDFG" : "convolution_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4009", "EstimateLatencyMax" : "4009",
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
					{"ID" : "113", "SubInstance" : "grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","197"], "DependentChan" : "401", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_4", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "112", "Child" : ["114", "115", "116", "117", "118", "119"],
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
			{"Name" : "w_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv4", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "conv_for_rows_win_for_rows_win_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U157", "Parent" : "113"},
	{"ID" : "115", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U158", "Parent" : "113"},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U159", "Parent" : "113"},
	{"ID" : "117", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U160", "Parent" : "113"},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U161", "Parent" : "113"},
	{"ID" : "119", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "113"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.sitofp_32ns_32_6_no_dsp_1_U174", "Parent" : "112"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.sitofp_32ns_32_6_no_dsp_1_U175", "Parent" : "112"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.sitofp_32ns_32_6_no_dsp_1_U176", "Parent" : "112"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.sitofp_32ns_32_6_no_dsp_1_U177", "Parent" : "112"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.sitofp_32ns_32_6_no_dsp_1_U178", "Parent" : "112"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.sitofp_32ns_32_6_no_dsp_1_U179", "Parent" : "112"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.sitofp_32ns_32_6_no_dsp_1_U180", "Parent" : "112"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.sitofp_32ns_32_6_no_dsp_1_U181", "Parent" : "112"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.sitofp_32ns_32_6_no_dsp_1_U182", "Parent" : "112"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.sitofp_32ns_32_6_no_dsp_1_U183", "Parent" : "112"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0", "Parent" : "39", "Child" : ["131", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147"],
		"CDFG" : "convolution_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4009", "EstimateLatencyMax" : "4009",
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
					{"ID" : "131", "SubInstance" : "grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","200"], "DependentChan" : "402", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_5", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "130", "Child" : ["132", "133", "134", "135", "136", "137"],
		"CDFG" : "convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols",
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
			{"Name" : "w_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv3", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_5", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "conv_for_rows_win_for_rows_win_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U188", "Parent" : "131"},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U189", "Parent" : "131"},
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U190", "Parent" : "131"},
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U191", "Parent" : "131"},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U192", "Parent" : "131"},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "131"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.sitofp_32ns_32_6_no_dsp_1_U205", "Parent" : "130"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.sitofp_32ns_32_6_no_dsp_1_U206", "Parent" : "130"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.sitofp_32ns_32_6_no_dsp_1_U207", "Parent" : "130"},
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.sitofp_32ns_32_6_no_dsp_1_U208", "Parent" : "130"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.sitofp_32ns_32_6_no_dsp_1_U209", "Parent" : "130"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.sitofp_32ns_32_6_no_dsp_1_U210", "Parent" : "130"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.sitofp_32ns_32_6_no_dsp_1_U211", "Parent" : "130"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.sitofp_32ns_32_6_no_dsp_1_U212", "Parent" : "130"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.sitofp_32ns_32_6_no_dsp_1_U213", "Parent" : "130"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.sitofp_32ns_32_6_no_dsp_1_U214", "Parent" : "130"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0", "Parent" : "39", "Child" : ["149", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165"],
		"CDFG" : "convolution_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4009", "EstimateLatencyMax" : "4009",
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
					{"ID" : "149", "SubInstance" : "grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","203"], "DependentChan" : "403", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_6", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "148", "Child" : ["150", "151", "152", "153", "154", "155"],
		"CDFG" : "convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols",
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
			{"Name" : "w_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv2", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_6", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_6_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "conv_for_rows_win_for_rows_win_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U219", "Parent" : "149"},
	{"ID" : "151", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U220", "Parent" : "149"},
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U221", "Parent" : "149"},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U222", "Parent" : "149"},
	{"ID" : "154", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U223", "Parent" : "149"},
	{"ID" : "155", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "149"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.sitofp_32ns_32_6_no_dsp_1_U236", "Parent" : "148"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.sitofp_32ns_32_6_no_dsp_1_U237", "Parent" : "148"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.sitofp_32ns_32_6_no_dsp_1_U238", "Parent" : "148"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.sitofp_32ns_32_6_no_dsp_1_U239", "Parent" : "148"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.sitofp_32ns_32_6_no_dsp_1_U240", "Parent" : "148"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.sitofp_32ns_32_6_no_dsp_1_U241", "Parent" : "148"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.sitofp_32ns_32_6_no_dsp_1_U242", "Parent" : "148"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.sitofp_32ns_32_6_no_dsp_1_U243", "Parent" : "148"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.sitofp_32ns_32_6_no_dsp_1_U244", "Parent" : "148"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.sitofp_32ns_32_6_no_dsp_1_U245", "Parent" : "148"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0", "Parent" : "39", "Child" : ["167", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183"],
		"CDFG" : "convolution_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4009", "EstimateLatencyMax" : "4009",
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
					{"ID" : "167", "SubInstance" : "grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["184","206"], "DependentChan" : "404", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_7", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "166", "Child" : ["168", "169", "170", "171", "172", "173"],
		"CDFG" : "convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols",
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
			{"Name" : "w_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_7", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "conv_for_rows_win_for_rows_win_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U250", "Parent" : "167"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U251", "Parent" : "167"},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U252", "Parent" : "167"},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U253", "Parent" : "167"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U254", "Parent" : "167"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "167"},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.sitofp_32ns_32_6_no_dsp_1_U267", "Parent" : "166"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.sitofp_32ns_32_6_no_dsp_1_U268", "Parent" : "166"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.sitofp_32ns_32_6_no_dsp_1_U269", "Parent" : "166"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.sitofp_32ns_32_6_no_dsp_1_U270", "Parent" : "166"},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.sitofp_32ns_32_6_no_dsp_1_U271", "Parent" : "166"},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.sitofp_32ns_32_6_no_dsp_1_U272", "Parent" : "166"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.sitofp_32ns_32_6_no_dsp_1_U273", "Parent" : "166"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.sitofp_32ns_32_6_no_dsp_1_U274", "Parent" : "166"},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.sitofp_32ns_32_6_no_dsp_1_U275", "Parent" : "166"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.sitofp_32ns_32_6_no_dsp_1_U276", "Parent" : "166"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0", "Parent" : "38", "Child" : ["185", "188", "191", "194", "197", "200", "203", "206"],
		"CDFG" : "max_pooling_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "792", "EstimateLatencyMax" : "792",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "39",
		"StartFifo" : "start_for_max_pooling_layer_U0_U",
		"InputProcess" : [
			{"ID" : "185", "Name" : "max_pooling_U0"},
			{"ID" : "188", "Name" : "max_pooling_8_U0"},
			{"ID" : "191", "Name" : "max_pooling_9_U0"},
			{"ID" : "194", "Name" : "max_pooling_10_U0"},
			{"ID" : "197", "Name" : "max_pooling_11_U0"},
			{"ID" : "200", "Name" : "max_pooling_12_U0"},
			{"ID" : "203", "Name" : "max_pooling_13_U0"},
			{"ID" : "206", "Name" : "max_pooling_14_U0"}],
		"OutputProcess" : [
			{"ID" : "185", "Name" : "max_pooling_U0"},
			{"ID" : "188", "Name" : "max_pooling_8_U0"},
			{"ID" : "191", "Name" : "max_pooling_9_U0"},
			{"ID" : "194", "Name" : "max_pooling_10_U0"},
			{"ID" : "197", "Name" : "max_pooling_11_U0"},
			{"ID" : "200", "Name" : "max_pooling_12_U0"},
			{"ID" : "203", "Name" : "max_pooling_13_U0"},
			{"ID" : "206", "Name" : "max_pooling_14_U0"}],
		"Port" : [
			{"Name" : "conv_to_pool_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","40"], "DependentChan" : "397", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "max_pooling_U0", "Port" : "conv_to_pool_streams_0"}]},
			{"Name" : "conv_to_pool_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","58"], "DependentChan" : "398", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "max_pooling_8_U0", "Port" : "conv_to_pool_streams_1"}]},
			{"Name" : "conv_to_pool_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","76"], "DependentChan" : "399", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "max_pooling_9_U0", "Port" : "conv_to_pool_streams_2"}]},
			{"Name" : "conv_to_pool_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","94"], "DependentChan" : "400", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "max_pooling_10_U0", "Port" : "conv_to_pool_streams_3"}]},
			{"Name" : "conv_to_pool_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","112"], "DependentChan" : "401", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "max_pooling_11_U0", "Port" : "conv_to_pool_streams_4"}]},
			{"Name" : "conv_to_pool_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","130"], "DependentChan" : "402", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "max_pooling_12_U0", "Port" : "conv_to_pool_streams_5"}]},
			{"Name" : "conv_to_pool_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","148"], "DependentChan" : "403", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "max_pooling_13_U0", "Port" : "conv_to_pool_streams_6"}]},
			{"Name" : "conv_to_pool_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","166"], "DependentChan" : "404", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "max_pooling_14_U0", "Port" : "conv_to_pool_streams_7"}]},
			{"Name" : "pool_to_flat_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","210"], "DependentChan" : "405", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "max_pooling_U0", "Port" : "pool_to_flat_streams_0"}]},
			{"Name" : "pool_to_flat_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","212"], "DependentChan" : "406", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "max_pooling_8_U0", "Port" : "pool_to_flat_streams_1"}]},
			{"Name" : "pool_to_flat_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","214"], "DependentChan" : "407", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "max_pooling_9_U0", "Port" : "pool_to_flat_streams_2"}]},
			{"Name" : "pool_to_flat_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","216"], "DependentChan" : "408", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "max_pooling_10_U0", "Port" : "pool_to_flat_streams_3"}]},
			{"Name" : "pool_to_flat_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","218"], "DependentChan" : "409", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "max_pooling_11_U0", "Port" : "pool_to_flat_streams_4"}]},
			{"Name" : "pool_to_flat_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","220"], "DependentChan" : "410", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "max_pooling_12_U0", "Port" : "pool_to_flat_streams_5"}]},
			{"Name" : "pool_to_flat_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","222"], "DependentChan" : "411", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "max_pooling_13_U0", "Port" : "pool_to_flat_streams_6"}]},
			{"Name" : "pool_to_flat_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","224"], "DependentChan" : "412", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "max_pooling_14_U0", "Port" : "pool_to_flat_streams_7"}]}]},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_U0", "Parent" : "184", "Child" : ["186", "187"],
		"CDFG" : "max_pooling",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "792", "EstimateLatencyMax" : "792",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv_to_pool_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","40"], "DependentChan" : "397", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","210"], "DependentChan" : "405", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U313", "Parent" : "185"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_U0.flow_control_loop_pipe_U", "Parent" : "185"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_8_U0", "Parent" : "184", "Child" : ["189", "190"],
		"CDFG" : "max_pooling_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "792", "EstimateLatencyMax" : "792",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv_to_pool_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","58"], "DependentChan" : "398", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","212"], "DependentChan" : "406", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_8_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U316", "Parent" : "188"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_8_U0.flow_control_loop_pipe_U", "Parent" : "188"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_9_U0", "Parent" : "184", "Child" : ["192", "193"],
		"CDFG" : "max_pooling_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "792", "EstimateLatencyMax" : "792",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv_to_pool_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","76"], "DependentChan" : "399", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","214"], "DependentChan" : "407", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_9_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U319", "Parent" : "191"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_9_U0.flow_control_loop_pipe_U", "Parent" : "191"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_10_U0", "Parent" : "184", "Child" : ["195", "196"],
		"CDFG" : "max_pooling_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "792", "EstimateLatencyMax" : "792",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv_to_pool_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","94"], "DependentChan" : "400", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","216"], "DependentChan" : "408", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_10_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U322", "Parent" : "194"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_10_U0.flow_control_loop_pipe_U", "Parent" : "194"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_11_U0", "Parent" : "184", "Child" : ["198", "199"],
		"CDFG" : "max_pooling_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "792", "EstimateLatencyMax" : "792",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv_to_pool_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","112"], "DependentChan" : "401", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","218"], "DependentChan" : "409", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_11_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U325", "Parent" : "197"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_11_U0.flow_control_loop_pipe_U", "Parent" : "197"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_12_U0", "Parent" : "184", "Child" : ["201", "202"],
		"CDFG" : "max_pooling_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "792", "EstimateLatencyMax" : "792",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv_to_pool_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","130"], "DependentChan" : "402", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","220"], "DependentChan" : "410", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_12_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U328", "Parent" : "200"},
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_12_U0.flow_control_loop_pipe_U", "Parent" : "200"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_13_U0", "Parent" : "184", "Child" : ["204", "205"],
		"CDFG" : "max_pooling_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "792", "EstimateLatencyMax" : "792",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv_to_pool_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","148"], "DependentChan" : "403", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","222"], "DependentChan" : "411", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_6_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_13_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U331", "Parent" : "203"},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_13_U0.flow_control_loop_pipe_U", "Parent" : "203"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_14_U0", "Parent" : "184", "Child" : ["207", "208"],
		"CDFG" : "max_pooling_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "792", "EstimateLatencyMax" : "792",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv_to_pool_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","166"], "DependentChan" : "404", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["209","224"], "DependentChan" : "412", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "207", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_14_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U334", "Parent" : "206"},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_14_U0.flow_control_loop_pipe_U", "Parent" : "206"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0", "Parent" : "38", "Child" : ["210", "212", "214", "216", "218", "220", "222", "224"],
		"CDFG" : "flattening_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "198", "EstimateLatencyMax" : "198",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "184",
		"StartFifo" : "start_for_flattening_layer_U0_U",
		"InputProcess" : [
			{"ID" : "210", "Name" : "flattening_U0"},
			{"ID" : "212", "Name" : "flattening_15_U0"},
			{"ID" : "214", "Name" : "flattening_16_U0"},
			{"ID" : "216", "Name" : "flattening_17_U0"},
			{"ID" : "218", "Name" : "flattening_18_U0"},
			{"ID" : "220", "Name" : "flattening_19_U0"},
			{"ID" : "222", "Name" : "flattening_20_U0"},
			{"ID" : "224", "Name" : "flattening_21_U0"}],
		"OutputProcess" : [
			{"ID" : "210", "Name" : "flattening_U0"},
			{"ID" : "212", "Name" : "flattening_15_U0"},
			{"ID" : "214", "Name" : "flattening_16_U0"},
			{"ID" : "216", "Name" : "flattening_17_U0"},
			{"ID" : "218", "Name" : "flattening_18_U0"},
			{"ID" : "220", "Name" : "flattening_19_U0"},
			{"ID" : "222", "Name" : "flattening_20_U0"},
			{"ID" : "224", "Name" : "flattening_21_U0"}],
		"Port" : [
			{"Name" : "pool_to_flat_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","185"], "DependentChan" : "405", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "210", "SubInstance" : "flattening_U0", "Port" : "pool_to_flat_streams_0"}]},
			{"Name" : "pool_to_flat_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","188"], "DependentChan" : "406", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "212", "SubInstance" : "flattening_15_U0", "Port" : "pool_to_flat_streams_1"}]},
			{"Name" : "pool_to_flat_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","191"], "DependentChan" : "407", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "214", "SubInstance" : "flattening_16_U0", "Port" : "pool_to_flat_streams_2"}]},
			{"Name" : "pool_to_flat_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","194"], "DependentChan" : "408", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "216", "SubInstance" : "flattening_17_U0", "Port" : "pool_to_flat_streams_3"}]},
			{"Name" : "pool_to_flat_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","197"], "DependentChan" : "409", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "flattening_18_U0", "Port" : "pool_to_flat_streams_4"}]},
			{"Name" : "pool_to_flat_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","200"], "DependentChan" : "410", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "220", "SubInstance" : "flattening_19_U0", "Port" : "pool_to_flat_streams_5"}]},
			{"Name" : "pool_to_flat_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","203"], "DependentChan" : "411", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "flattening_20_U0", "Port" : "pool_to_flat_streams_6"}]},
			{"Name" : "pool_to_flat_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","206"], "DependentChan" : "412", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "224", "SubInstance" : "flattening_21_U0", "Port" : "pool_to_flat_streams_7"}]},
			{"Name" : "flat_to_dense_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","227"], "DependentChan" : "413", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "210", "SubInstance" : "flattening_U0", "Port" : "flat_to_dense_streams_0"}]},
			{"Name" : "flat_to_dense_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","247"], "DependentChan" : "414", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "212", "SubInstance" : "flattening_15_U0", "Port" : "flat_to_dense_streams_1"}]},
			{"Name" : "flat_to_dense_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","267"], "DependentChan" : "415", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "214", "SubInstance" : "flattening_16_U0", "Port" : "flat_to_dense_streams_2"}]},
			{"Name" : "flat_to_dense_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","287"], "DependentChan" : "416", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "216", "SubInstance" : "flattening_17_U0", "Port" : "flat_to_dense_streams_3"}]},
			{"Name" : "flat_to_dense_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","307"], "DependentChan" : "417", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "flattening_18_U0", "Port" : "flat_to_dense_streams_4"}]},
			{"Name" : "flat_to_dense_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","327"], "DependentChan" : "418", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "220", "SubInstance" : "flattening_19_U0", "Port" : "flat_to_dense_streams_5"}]},
			{"Name" : "flat_to_dense_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","347"], "DependentChan" : "419", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "flattening_20_U0", "Port" : "flat_to_dense_streams_6"}]},
			{"Name" : "flat_to_dense_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","367"], "DependentChan" : "420", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "224", "SubInstance" : "flattening_21_U0", "Port" : "flat_to_dense_streams_7"}]}]},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_U0", "Parent" : "209", "Child" : ["211"],
		"CDFG" : "flattening",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "198", "EstimateLatencyMax" : "198",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pool_to_flat_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","185"], "DependentChan" : "405", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","227"], "DependentChan" : "413", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_U0.flow_control_loop_pipe_U", "Parent" : "210"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_15_U0", "Parent" : "209", "Child" : ["213"],
		"CDFG" : "flattening_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "198", "EstimateLatencyMax" : "198",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pool_to_flat_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","188"], "DependentChan" : "406", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","247"], "DependentChan" : "414", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "213", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_15_U0.flow_control_loop_pipe_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_16_U0", "Parent" : "209", "Child" : ["215"],
		"CDFG" : "flattening_16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "198", "EstimateLatencyMax" : "198",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pool_to_flat_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","191"], "DependentChan" : "407", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","267"], "DependentChan" : "415", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_16_U0.flow_control_loop_pipe_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_17_U0", "Parent" : "209", "Child" : ["217"],
		"CDFG" : "flattening_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "198", "EstimateLatencyMax" : "198",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pool_to_flat_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","194"], "DependentChan" : "408", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","287"], "DependentChan" : "416", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_17_U0.flow_control_loop_pipe_U", "Parent" : "216"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_18_U0", "Parent" : "209", "Child" : ["219"],
		"CDFG" : "flattening_18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "198", "EstimateLatencyMax" : "198",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pool_to_flat_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","197"], "DependentChan" : "409", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","307"], "DependentChan" : "417", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_18_U0.flow_control_loop_pipe_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_19_U0", "Parent" : "209", "Child" : ["221"],
		"CDFG" : "flattening_19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "198", "EstimateLatencyMax" : "198",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pool_to_flat_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","200"], "DependentChan" : "410", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","327"], "DependentChan" : "418", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_19_U0.flow_control_loop_pipe_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_20_U0", "Parent" : "209", "Child" : ["223"],
		"CDFG" : "flattening_20",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "198", "EstimateLatencyMax" : "198",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pool_to_flat_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","203"], "DependentChan" : "411", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","347"], "DependentChan" : "419", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_6_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_20_U0.flow_control_loop_pipe_U", "Parent" : "222"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_21_U0", "Parent" : "209", "Child" : ["225"],
		"CDFG" : "flattening_21",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "198", "EstimateLatencyMax" : "198",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pool_to_flat_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["184","206"], "DependentChan" : "412", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["226","367"], "DependentChan" : "420", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_21_U0.flow_control_loop_pipe_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0", "Parent" : "38", "Child" : ["227", "247", "267", "287", "307", "327", "347", "367"],
		"CDFG" : "dense_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2013", "EstimateLatencyMax" : "2013",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "209",
		"StartFifo" : "start_for_dense_layer_U0_U",
		"InputProcess" : [
			{"ID" : "227", "Name" : "dense_U0"},
			{"ID" : "247", "Name" : "dense_22_U0"},
			{"ID" : "267", "Name" : "dense_23_U0"},
			{"ID" : "287", "Name" : "dense_24_U0"},
			{"ID" : "307", "Name" : "dense_25_U0"},
			{"ID" : "327", "Name" : "dense_26_U0"},
			{"ID" : "347", "Name" : "dense_27_U0"},
			{"ID" : "367", "Name" : "dense_28_U0"}],
		"OutputProcess" : [
			{"ID" : "227", "Name" : "dense_U0"},
			{"ID" : "247", "Name" : "dense_22_U0"},
			{"ID" : "267", "Name" : "dense_23_U0"},
			{"ID" : "287", "Name" : "dense_24_U0"},
			{"ID" : "307", "Name" : "dense_25_U0"},
			{"ID" : "327", "Name" : "dense_26_U0"},
			{"ID" : "347", "Name" : "dense_27_U0"},
			{"ID" : "367", "Name" : "dense_28_U0"}],
		"Port" : [
			{"Name" : "flat_to_dense_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","210"], "DependentChan" : "413", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_U0", "Port" : "flat_to_dense_streams_0"}]},
			{"Name" : "flat_to_dense_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","212"], "DependentChan" : "414", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_22_U0", "Port" : "flat_to_dense_streams_1"}]},
			{"Name" : "flat_to_dense_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","214"], "DependentChan" : "415", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_23_U0", "Port" : "flat_to_dense_streams_2"}]},
			{"Name" : "flat_to_dense_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","216"], "DependentChan" : "416", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_24_U0", "Port" : "flat_to_dense_streams_3"}]},
			{"Name" : "flat_to_dense_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","218"], "DependentChan" : "417", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "dense_25_U0", "Port" : "flat_to_dense_streams_4"}]},
			{"Name" : "flat_to_dense_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","220"], "DependentChan" : "418", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "dense_26_U0", "Port" : "flat_to_dense_streams_5"}]},
			{"Name" : "flat_to_dense_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","222"], "DependentChan" : "419", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "dense_27_U0", "Port" : "flat_to_dense_streams_6"}]},
			{"Name" : "flat_to_dense_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","224"], "DependentChan" : "420", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "dense_28_U0", "Port" : "flat_to_dense_streams_7"}]},
			{"Name" : "dense_to_softmax_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "421", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_U0", "Port" : "dense_to_softmax_streams_0"}]},
			{"Name" : "dense_to_softmax_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "422", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_22_U0", "Port" : "dense_to_softmax_streams_1"}]},
			{"Name" : "dense_to_softmax_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "423", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_23_U0", "Port" : "dense_to_softmax_streams_2"}]},
			{"Name" : "dense_to_softmax_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "424", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_24_U0", "Port" : "dense_to_softmax_streams_3"}]},
			{"Name" : "dense_to_softmax_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "425", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "dense_25_U0", "Port" : "dense_to_softmax_streams_4"}]},
			{"Name" : "dense_to_softmax_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "426", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "dense_26_U0", "Port" : "dense_to_softmax_streams_5"}]},
			{"Name" : "dense_to_softmax_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "427", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "dense_27_U0", "Port" : "dense_to_softmax_streams_6"}]},
			{"Name" : "dense_to_softmax_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "428", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "dense_28_U0", "Port" : "dense_to_softmax_streams_7"}]},
			{"Name" : "dense_weights_72", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_U0", "Port" : "dense_weights_72"}]},
			{"Name" : "dense_weights_65", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_U0", "Port" : "dense_weights_65"}]},
			{"Name" : "dense_weights_58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_U0", "Port" : "dense_weights_58"}]},
			{"Name" : "dense_weights_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_U0", "Port" : "dense_weights_51"}]},
			{"Name" : "dense_weights_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_U0", "Port" : "dense_weights_44"}]},
			{"Name" : "dense_weights_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_U0", "Port" : "dense_weights_37"}]},
			{"Name" : "dense_weights_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_U0", "Port" : "dense_weights_30"}]},
			{"Name" : "dense_weights_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_U0", "Port" : "dense_weights_23"}]},
			{"Name" : "dense_weights_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_U0", "Port" : "dense_weights_16"}]},
			{"Name" : "dense_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_U0", "Port" : "dense_weights"}]},
			{"Name" : "dense_weights_73", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_73"}]},
			{"Name" : "dense_weights_66", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_66"}]},
			{"Name" : "dense_weights_59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_59"}]},
			{"Name" : "dense_weights_52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_52"}]},
			{"Name" : "dense_weights_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_45"}]},
			{"Name" : "dense_weights_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_38"}]},
			{"Name" : "dense_weights_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_31"}]},
			{"Name" : "dense_weights_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_24"}]},
			{"Name" : "dense_weights_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_17"}]},
			{"Name" : "dense_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_10"}]},
			{"Name" : "dense_weights_74", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_74"}]},
			{"Name" : "dense_weights_67", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_67"}]},
			{"Name" : "dense_weights_60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_60"}]},
			{"Name" : "dense_weights_53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_53"}]},
			{"Name" : "dense_weights_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_46"}]},
			{"Name" : "dense_weights_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_39"}]},
			{"Name" : "dense_weights_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_32"}]},
			{"Name" : "dense_weights_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_25"}]},
			{"Name" : "dense_weights_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_18"}]},
			{"Name" : "dense_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_11"}]},
			{"Name" : "dense_weights_75", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_75"}]},
			{"Name" : "dense_weights_68", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_68"}]},
			{"Name" : "dense_weights_61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_61"}]},
			{"Name" : "dense_weights_54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_54"}]},
			{"Name" : "dense_weights_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_47"}]},
			{"Name" : "dense_weights_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_40"}]},
			{"Name" : "dense_weights_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_33"}]},
			{"Name" : "dense_weights_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_26"}]},
			{"Name" : "dense_weights_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_19"}]},
			{"Name" : "dense_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_12"}]},
			{"Name" : "dense_weights_76", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_76"}]},
			{"Name" : "dense_weights_69", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_69"}]},
			{"Name" : "dense_weights_62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_62"}]},
			{"Name" : "dense_weights_55", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_55"}]},
			{"Name" : "dense_weights_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_48"}]},
			{"Name" : "dense_weights_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_41"}]},
			{"Name" : "dense_weights_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_34"}]},
			{"Name" : "dense_weights_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_27"}]},
			{"Name" : "dense_weights_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_20"}]},
			{"Name" : "dense_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_13"}]},
			{"Name" : "dense_weights_77", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_77"}]},
			{"Name" : "dense_weights_70", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_70"}]},
			{"Name" : "dense_weights_63", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_63"}]},
			{"Name" : "dense_weights_56", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_56"}]},
			{"Name" : "dense_weights_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_49"}]},
			{"Name" : "dense_weights_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_42"}]},
			{"Name" : "dense_weights_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_35"}]},
			{"Name" : "dense_weights_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_28"}]},
			{"Name" : "dense_weights_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_21"}]},
			{"Name" : "dense_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_14"}]},
			{"Name" : "dense_weights_78", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_78"}]},
			{"Name" : "dense_weights_71", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_71"}]},
			{"Name" : "dense_weights_64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_64"}]},
			{"Name" : "dense_weights_57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_57"}]},
			{"Name" : "dense_weights_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_50"}]},
			{"Name" : "dense_weights_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_43"}]},
			{"Name" : "dense_weights_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_36"}]},
			{"Name" : "dense_weights_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_29"}]},
			{"Name" : "dense_weights_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_22"}]},
			{"Name" : "dense_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_15"}]},
			{"Name" : "dense_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_0"}]},
			{"Name" : "dense_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_1"}]},
			{"Name" : "dense_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_2"}]},
			{"Name" : "dense_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_3"}]},
			{"Name" : "dense_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_4"}]},
			{"Name" : "dense_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_5"}]},
			{"Name" : "dense_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_6"}]},
			{"Name" : "dense_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_7"}]},
			{"Name" : "dense_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_8"}]},
			{"Name" : "dense_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_9"}]}]},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0", "Parent" : "226", "Child" : ["228", "229", "231", "245"],
		"CDFG" : "dense",
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
			{"Name" : "flat_to_dense_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","210"], "DependentChan" : "413", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_0", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "421", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "245", "SubInstance" : "grp_dense_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_72", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_72", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_65", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_65", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_58", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_51", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_44", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_37", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_30", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_23", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_16", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.dense_array_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_1_fu_195", "Parent" : "227", "Child" : ["230"],
		"CDFG" : "dense_Pipeline_1",
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
	{"ID" : "230", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201", "Parent" : "227", "Child" : ["232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244"],
		"CDFG" : "dense_Pipeline_dense_for_flat",
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
			{"Name" : "dense_array_load_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_78", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_77", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_76", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_75", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_73", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_71", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "flat_to_dense_streams_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_0_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "dense_weights_72", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_65", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "dense_for_flat", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_72_U", "Parent" : "231"},
	{"ID" : "233", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_65_U", "Parent" : "231"},
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_58_U", "Parent" : "231"},
	{"ID" : "235", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_51_U", "Parent" : "231"},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_44_U", "Parent" : "231"},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_37_U", "Parent" : "231"},
	{"ID" : "238", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_30_U", "Parent" : "231"},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_23_U", "Parent" : "231"},
	{"ID" : "240", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_16_U", "Parent" : "231"},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_U", "Parent" : "231"},
	{"ID" : "242", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U386", "Parent" : "231"},
	{"ID" : "243", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U387", "Parent" : "231"},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "231"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "227", "Child" : ["246"],
		"CDFG" : "dense_Pipeline_VITIS_LOOP_60_2",
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
			{"Name" : "dense_to_softmax_streams_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "246", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "245"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0", "Parent" : "226", "Child" : ["248", "249", "251", "265"],
		"CDFG" : "dense_22",
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
			{"Name" : "flat_to_dense_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","212"], "DependentChan" : "414", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_1", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "422", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "grp_dense_22_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_73", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_73", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_66", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_66", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_59", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_52", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_45", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_38", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_31", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_24", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_17", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_10", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.dense_array_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_1_fu_195", "Parent" : "247", "Child" : ["250"],
		"CDFG" : "dense_22_Pipeline_1",
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
	{"ID" : "250", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201", "Parent" : "247", "Child" : ["252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264"],
		"CDFG" : "dense_22_Pipeline_dense_for_flat",
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
			{"Name" : "dense_array_load_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "flat_to_dense_streams_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_1_blk_n", "Type" : "RtlSignal"}]},
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
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_73_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_66_U", "Parent" : "251"},
	{"ID" : "254", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_59_U", "Parent" : "251"},
	{"ID" : "255", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_52_U", "Parent" : "251"},
	{"ID" : "256", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_45_U", "Parent" : "251"},
	{"ID" : "257", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_38_U", "Parent" : "251"},
	{"ID" : "258", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_31_U", "Parent" : "251"},
	{"ID" : "259", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_24_U", "Parent" : "251"},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_17_U", "Parent" : "251"},
	{"ID" : "261", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_10_U", "Parent" : "251"},
	{"ID" : "262", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U425", "Parent" : "251"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U426", "Parent" : "251"},
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "251"},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "247", "Child" : ["266"],
		"CDFG" : "dense_22_Pipeline_VITIS_LOOP_60_2",
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
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0", "Parent" : "226", "Child" : ["268", "269", "271", "285"],
		"CDFG" : "dense_23",
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
			{"Name" : "flat_to_dense_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","214"], "DependentChan" : "415", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_2", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "423", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "285", "SubInstance" : "grp_dense_23_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_2", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_74", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_74", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_67", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_67", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_60", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_53", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_46", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_39", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_32", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_25", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_18", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_11", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.dense_array_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_1_fu_195", "Parent" : "267", "Child" : ["270"],
		"CDFG" : "dense_23_Pipeline_1",
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
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201", "Parent" : "267", "Child" : ["272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284"],
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
	{"ID" : "272", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_74_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_67_U", "Parent" : "271"},
	{"ID" : "274", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_60_U", "Parent" : "271"},
	{"ID" : "275", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_53_U", "Parent" : "271"},
	{"ID" : "276", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_46_U", "Parent" : "271"},
	{"ID" : "277", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_39_U", "Parent" : "271"},
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_32_U", "Parent" : "271"},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_25_U", "Parent" : "271"},
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_18_U", "Parent" : "271"},
	{"ID" : "281", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_11_U", "Parent" : "271"},
	{"ID" : "282", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U453", "Parent" : "271"},
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U454", "Parent" : "271"},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "271"},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "267", "Child" : ["286"],
		"CDFG" : "dense_23_Pipeline_VITIS_LOOP_60_2",
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
			{"Name" : "dense_to_softmax_streams_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "286", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0", "Parent" : "226", "Child" : ["288", "289", "291", "305"],
		"CDFG" : "dense_24",
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
			{"Name" : "flat_to_dense_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","216"], "DependentChan" : "416", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_3", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "424", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_dense_24_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_3", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_75", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_75", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_68", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_68", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_61", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_54", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_47", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_40", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_33", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_26", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_19", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_12", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.dense_array_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_1_fu_195", "Parent" : "287", "Child" : ["290"],
		"CDFG" : "dense_24_Pipeline_1",
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
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201", "Parent" : "287", "Child" : ["292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304"],
		"CDFG" : "dense_24_Pipeline_dense_for_flat",
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
			{"Name" : "dense_array_load_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "flat_to_dense_streams_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_3_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "dense_weights_75", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_68", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_12", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "dense_for_flat", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "292", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_75_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_68_U", "Parent" : "291"},
	{"ID" : "294", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_61_U", "Parent" : "291"},
	{"ID" : "295", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_54_U", "Parent" : "291"},
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_47_U", "Parent" : "291"},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_40_U", "Parent" : "291"},
	{"ID" : "298", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_33_U", "Parent" : "291"},
	{"ID" : "299", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_26_U", "Parent" : "291"},
	{"ID" : "300", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_19_U", "Parent" : "291"},
	{"ID" : "301", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_12_U", "Parent" : "291"},
	{"ID" : "302", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U481", "Parent" : "291"},
	{"ID" : "303", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U482", "Parent" : "291"},
	{"ID" : "304", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "291"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "287", "Child" : ["306"],
		"CDFG" : "dense_24_Pipeline_VITIS_LOOP_60_2",
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
			{"Name" : "dense_to_softmax_streams_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0", "Parent" : "226", "Child" : ["308", "309", "311", "325"],
		"CDFG" : "dense_25",
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
			{"Name" : "flat_to_dense_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","218"], "DependentChan" : "417", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "425", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "325", "SubInstance" : "grp_dense_25_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_4", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_76", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_76", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_69", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_69", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_62", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_55", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_55", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_48", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_41", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_34", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_27", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_20", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_13", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "308", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.dense_array_U", "Parent" : "307"},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_1_fu_195", "Parent" : "307", "Child" : ["310"],
		"CDFG" : "dense_25_Pipeline_1",
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
	{"ID" : "310", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "309"},
	{"ID" : "311", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201", "Parent" : "307", "Child" : ["312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324"],
		"CDFG" : "dense_25_Pipeline_dense_for_flat",
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
			{"Name" : "dense_array_load_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "flat_to_dense_streams_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_4_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "dense_weights_76", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_69", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_13", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "dense_for_flat", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "312", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_76_U", "Parent" : "311"},
	{"ID" : "313", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_69_U", "Parent" : "311"},
	{"ID" : "314", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_62_U", "Parent" : "311"},
	{"ID" : "315", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_55_U", "Parent" : "311"},
	{"ID" : "316", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_48_U", "Parent" : "311"},
	{"ID" : "317", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_41_U", "Parent" : "311"},
	{"ID" : "318", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_34_U", "Parent" : "311"},
	{"ID" : "319", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_27_U", "Parent" : "311"},
	{"ID" : "320", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_20_U", "Parent" : "311"},
	{"ID" : "321", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_13_U", "Parent" : "311"},
	{"ID" : "322", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U509", "Parent" : "311"},
	{"ID" : "323", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U510", "Parent" : "311"},
	{"ID" : "324", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "311"},
	{"ID" : "325", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "307", "Child" : ["326"],
		"CDFG" : "dense_25_Pipeline_VITIS_LOOP_60_2",
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
			{"Name" : "dense_to_softmax_streams_4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "326", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "325"},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0", "Parent" : "226", "Child" : ["328", "329", "331", "345"],
		"CDFG" : "dense_26",
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
			{"Name" : "flat_to_dense_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","220"], "DependentChan" : "418", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_5", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "426", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "345", "SubInstance" : "grp_dense_26_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_5", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_77", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_77", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_70", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_70", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_63", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_63", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_56", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_56", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_49", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_42", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_35", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_28", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_21", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_14", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.dense_array_U", "Parent" : "327"},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_1_fu_195", "Parent" : "327", "Child" : ["330"],
		"CDFG" : "dense_26_Pipeline_1",
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
	{"ID" : "330", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "329"},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201", "Parent" : "327", "Child" : ["332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344"],
		"CDFG" : "dense_26_Pipeline_dense_for_flat",
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
			{"Name" : "dense_array_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "flat_to_dense_streams_5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_5_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "dense_weights_77", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_70", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_14", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "dense_for_flat", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "332", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_77_U", "Parent" : "331"},
	{"ID" : "333", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_70_U", "Parent" : "331"},
	{"ID" : "334", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_63_U", "Parent" : "331"},
	{"ID" : "335", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_56_U", "Parent" : "331"},
	{"ID" : "336", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_49_U", "Parent" : "331"},
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_42_U", "Parent" : "331"},
	{"ID" : "338", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_35_U", "Parent" : "331"},
	{"ID" : "339", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_28_U", "Parent" : "331"},
	{"ID" : "340", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_21_U", "Parent" : "331"},
	{"ID" : "341", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_14_U", "Parent" : "331"},
	{"ID" : "342", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U537", "Parent" : "331"},
	{"ID" : "343", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U538", "Parent" : "331"},
	{"ID" : "344", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "331"},
	{"ID" : "345", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "327", "Child" : ["346"],
		"CDFG" : "dense_26_Pipeline_VITIS_LOOP_60_2",
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
			{"Name" : "dense_to_softmax_streams_5", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "346", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "345"},
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0", "Parent" : "226", "Child" : ["348", "349", "351", "365"],
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
			{"Name" : "flat_to_dense_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","222"], "DependentChan" : "419", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "427", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "365", "SubInstance" : "grp_dense_27_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_6", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_78", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_78", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_71", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_71", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_64", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_57", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_50", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_43", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_36", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_29", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_22", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_15", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.dense_array_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_1_fu_195", "Parent" : "347", "Child" : ["350"],
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
	{"ID" : "350", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "349"},
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201", "Parent" : "347", "Child" : ["352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364"],
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
	{"ID" : "352", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_78_U", "Parent" : "351"},
	{"ID" : "353", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_71_U", "Parent" : "351"},
	{"ID" : "354", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_64_U", "Parent" : "351"},
	{"ID" : "355", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_57_U", "Parent" : "351"},
	{"ID" : "356", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_50_U", "Parent" : "351"},
	{"ID" : "357", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_43_U", "Parent" : "351"},
	{"ID" : "358", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_36_U", "Parent" : "351"},
	{"ID" : "359", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_29_U", "Parent" : "351"},
	{"ID" : "360", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_22_U", "Parent" : "351"},
	{"ID" : "361", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_15_U", "Parent" : "351"},
	{"ID" : "362", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U565", "Parent" : "351"},
	{"ID" : "363", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U566", "Parent" : "351"},
	{"ID" : "364", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "351"},
	{"ID" : "365", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "347", "Child" : ["366"],
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
	{"ID" : "366", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "365"},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0", "Parent" : "226", "Child" : ["368", "369", "371", "385"],
		"CDFG" : "dense_28",
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
			{"Name" : "flat_to_dense_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["209","224"], "DependentChan" : "420", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_7", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["387"], "DependentChan" : "428", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "385", "SubInstance" : "grp_dense_28_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_7", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_0", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_1", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_2", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_3", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_5", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_7", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_8", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_9", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "368", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.dense_array_U", "Parent" : "367"},
	{"ID" : "369", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_1_fu_195", "Parent" : "367", "Child" : ["370"],
		"CDFG" : "dense_28_Pipeline_1",
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
	{"ID" : "370", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "369"},
	{"ID" : "371", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201", "Parent" : "367", "Child" : ["372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384"],
		"CDFG" : "dense_28_Pipeline_dense_for_flat",
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
			{"Name" : "dense_array_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_array_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "flat_to_dense_streams_7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_7_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "dense_weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_9", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "dense_for_flat", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "372", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_0_U", "Parent" : "371"},
	{"ID" : "373", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_1_U", "Parent" : "371"},
	{"ID" : "374", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_2_U", "Parent" : "371"},
	{"ID" : "375", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_3_U", "Parent" : "371"},
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_4_U", "Parent" : "371"},
	{"ID" : "377", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_5_U", "Parent" : "371"},
	{"ID" : "378", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_6_U", "Parent" : "371"},
	{"ID" : "379", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_7_U", "Parent" : "371"},
	{"ID" : "380", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_8_U", "Parent" : "371"},
	{"ID" : "381", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_9_U", "Parent" : "371"},
	{"ID" : "382", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U593", "Parent" : "371"},
	{"ID" : "383", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U594", "Parent" : "371"},
	{"ID" : "384", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "371"},
	{"ID" : "385", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "367", "Child" : ["386"],
		"CDFG" : "dense_28_Pipeline_VITIS_LOOP_60_2",
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
			{"Name" : "dense_to_softmax_streams_7", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "386", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "385"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0", "Parent" : "38", "Child" : ["388", "394"],
		"CDFG" : "dense_layer_soft_max",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "175", "EstimateLatencyMax" : "175",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dense_to_softmax_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["226","227"], "DependentChan" : "421", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "388", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_to_softmax_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["226","247"], "DependentChan" : "422", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "388", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_to_softmax_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["226","267"], "DependentChan" : "423", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "388", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_to_softmax_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["226","287"], "DependentChan" : "424", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "388", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_to_softmax_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["226","307"], "DependentChan" : "425", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "388", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_to_softmax_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["226","327"], "DependentChan" : "426", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "388", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_to_softmax_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["226","347"], "DependentChan" : "427", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "388", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_to_softmax_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["226","367"], "DependentChan" : "428", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "388", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "prediction", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "394", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_digits_fu_69", "Port" : "prediction", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "388", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "prediction", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_biases", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "388", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_biases", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Parent" : "387", "Child" : ["389", "390", "391", "392", "393"],
		"CDFG" : "dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "143", "EstimateLatencyMax" : "143",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dense_to_softmax_streams_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dense_to_softmax_streams_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dense_to_softmax_streams_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dense_to_softmax_streams_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dense_to_softmax_streams_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dense_to_softmax_streams_5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dense_to_softmax_streams_6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dense_to_softmax_streams_7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dense_to_softmax_streams_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "prediction", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "exp_sum_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dense_biases", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "dense_soft_max_for_dense_size", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "389", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44.dense_biases_U", "Parent" : "388"},
	{"ID" : "390", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44.fadd_32ns_32ns_32_7_full_dsp_1_U636", "Parent" : "388"},
	{"ID" : "391", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44.fadd_32ns_32ns_32_7_full_dsp_1_U637", "Parent" : "388"},
	{"ID" : "392", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44.fexp_32ns_32ns_32_10_full_dsp_1_U638", "Parent" : "388"},
	{"ID" : "393", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "388"},
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_digits_fu_69", "Parent" : "387", "Child" : ["395", "396"],
		"CDFG" : "dense_layer_soft_max_Pipeline_dense_soft_max_for_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "prediction", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "exp_sum_reload", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "dense_soft_max_for_digits", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "395", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_digits_fu_69.fdiv_32ns_32ns_32_16_no_dsp_1_U651", "Parent" : "394"},
	{"ID" : "396", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_digits_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "394"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_0_U", "Parent" : "38"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_1_U", "Parent" : "38"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_2_U", "Parent" : "38"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_3_U", "Parent" : "38"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_4_U", "Parent" : "38"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_5_U", "Parent" : "38"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_6_U", "Parent" : "38"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_7_U", "Parent" : "38"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_0_U", "Parent" : "38"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_1_U", "Parent" : "38"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_2_U", "Parent" : "38"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_3_U", "Parent" : "38"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_4_U", "Parent" : "38"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_5_U", "Parent" : "38"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_6_U", "Parent" : "38"},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_7_U", "Parent" : "38"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_0_U", "Parent" : "38"},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_1_U", "Parent" : "38"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_2_U", "Parent" : "38"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_3_U", "Parent" : "38"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_4_U", "Parent" : "38"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_5_U", "Parent" : "38"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_6_U", "Parent" : "38"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_7_U", "Parent" : "38"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_0_U", "Parent" : "38"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_1_U", "Parent" : "38"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_2_U", "Parent" : "38"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_3_U", "Parent" : "38"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_4_U", "Parent" : "38"},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_5_U", "Parent" : "38"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_6_U", "Parent" : "38"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_7_U", "Parent" : "38"},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.start_for_max_pooling_layer_U0_U", "Parent" : "38"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.start_for_flattening_layer_U0_U", "Parent" : "38"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.start_for_dense_layer_U0_U", "Parent" : "38"}]}


set ArgLastReadFirstWriteLatency {
	cnn {
		img_in {Type I LastRead 1 FirstWrite -1}
		prediction {Type IO LastRead 0 FirstWrite 18}
		weight_buf {Type I LastRead 1 FirstWrite -1}
		biases_buf {Type I LastRead 15 FirstWrite -1}
		dense_weights_72 {Type I LastRead -1 FirstWrite -1}
		dense_weights_65 {Type I LastRead -1 FirstWrite -1}
		dense_weights_58 {Type I LastRead -1 FirstWrite -1}
		dense_weights_51 {Type I LastRead -1 FirstWrite -1}
		dense_weights_44 {Type I LastRead -1 FirstWrite -1}
		dense_weights_37 {Type I LastRead -1 FirstWrite -1}
		dense_weights_30 {Type I LastRead -1 FirstWrite -1}
		dense_weights_23 {Type I LastRead -1 FirstWrite -1}
		dense_weights_16 {Type I LastRead -1 FirstWrite -1}
		dense_weights {Type I LastRead -1 FirstWrite -1}
		dense_weights_73 {Type I LastRead -1 FirstWrite -1}
		dense_weights_66 {Type I LastRead -1 FirstWrite -1}
		dense_weights_59 {Type I LastRead -1 FirstWrite -1}
		dense_weights_52 {Type I LastRead -1 FirstWrite -1}
		dense_weights_45 {Type I LastRead -1 FirstWrite -1}
		dense_weights_38 {Type I LastRead -1 FirstWrite -1}
		dense_weights_31 {Type I LastRead -1 FirstWrite -1}
		dense_weights_24 {Type I LastRead -1 FirstWrite -1}
		dense_weights_17 {Type I LastRead -1 FirstWrite -1}
		dense_weights_10 {Type I LastRead -1 FirstWrite -1}
		dense_weights_74 {Type I LastRead -1 FirstWrite -1}
		dense_weights_67 {Type I LastRead -1 FirstWrite -1}
		dense_weights_60 {Type I LastRead -1 FirstWrite -1}
		dense_weights_53 {Type I LastRead -1 FirstWrite -1}
		dense_weights_46 {Type I LastRead -1 FirstWrite -1}
		dense_weights_39 {Type I LastRead -1 FirstWrite -1}
		dense_weights_32 {Type I LastRead -1 FirstWrite -1}
		dense_weights_25 {Type I LastRead -1 FirstWrite -1}
		dense_weights_18 {Type I LastRead -1 FirstWrite -1}
		dense_weights_11 {Type I LastRead -1 FirstWrite -1}
		dense_weights_75 {Type I LastRead -1 FirstWrite -1}
		dense_weights_68 {Type I LastRead -1 FirstWrite -1}
		dense_weights_61 {Type I LastRead -1 FirstWrite -1}
		dense_weights_54 {Type I LastRead -1 FirstWrite -1}
		dense_weights_47 {Type I LastRead -1 FirstWrite -1}
		dense_weights_40 {Type I LastRead -1 FirstWrite -1}
		dense_weights_33 {Type I LastRead -1 FirstWrite -1}
		dense_weights_26 {Type I LastRead -1 FirstWrite -1}
		dense_weights_19 {Type I LastRead -1 FirstWrite -1}
		dense_weights_12 {Type I LastRead -1 FirstWrite -1}
		dense_weights_76 {Type I LastRead -1 FirstWrite -1}
		dense_weights_69 {Type I LastRead -1 FirstWrite -1}
		dense_weights_62 {Type I LastRead -1 FirstWrite -1}
		dense_weights_55 {Type I LastRead -1 FirstWrite -1}
		dense_weights_48 {Type I LastRead -1 FirstWrite -1}
		dense_weights_41 {Type I LastRead -1 FirstWrite -1}
		dense_weights_34 {Type I LastRead -1 FirstWrite -1}
		dense_weights_27 {Type I LastRead -1 FirstWrite -1}
		dense_weights_20 {Type I LastRead -1 FirstWrite -1}
		dense_weights_13 {Type I LastRead -1 FirstWrite -1}
		dense_weights_77 {Type I LastRead -1 FirstWrite -1}
		dense_weights_70 {Type I LastRead -1 FirstWrite -1}
		dense_weights_63 {Type I LastRead -1 FirstWrite -1}
		dense_weights_56 {Type I LastRead -1 FirstWrite -1}
		dense_weights_49 {Type I LastRead -1 FirstWrite -1}
		dense_weights_42 {Type I LastRead -1 FirstWrite -1}
		dense_weights_35 {Type I LastRead -1 FirstWrite -1}
		dense_weights_28 {Type I LastRead -1 FirstWrite -1}
		dense_weights_21 {Type I LastRead -1 FirstWrite -1}
		dense_weights_14 {Type I LastRead -1 FirstWrite -1}
		dense_weights_78 {Type I LastRead -1 FirstWrite -1}
		dense_weights_71 {Type I LastRead -1 FirstWrite -1}
		dense_weights_64 {Type I LastRead -1 FirstWrite -1}
		dense_weights_57 {Type I LastRead -1 FirstWrite -1}
		dense_weights_50 {Type I LastRead -1 FirstWrite -1}
		dense_weights_43 {Type I LastRead -1 FirstWrite -1}
		dense_weights_36 {Type I LastRead -1 FirstWrite -1}
		dense_weights_29 {Type I LastRead -1 FirstWrite -1}
		dense_weights_22 {Type I LastRead -1 FirstWrite -1}
		dense_weights_15 {Type I LastRead -1 FirstWrite -1}
		dense_weights_0 {Type I LastRead -1 FirstWrite -1}
		dense_weights_1 {Type I LastRead -1 FirstWrite -1}
		dense_weights_2 {Type I LastRead -1 FirstWrite -1}
		dense_weights_3 {Type I LastRead -1 FirstWrite -1}
		dense_weights_4 {Type I LastRead -1 FirstWrite -1}
		dense_weights_5 {Type I LastRead -1 FirstWrite -1}
		dense_weights_6 {Type I LastRead -1 FirstWrite -1}
		dense_weights_7 {Type I LastRead -1 FirstWrite -1}
		dense_weights_8 {Type I LastRead -1 FirstWrite -1}
		dense_weights_9 {Type I LastRead -1 FirstWrite -1}
		dense_biases {Type I LastRead -1 FirstWrite -1}}
	cnn_Pipeline_pad_for_rows_pad_for_cols {
		pad_img {Type O LastRead -1 FirstWrite 19}
		img_in {Type I LastRead 1 FirstWrite -1}}
	cnn_Pipeline_3 {
		weight_buf_0 {Type O LastRead -1 FirstWrite 1}
		weight_buf {Type I LastRead 0 FirstWrite -1}}
	cnn_Pipeline_clone_for_rows_clone_for_cols {
		pad_img {Type I LastRead 1 FirstWrite -1}
		pad_img1 {Type O LastRead -1 FirstWrite 2}
		pad_img2 {Type O LastRead -1 FirstWrite 2}
		pad_img3 {Type O LastRead -1 FirstWrite 2}
		pad_img4 {Type O LastRead -1 FirstWrite 2}
		pad_img5 {Type O LastRead -1 FirstWrite 2}
		pad_img6 {Type O LastRead -1 FirstWrite 2}
		pad_img7 {Type O LastRead -1 FirstWrite 2}}
	cnn_Pipeline_4 {
		weight_buf_1 {Type O LastRead -1 FirstWrite 2}
		weight_buf {Type I LastRead 1 FirstWrite -1}}
	cnn_Pipeline_5 {
		weight_buf_2 {Type O LastRead -1 FirstWrite 2}
		weight_buf {Type I LastRead 1 FirstWrite -1}}
	cnn_Pipeline_6 {
		weight_buf_3 {Type O LastRead -1 FirstWrite 1}
		weight_buf {Type I LastRead 0 FirstWrite -1}}
	cnn_Pipeline_7 {
		weight_buf_4 {Type O LastRead -1 FirstWrite 2}
		weight_buf {Type I LastRead 1 FirstWrite -1}}
	cnn_Pipeline_8 {
		weight_buf_5 {Type O LastRead -1 FirstWrite 2}
		weight_buf {Type I LastRead 1 FirstWrite -1}}
	cnn_Pipeline_9 {
		weight_buf_6 {Type O LastRead -1 FirstWrite 2}
		weight_buf {Type I LastRead 1 FirstWrite -1}}
	cnn_Pipeline_10 {
		weight_buf_7 {Type O LastRead -1 FirstWrite 2}
		weight_buf {Type I LastRead 1 FirstWrite -1}}
	dataflow_section {
		pad_img {Type I LastRead 7 FirstWrite -1}
		pad_img1 {Type I LastRead 7 FirstWrite -1}
		pad_img2 {Type I LastRead 7 FirstWrite -1}
		pad_img3 {Type I LastRead 7 FirstWrite -1}
		pad_img4 {Type I LastRead 7 FirstWrite -1}
		pad_img5 {Type I LastRead 7 FirstWrite -1}
		pad_img6 {Type I LastRead 7 FirstWrite -1}
		pad_img7 {Type I LastRead 7 FirstWrite -1}
		weight_buf_0 {Type I LastRead 5 FirstWrite -1}
		weight_buf_1 {Type I LastRead 5 FirstWrite -1}
		weight_buf_2 {Type I LastRead 5 FirstWrite -1}
		weight_buf_3 {Type I LastRead 5 FirstWrite -1}
		weight_buf_4 {Type I LastRead 5 FirstWrite -1}
		weight_buf_5 {Type I LastRead 5 FirstWrite -1}
		weight_buf_6 {Type I LastRead 5 FirstWrite -1}
		weight_buf_7 {Type I LastRead 5 FirstWrite -1}
		biases_buf_0 {Type I LastRead 0 FirstWrite -1}
		biases_buf_1 {Type I LastRead 0 FirstWrite -1}
		biases_buf_2 {Type I LastRead 0 FirstWrite -1}
		biases_buf_3 {Type I LastRead 0 FirstWrite -1}
		biases_buf_4 {Type I LastRead 0 FirstWrite -1}
		biases_buf_5 {Type I LastRead 0 FirstWrite -1}
		biases_buf_6 {Type I LastRead 0 FirstWrite -1}
		biases_buf_7 {Type I LastRead 0 FirstWrite -1}
		prediction {Type IO LastRead 0 FirstWrite 18}
		dense_weights_72 {Type I LastRead -1 FirstWrite -1}
		dense_weights_65 {Type I LastRead -1 FirstWrite -1}
		dense_weights_58 {Type I LastRead -1 FirstWrite -1}
		dense_weights_51 {Type I LastRead -1 FirstWrite -1}
		dense_weights_44 {Type I LastRead -1 FirstWrite -1}
		dense_weights_37 {Type I LastRead -1 FirstWrite -1}
		dense_weights_30 {Type I LastRead -1 FirstWrite -1}
		dense_weights_23 {Type I LastRead -1 FirstWrite -1}
		dense_weights_16 {Type I LastRead -1 FirstWrite -1}
		dense_weights {Type I LastRead -1 FirstWrite -1}
		dense_weights_73 {Type I LastRead -1 FirstWrite -1}
		dense_weights_66 {Type I LastRead -1 FirstWrite -1}
		dense_weights_59 {Type I LastRead -1 FirstWrite -1}
		dense_weights_52 {Type I LastRead -1 FirstWrite -1}
		dense_weights_45 {Type I LastRead -1 FirstWrite -1}
		dense_weights_38 {Type I LastRead -1 FirstWrite -1}
		dense_weights_31 {Type I LastRead -1 FirstWrite -1}
		dense_weights_24 {Type I LastRead -1 FirstWrite -1}
		dense_weights_17 {Type I LastRead -1 FirstWrite -1}
		dense_weights_10 {Type I LastRead -1 FirstWrite -1}
		dense_weights_74 {Type I LastRead -1 FirstWrite -1}
		dense_weights_67 {Type I LastRead -1 FirstWrite -1}
		dense_weights_60 {Type I LastRead -1 FirstWrite -1}
		dense_weights_53 {Type I LastRead -1 FirstWrite -1}
		dense_weights_46 {Type I LastRead -1 FirstWrite -1}
		dense_weights_39 {Type I LastRead -1 FirstWrite -1}
		dense_weights_32 {Type I LastRead -1 FirstWrite -1}
		dense_weights_25 {Type I LastRead -1 FirstWrite -1}
		dense_weights_18 {Type I LastRead -1 FirstWrite -1}
		dense_weights_11 {Type I LastRead -1 FirstWrite -1}
		dense_weights_75 {Type I LastRead -1 FirstWrite -1}
		dense_weights_68 {Type I LastRead -1 FirstWrite -1}
		dense_weights_61 {Type I LastRead -1 FirstWrite -1}
		dense_weights_54 {Type I LastRead -1 FirstWrite -1}
		dense_weights_47 {Type I LastRead -1 FirstWrite -1}
		dense_weights_40 {Type I LastRead -1 FirstWrite -1}
		dense_weights_33 {Type I LastRead -1 FirstWrite -1}
		dense_weights_26 {Type I LastRead -1 FirstWrite -1}
		dense_weights_19 {Type I LastRead -1 FirstWrite -1}
		dense_weights_12 {Type I LastRead -1 FirstWrite -1}
		dense_weights_76 {Type I LastRead -1 FirstWrite -1}
		dense_weights_69 {Type I LastRead -1 FirstWrite -1}
		dense_weights_62 {Type I LastRead -1 FirstWrite -1}
		dense_weights_55 {Type I LastRead -1 FirstWrite -1}
		dense_weights_48 {Type I LastRead -1 FirstWrite -1}
		dense_weights_41 {Type I LastRead -1 FirstWrite -1}
		dense_weights_34 {Type I LastRead -1 FirstWrite -1}
		dense_weights_27 {Type I LastRead -1 FirstWrite -1}
		dense_weights_20 {Type I LastRead -1 FirstWrite -1}
		dense_weights_13 {Type I LastRead -1 FirstWrite -1}
		dense_weights_77 {Type I LastRead -1 FirstWrite -1}
		dense_weights_70 {Type I LastRead -1 FirstWrite -1}
		dense_weights_63 {Type I LastRead -1 FirstWrite -1}
		dense_weights_56 {Type I LastRead -1 FirstWrite -1}
		dense_weights_49 {Type I LastRead -1 FirstWrite -1}
		dense_weights_42 {Type I LastRead -1 FirstWrite -1}
		dense_weights_35 {Type I LastRead -1 FirstWrite -1}
		dense_weights_28 {Type I LastRead -1 FirstWrite -1}
		dense_weights_21 {Type I LastRead -1 FirstWrite -1}
		dense_weights_14 {Type I LastRead -1 FirstWrite -1}
		dense_weights_78 {Type I LastRead -1 FirstWrite -1}
		dense_weights_71 {Type I LastRead -1 FirstWrite -1}
		dense_weights_64 {Type I LastRead -1 FirstWrite -1}
		dense_weights_57 {Type I LastRead -1 FirstWrite -1}
		dense_weights_50 {Type I LastRead -1 FirstWrite -1}
		dense_weights_43 {Type I LastRead -1 FirstWrite -1}
		dense_weights_36 {Type I LastRead -1 FirstWrite -1}
		dense_weights_29 {Type I LastRead -1 FirstWrite -1}
		dense_weights_22 {Type I LastRead -1 FirstWrite -1}
		dense_weights_15 {Type I LastRead -1 FirstWrite -1}
		dense_weights_0 {Type I LastRead -1 FirstWrite -1}
		dense_weights_1 {Type I LastRead -1 FirstWrite -1}
		dense_weights_2 {Type I LastRead -1 FirstWrite -1}
		dense_weights_3 {Type I LastRead -1 FirstWrite -1}
		dense_weights_4 {Type I LastRead -1 FirstWrite -1}
		dense_weights_5 {Type I LastRead -1 FirstWrite -1}
		dense_weights_6 {Type I LastRead -1 FirstWrite -1}
		dense_weights_7 {Type I LastRead -1 FirstWrite -1}
		dense_weights_8 {Type I LastRead -1 FirstWrite -1}
		dense_weights_9 {Type I LastRead -1 FirstWrite -1}
		dense_biases {Type I LastRead -1 FirstWrite -1}}
	convolutional_layer {
		pad_img {Type I LastRead 7 FirstWrite -1}
		pad_img1 {Type I LastRead 7 FirstWrite -1}
		pad_img2 {Type I LastRead 7 FirstWrite -1}
		pad_img3 {Type I LastRead 7 FirstWrite -1}
		pad_img4 {Type I LastRead 7 FirstWrite -1}
		pad_img5 {Type I LastRead 7 FirstWrite -1}
		pad_img6 {Type I LastRead 7 FirstWrite -1}
		pad_img7 {Type I LastRead 7 FirstWrite -1}
		weight_buf_0 {Type I LastRead 5 FirstWrite -1}
		weight_buf_1 {Type I LastRead 5 FirstWrite -1}
		weight_buf_2 {Type I LastRead 5 FirstWrite -1}
		weight_buf_3 {Type I LastRead 5 FirstWrite -1}
		weight_buf_4 {Type I LastRead 5 FirstWrite -1}
		weight_buf_5 {Type I LastRead 5 FirstWrite -1}
		weight_buf_6 {Type I LastRead 5 FirstWrite -1}
		weight_buf_7 {Type I LastRead 5 FirstWrite -1}
		biases_buf_0 {Type I LastRead 0 FirstWrite -1}
		biases_buf_1 {Type I LastRead 0 FirstWrite -1}
		biases_buf_2 {Type I LastRead 0 FirstWrite -1}
		biases_buf_3 {Type I LastRead 0 FirstWrite -1}
		biases_buf_4 {Type I LastRead 0 FirstWrite -1}
		biases_buf_5 {Type I LastRead 0 FirstWrite -1}
		biases_buf_6 {Type I LastRead 0 FirstWrite -1}
		biases_buf_7 {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_0 {Type O LastRead -1 FirstWrite 80}
		conv_to_pool_streams_1 {Type O LastRead -1 FirstWrite 80}
		conv_to_pool_streams_2 {Type O LastRead -1 FirstWrite 80}
		conv_to_pool_streams_3 {Type O LastRead -1 FirstWrite 80}
		conv_to_pool_streams_4 {Type O LastRead -1 FirstWrite 80}
		conv_to_pool_streams_5 {Type O LastRead -1 FirstWrite 80}
		conv_to_pool_streams_6 {Type O LastRead -1 FirstWrite 80}
		conv_to_pool_streams_7 {Type O LastRead -1 FirstWrite 80}}
	convolution {
		pad_img {Type I LastRead 7 FirstWrite -1}
		weight_buf {Type I LastRead 5 FirstWrite -1}
		biases_buf {Type I LastRead 6 FirstWrite -1}
		conv_to_pool_streams_0 {Type O LastRead -1 FirstWrite 80}}
	convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols {
		pad_img {Type I LastRead 7 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		w_16 {Type I LastRead 0 FirstWrite -1}
		w_6 {Type I LastRead 0 FirstWrite -1}
		w_7 {Type I LastRead 0 FirstWrite -1}
		w_8 {Type I LastRead 0 FirstWrite -1}
		w_9 {Type I LastRead 0 FirstWrite -1}
		w_10 {Type I LastRead 0 FirstWrite -1}
		w_11 {Type I LastRead 0 FirstWrite -1}
		w_12 {Type I LastRead 0 FirstWrite -1}
		conv8 {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_0 {Type O LastRead -1 FirstWrite 80}}
	convolution_1 {
		pad_img {Type I LastRead 7 FirstWrite -1}
		weight_buf {Type I LastRead 5 FirstWrite -1}
		biases_buf {Type I LastRead 6 FirstWrite -1}
		conv_to_pool_streams_1 {Type O LastRead -1 FirstWrite 80}}
	convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols {
		pad_img {Type I LastRead 7 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		w_15 {Type I LastRead 0 FirstWrite -1}
		w_8 {Type I LastRead 0 FirstWrite -1}
		w_9 {Type I LastRead 0 FirstWrite -1}
		w_1 {Type I LastRead 0 FirstWrite -1}
		w_2 {Type I LastRead 0 FirstWrite -1}
		w_3 {Type I LastRead 0 FirstWrite -1}
		w_4 {Type I LastRead 0 FirstWrite -1}
		w_5 {Type I LastRead 0 FirstWrite -1}
		conv7 {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_1 {Type O LastRead -1 FirstWrite 80}}
	convolution_2 {
		pad_img {Type I LastRead 7 FirstWrite -1}
		weight_buf {Type I LastRead 5 FirstWrite -1}
		biases_buf {Type I LastRead 6 FirstWrite -1}
		conv_to_pool_streams_2 {Type O LastRead -1 FirstWrite 80}}
	convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols {
		pad_img {Type I LastRead 7 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		w_14 {Type I LastRead 0 FirstWrite -1}
		w_1 {Type I LastRead 0 FirstWrite -1}
		w_2 {Type I LastRead 0 FirstWrite -1}
		w_3 {Type I LastRead 0 FirstWrite -1}
		w_4 {Type I LastRead 0 FirstWrite -1}
		w_5 {Type I LastRead 0 FirstWrite -1}
		w_6 {Type I LastRead 0 FirstWrite -1}
		w_7 {Type I LastRead 0 FirstWrite -1}
		conv6 {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_2 {Type O LastRead -1 FirstWrite 80}}
	convolution_3 {
		pad_img {Type I LastRead 7 FirstWrite -1}
		weight_buf {Type I LastRead 5 FirstWrite -1}
		biases_buf {Type I LastRead 6 FirstWrite -1}
		conv_to_pool_streams_3 {Type O LastRead -1 FirstWrite 80}}
	convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols {
		pad_img {Type I LastRead 7 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		w_13 {Type I LastRead 0 FirstWrite -1}
		w_3 {Type I LastRead 0 FirstWrite -1}
		w_4 {Type I LastRead 0 FirstWrite -1}
		w_5 {Type I LastRead 0 FirstWrite -1}
		w_6 {Type I LastRead 0 FirstWrite -1}
		w_7 {Type I LastRead 0 FirstWrite -1}
		w_8 {Type I LastRead 0 FirstWrite -1}
		w_9 {Type I LastRead 0 FirstWrite -1}
		conv5 {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_3 {Type O LastRead -1 FirstWrite 80}}
	convolution_4 {
		pad_img {Type I LastRead 7 FirstWrite -1}
		weight_buf {Type I LastRead 5 FirstWrite -1}
		biases_buf {Type I LastRead 6 FirstWrite -1}
		conv_to_pool_streams_4 {Type O LastRead -1 FirstWrite 80}}
	convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols {
		pad_img {Type I LastRead 7 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		w_12 {Type I LastRead 0 FirstWrite -1}
		w_5 {Type I LastRead 0 FirstWrite -1}
		w_6 {Type I LastRead 0 FirstWrite -1}
		w_7 {Type I LastRead 0 FirstWrite -1}
		w_8 {Type I LastRead 0 FirstWrite -1}
		w_9 {Type I LastRead 0 FirstWrite -1}
		w_1 {Type I LastRead 0 FirstWrite -1}
		w_2 {Type I LastRead 0 FirstWrite -1}
		conv4 {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_4 {Type O LastRead -1 FirstWrite 80}}
	convolution_5 {
		pad_img {Type I LastRead 7 FirstWrite -1}
		weight_buf {Type I LastRead 5 FirstWrite -1}
		biases_buf {Type I LastRead 6 FirstWrite -1}
		conv_to_pool_streams_5 {Type O LastRead -1 FirstWrite 80}}
	convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols {
		pad_img {Type I LastRead 7 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		w_11 {Type I LastRead 0 FirstWrite -1}
		w_7 {Type I LastRead 0 FirstWrite -1}
		w_8 {Type I LastRead 0 FirstWrite -1}
		w_9 {Type I LastRead 0 FirstWrite -1}
		w_1 {Type I LastRead 0 FirstWrite -1}
		w_2 {Type I LastRead 0 FirstWrite -1}
		w_3 {Type I LastRead 0 FirstWrite -1}
		w_4 {Type I LastRead 0 FirstWrite -1}
		conv3 {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_5 {Type O LastRead -1 FirstWrite 80}}
	convolution_6 {
		pad_img {Type I LastRead 7 FirstWrite -1}
		weight_buf {Type I LastRead 5 FirstWrite -1}
		biases_buf {Type I LastRead 6 FirstWrite -1}
		conv_to_pool_streams_6 {Type O LastRead -1 FirstWrite 80}}
	convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols {
		pad_img {Type I LastRead 7 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		w_9 {Type I LastRead 0 FirstWrite -1}
		w_10 {Type I LastRead 0 FirstWrite -1}
		w_1 {Type I LastRead 0 FirstWrite -1}
		w_2 {Type I LastRead 0 FirstWrite -1}
		w_3 {Type I LastRead 0 FirstWrite -1}
		w_4 {Type I LastRead 0 FirstWrite -1}
		w_5 {Type I LastRead 0 FirstWrite -1}
		w_6 {Type I LastRead 0 FirstWrite -1}
		conv2 {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_6 {Type O LastRead -1 FirstWrite 80}}
	convolution_7 {
		pad_img {Type I LastRead 7 FirstWrite -1}
		weight_buf {Type I LastRead 5 FirstWrite -1}
		biases_buf {Type I LastRead 6 FirstWrite -1}
		conv_to_pool_streams_7 {Type O LastRead -1 FirstWrite 80}}
	convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols {
		pad_img {Type I LastRead 7 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		w_1 {Type I LastRead 0 FirstWrite -1}
		w_2 {Type I LastRead 0 FirstWrite -1}
		w_3 {Type I LastRead 0 FirstWrite -1}
		w_4 {Type I LastRead 0 FirstWrite -1}
		w_5 {Type I LastRead 0 FirstWrite -1}
		w_6 {Type I LastRead 0 FirstWrite -1}
		w_7 {Type I LastRead 0 FirstWrite -1}
		w_8 {Type I LastRead 0 FirstWrite -1}
		conv1 {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_7 {Type O LastRead -1 FirstWrite 80}}
	max_pooling_layer {
		conv_to_pool_streams_0 {Type I LastRead 3 FirstWrite -1}
		conv_to_pool_streams_1 {Type I LastRead 3 FirstWrite -1}
		conv_to_pool_streams_2 {Type I LastRead 3 FirstWrite -1}
		conv_to_pool_streams_3 {Type I LastRead 3 FirstWrite -1}
		conv_to_pool_streams_4 {Type I LastRead 3 FirstWrite -1}
		conv_to_pool_streams_5 {Type I LastRead 3 FirstWrite -1}
		conv_to_pool_streams_6 {Type I LastRead 3 FirstWrite -1}
		conv_to_pool_streams_7 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_0 {Type O LastRead -1 FirstWrite 10}
		pool_to_flat_streams_1 {Type O LastRead -1 FirstWrite 10}
		pool_to_flat_streams_2 {Type O LastRead -1 FirstWrite 10}
		pool_to_flat_streams_3 {Type O LastRead -1 FirstWrite 10}
		pool_to_flat_streams_4 {Type O LastRead -1 FirstWrite 10}
		pool_to_flat_streams_5 {Type O LastRead -1 FirstWrite 10}
		pool_to_flat_streams_6 {Type O LastRead -1 FirstWrite 10}
		pool_to_flat_streams_7 {Type O LastRead -1 FirstWrite 10}}
	max_pooling {
		conv_to_pool_streams_0 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_0 {Type O LastRead -1 FirstWrite 10}}
	max_pooling_8 {
		conv_to_pool_streams_1 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_1 {Type O LastRead -1 FirstWrite 10}}
	max_pooling_9 {
		conv_to_pool_streams_2 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_2 {Type O LastRead -1 FirstWrite 10}}
	max_pooling_10 {
		conv_to_pool_streams_3 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_3 {Type O LastRead -1 FirstWrite 10}}
	max_pooling_11 {
		conv_to_pool_streams_4 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_4 {Type O LastRead -1 FirstWrite 10}}
	max_pooling_12 {
		conv_to_pool_streams_5 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_5 {Type O LastRead -1 FirstWrite 10}}
	max_pooling_13 {
		conv_to_pool_streams_6 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_6 {Type O LastRead -1 FirstWrite 10}}
	max_pooling_14 {
		conv_to_pool_streams_7 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_7 {Type O LastRead -1 FirstWrite 10}}
	flattening_layer {
		pool_to_flat_streams_0 {Type I LastRead 0 FirstWrite -1}
		pool_to_flat_streams_1 {Type I LastRead 0 FirstWrite -1}
		pool_to_flat_streams_2 {Type I LastRead 0 FirstWrite -1}
		pool_to_flat_streams_3 {Type I LastRead 0 FirstWrite -1}
		pool_to_flat_streams_4 {Type I LastRead 0 FirstWrite -1}
		pool_to_flat_streams_5 {Type I LastRead 0 FirstWrite -1}
		pool_to_flat_streams_6 {Type I LastRead 0 FirstWrite -1}
		pool_to_flat_streams_7 {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_0 {Type O LastRead -1 FirstWrite 1}
		flat_to_dense_streams_1 {Type O LastRead -1 FirstWrite 1}
		flat_to_dense_streams_2 {Type O LastRead -1 FirstWrite 1}
		flat_to_dense_streams_3 {Type O LastRead -1 FirstWrite 1}
		flat_to_dense_streams_4 {Type O LastRead -1 FirstWrite 1}
		flat_to_dense_streams_5 {Type O LastRead -1 FirstWrite 1}
		flat_to_dense_streams_6 {Type O LastRead -1 FirstWrite 1}
		flat_to_dense_streams_7 {Type O LastRead -1 FirstWrite 1}}
	flattening {
		pool_to_flat_streams_0 {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_0 {Type O LastRead -1 FirstWrite 1}}
	flattening_15 {
		pool_to_flat_streams_1 {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_1 {Type O LastRead -1 FirstWrite 1}}
	flattening_16 {
		pool_to_flat_streams_2 {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_2 {Type O LastRead -1 FirstWrite 1}}
	flattening_17 {
		pool_to_flat_streams_3 {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_3 {Type O LastRead -1 FirstWrite 1}}
	flattening_18 {
		pool_to_flat_streams_4 {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_4 {Type O LastRead -1 FirstWrite 1}}
	flattening_19 {
		pool_to_flat_streams_5 {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_5 {Type O LastRead -1 FirstWrite 1}}
	flattening_20 {
		pool_to_flat_streams_6 {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_6 {Type O LastRead -1 FirstWrite 1}}
	flattening_21 {
		pool_to_flat_streams_7 {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_7 {Type O LastRead -1 FirstWrite 1}}
	dense_layer {
		flat_to_dense_streams_0 {Type I LastRead 1 FirstWrite -1}
		flat_to_dense_streams_1 {Type I LastRead 1 FirstWrite -1}
		flat_to_dense_streams_2 {Type I LastRead 1 FirstWrite -1}
		flat_to_dense_streams_3 {Type I LastRead 1 FirstWrite -1}
		flat_to_dense_streams_4 {Type I LastRead 1 FirstWrite -1}
		flat_to_dense_streams_5 {Type I LastRead 1 FirstWrite -1}
		flat_to_dense_streams_6 {Type I LastRead 1 FirstWrite -1}
		flat_to_dense_streams_7 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_0 {Type O LastRead -1 FirstWrite 1}
		dense_to_softmax_streams_1 {Type O LastRead -1 FirstWrite 1}
		dense_to_softmax_streams_2 {Type O LastRead -1 FirstWrite 1}
		dense_to_softmax_streams_3 {Type O LastRead -1 FirstWrite 1}
		dense_to_softmax_streams_4 {Type O LastRead -1 FirstWrite 1}
		dense_to_softmax_streams_5 {Type O LastRead -1 FirstWrite 1}
		dense_to_softmax_streams_6 {Type O LastRead -1 FirstWrite 1}
		dense_to_softmax_streams_7 {Type O LastRead -1 FirstWrite 1}
		dense_weights_72 {Type I LastRead -1 FirstWrite -1}
		dense_weights_65 {Type I LastRead -1 FirstWrite -1}
		dense_weights_58 {Type I LastRead -1 FirstWrite -1}
		dense_weights_51 {Type I LastRead -1 FirstWrite -1}
		dense_weights_44 {Type I LastRead -1 FirstWrite -1}
		dense_weights_37 {Type I LastRead -1 FirstWrite -1}
		dense_weights_30 {Type I LastRead -1 FirstWrite -1}
		dense_weights_23 {Type I LastRead -1 FirstWrite -1}
		dense_weights_16 {Type I LastRead -1 FirstWrite -1}
		dense_weights {Type I LastRead -1 FirstWrite -1}
		dense_weights_73 {Type I LastRead -1 FirstWrite -1}
		dense_weights_66 {Type I LastRead -1 FirstWrite -1}
		dense_weights_59 {Type I LastRead -1 FirstWrite -1}
		dense_weights_52 {Type I LastRead -1 FirstWrite -1}
		dense_weights_45 {Type I LastRead -1 FirstWrite -1}
		dense_weights_38 {Type I LastRead -1 FirstWrite -1}
		dense_weights_31 {Type I LastRead -1 FirstWrite -1}
		dense_weights_24 {Type I LastRead -1 FirstWrite -1}
		dense_weights_17 {Type I LastRead -1 FirstWrite -1}
		dense_weights_10 {Type I LastRead -1 FirstWrite -1}
		dense_weights_74 {Type I LastRead -1 FirstWrite -1}
		dense_weights_67 {Type I LastRead -1 FirstWrite -1}
		dense_weights_60 {Type I LastRead -1 FirstWrite -1}
		dense_weights_53 {Type I LastRead -1 FirstWrite -1}
		dense_weights_46 {Type I LastRead -1 FirstWrite -1}
		dense_weights_39 {Type I LastRead -1 FirstWrite -1}
		dense_weights_32 {Type I LastRead -1 FirstWrite -1}
		dense_weights_25 {Type I LastRead -1 FirstWrite -1}
		dense_weights_18 {Type I LastRead -1 FirstWrite -1}
		dense_weights_11 {Type I LastRead -1 FirstWrite -1}
		dense_weights_75 {Type I LastRead -1 FirstWrite -1}
		dense_weights_68 {Type I LastRead -1 FirstWrite -1}
		dense_weights_61 {Type I LastRead -1 FirstWrite -1}
		dense_weights_54 {Type I LastRead -1 FirstWrite -1}
		dense_weights_47 {Type I LastRead -1 FirstWrite -1}
		dense_weights_40 {Type I LastRead -1 FirstWrite -1}
		dense_weights_33 {Type I LastRead -1 FirstWrite -1}
		dense_weights_26 {Type I LastRead -1 FirstWrite -1}
		dense_weights_19 {Type I LastRead -1 FirstWrite -1}
		dense_weights_12 {Type I LastRead -1 FirstWrite -1}
		dense_weights_76 {Type I LastRead -1 FirstWrite -1}
		dense_weights_69 {Type I LastRead -1 FirstWrite -1}
		dense_weights_62 {Type I LastRead -1 FirstWrite -1}
		dense_weights_55 {Type I LastRead -1 FirstWrite -1}
		dense_weights_48 {Type I LastRead -1 FirstWrite -1}
		dense_weights_41 {Type I LastRead -1 FirstWrite -1}
		dense_weights_34 {Type I LastRead -1 FirstWrite -1}
		dense_weights_27 {Type I LastRead -1 FirstWrite -1}
		dense_weights_20 {Type I LastRead -1 FirstWrite -1}
		dense_weights_13 {Type I LastRead -1 FirstWrite -1}
		dense_weights_77 {Type I LastRead -1 FirstWrite -1}
		dense_weights_70 {Type I LastRead -1 FirstWrite -1}
		dense_weights_63 {Type I LastRead -1 FirstWrite -1}
		dense_weights_56 {Type I LastRead -1 FirstWrite -1}
		dense_weights_49 {Type I LastRead -1 FirstWrite -1}
		dense_weights_42 {Type I LastRead -1 FirstWrite -1}
		dense_weights_35 {Type I LastRead -1 FirstWrite -1}
		dense_weights_28 {Type I LastRead -1 FirstWrite -1}
		dense_weights_21 {Type I LastRead -1 FirstWrite -1}
		dense_weights_14 {Type I LastRead -1 FirstWrite -1}
		dense_weights_78 {Type I LastRead -1 FirstWrite -1}
		dense_weights_71 {Type I LastRead -1 FirstWrite -1}
		dense_weights_64 {Type I LastRead -1 FirstWrite -1}
		dense_weights_57 {Type I LastRead -1 FirstWrite -1}
		dense_weights_50 {Type I LastRead -1 FirstWrite -1}
		dense_weights_43 {Type I LastRead -1 FirstWrite -1}
		dense_weights_36 {Type I LastRead -1 FirstWrite -1}
		dense_weights_29 {Type I LastRead -1 FirstWrite -1}
		dense_weights_22 {Type I LastRead -1 FirstWrite -1}
		dense_weights_15 {Type I LastRead -1 FirstWrite -1}
		dense_weights_0 {Type I LastRead -1 FirstWrite -1}
		dense_weights_1 {Type I LastRead -1 FirstWrite -1}
		dense_weights_2 {Type I LastRead -1 FirstWrite -1}
		dense_weights_3 {Type I LastRead -1 FirstWrite -1}
		dense_weights_4 {Type I LastRead -1 FirstWrite -1}
		dense_weights_5 {Type I LastRead -1 FirstWrite -1}
		dense_weights_6 {Type I LastRead -1 FirstWrite -1}
		dense_weights_7 {Type I LastRead -1 FirstWrite -1}
		dense_weights_8 {Type I LastRead -1 FirstWrite -1}
		dense_weights_9 {Type I LastRead -1 FirstWrite -1}}
	dense {
		flat_to_dense_streams_0 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_0 {Type O LastRead -1 FirstWrite 1}
		dense_weights_72 {Type I LastRead -1 FirstWrite -1}
		dense_weights_65 {Type I LastRead -1 FirstWrite -1}
		dense_weights_58 {Type I LastRead -1 FirstWrite -1}
		dense_weights_51 {Type I LastRead -1 FirstWrite -1}
		dense_weights_44 {Type I LastRead -1 FirstWrite -1}
		dense_weights_37 {Type I LastRead -1 FirstWrite -1}
		dense_weights_30 {Type I LastRead -1 FirstWrite -1}
		dense_weights_23 {Type I LastRead -1 FirstWrite -1}
		dense_weights_16 {Type I LastRead -1 FirstWrite -1}
		dense_weights {Type I LastRead -1 FirstWrite -1}}
	dense_Pipeline_1 {
		dense_array {Type O LastRead -1 FirstWrite 0}}
	dense_Pipeline_dense_for_flat {
		dense_array_load_79 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_78 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_77 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_76 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_75 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_74 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_73 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_72 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_71 {Type I LastRead 0 FirstWrite -1}
		dense_array_load {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_0 {Type I LastRead 1 FirstWrite -1}
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
		dense_weights_72 {Type I LastRead -1 FirstWrite -1}
		dense_weights_65 {Type I LastRead -1 FirstWrite -1}
		dense_weights_58 {Type I LastRead -1 FirstWrite -1}
		dense_weights_51 {Type I LastRead -1 FirstWrite -1}
		dense_weights_44 {Type I LastRead -1 FirstWrite -1}
		dense_weights_37 {Type I LastRead -1 FirstWrite -1}
		dense_weights_30 {Type I LastRead -1 FirstWrite -1}
		dense_weights_23 {Type I LastRead -1 FirstWrite -1}
		dense_weights_16 {Type I LastRead -1 FirstWrite -1}
		dense_weights {Type I LastRead -1 FirstWrite -1}}
	dense_Pipeline_VITIS_LOOP_60_2 {
		dense_array {Type I LastRead 0 FirstWrite -1}
		dense_to_softmax_streams_0 {Type O LastRead -1 FirstWrite 1}}
	dense_22 {
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
	dense_22_Pipeline_1 {
		dense_array {Type O LastRead -1 FirstWrite 0}}
	dense_22_Pipeline_dense_for_flat {
		dense_array_load_69 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_68 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_67 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_66 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_65 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_64 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_63 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_62 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_61 {Type I LastRead 0 FirstWrite -1}
		dense_array_load {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_1 {Type I LastRead 1 FirstWrite -1}
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
	dense_22_Pipeline_VITIS_LOOP_60_2 {
		dense_array {Type I LastRead 0 FirstWrite -1}
		dense_to_softmax_streams_1 {Type O LastRead -1 FirstWrite 1}}
	dense_23 {
		flat_to_dense_streams_2 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_2 {Type O LastRead -1 FirstWrite 1}
		dense_weights_74 {Type I LastRead -1 FirstWrite -1}
		dense_weights_67 {Type I LastRead -1 FirstWrite -1}
		dense_weights_60 {Type I LastRead -1 FirstWrite -1}
		dense_weights_53 {Type I LastRead -1 FirstWrite -1}
		dense_weights_46 {Type I LastRead -1 FirstWrite -1}
		dense_weights_39 {Type I LastRead -1 FirstWrite -1}
		dense_weights_32 {Type I LastRead -1 FirstWrite -1}
		dense_weights_25 {Type I LastRead -1 FirstWrite -1}
		dense_weights_18 {Type I LastRead -1 FirstWrite -1}
		dense_weights_11 {Type I LastRead -1 FirstWrite -1}}
	dense_23_Pipeline_1 {
		dense_array {Type O LastRead -1 FirstWrite 0}}
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
		dense_weights_11 {Type I LastRead -1 FirstWrite -1}}
	dense_23_Pipeline_VITIS_LOOP_60_2 {
		dense_array {Type I LastRead 0 FirstWrite -1}
		dense_to_softmax_streams_2 {Type O LastRead -1 FirstWrite 1}}
	dense_24 {
		flat_to_dense_streams_3 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_3 {Type O LastRead -1 FirstWrite 1}
		dense_weights_75 {Type I LastRead -1 FirstWrite -1}
		dense_weights_68 {Type I LastRead -1 FirstWrite -1}
		dense_weights_61 {Type I LastRead -1 FirstWrite -1}
		dense_weights_54 {Type I LastRead -1 FirstWrite -1}
		dense_weights_47 {Type I LastRead -1 FirstWrite -1}
		dense_weights_40 {Type I LastRead -1 FirstWrite -1}
		dense_weights_33 {Type I LastRead -1 FirstWrite -1}
		dense_weights_26 {Type I LastRead -1 FirstWrite -1}
		dense_weights_19 {Type I LastRead -1 FirstWrite -1}
		dense_weights_12 {Type I LastRead -1 FirstWrite -1}}
	dense_24_Pipeline_1 {
		dense_array {Type O LastRead -1 FirstWrite 0}}
	dense_24_Pipeline_dense_for_flat {
		dense_array_load_49 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_48 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_47 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_46 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_45 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_44 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_43 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_42 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_41 {Type I LastRead 0 FirstWrite -1}
		dense_array_load {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_3 {Type I LastRead 1 FirstWrite -1}
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
		dense_weights_75 {Type I LastRead -1 FirstWrite -1}
		dense_weights_68 {Type I LastRead -1 FirstWrite -1}
		dense_weights_61 {Type I LastRead -1 FirstWrite -1}
		dense_weights_54 {Type I LastRead -1 FirstWrite -1}
		dense_weights_47 {Type I LastRead -1 FirstWrite -1}
		dense_weights_40 {Type I LastRead -1 FirstWrite -1}
		dense_weights_33 {Type I LastRead -1 FirstWrite -1}
		dense_weights_26 {Type I LastRead -1 FirstWrite -1}
		dense_weights_19 {Type I LastRead -1 FirstWrite -1}
		dense_weights_12 {Type I LastRead -1 FirstWrite -1}}
	dense_24_Pipeline_VITIS_LOOP_60_2 {
		dense_array {Type I LastRead 0 FirstWrite -1}
		dense_to_softmax_streams_3 {Type O LastRead -1 FirstWrite 1}}
	dense_25 {
		flat_to_dense_streams_4 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_4 {Type O LastRead -1 FirstWrite 1}
		dense_weights_76 {Type I LastRead -1 FirstWrite -1}
		dense_weights_69 {Type I LastRead -1 FirstWrite -1}
		dense_weights_62 {Type I LastRead -1 FirstWrite -1}
		dense_weights_55 {Type I LastRead -1 FirstWrite -1}
		dense_weights_48 {Type I LastRead -1 FirstWrite -1}
		dense_weights_41 {Type I LastRead -1 FirstWrite -1}
		dense_weights_34 {Type I LastRead -1 FirstWrite -1}
		dense_weights_27 {Type I LastRead -1 FirstWrite -1}
		dense_weights_20 {Type I LastRead -1 FirstWrite -1}
		dense_weights_13 {Type I LastRead -1 FirstWrite -1}}
	dense_25_Pipeline_1 {
		dense_array {Type O LastRead -1 FirstWrite 0}}
	dense_25_Pipeline_dense_for_flat {
		dense_array_load_39 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_38 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_37 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_36 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_35 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_34 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_33 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_32 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_31 {Type I LastRead 0 FirstWrite -1}
		dense_array_load {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_4 {Type I LastRead 1 FirstWrite -1}
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
		dense_weights_76 {Type I LastRead -1 FirstWrite -1}
		dense_weights_69 {Type I LastRead -1 FirstWrite -1}
		dense_weights_62 {Type I LastRead -1 FirstWrite -1}
		dense_weights_55 {Type I LastRead -1 FirstWrite -1}
		dense_weights_48 {Type I LastRead -1 FirstWrite -1}
		dense_weights_41 {Type I LastRead -1 FirstWrite -1}
		dense_weights_34 {Type I LastRead -1 FirstWrite -1}
		dense_weights_27 {Type I LastRead -1 FirstWrite -1}
		dense_weights_20 {Type I LastRead -1 FirstWrite -1}
		dense_weights_13 {Type I LastRead -1 FirstWrite -1}}
	dense_25_Pipeline_VITIS_LOOP_60_2 {
		dense_array {Type I LastRead 0 FirstWrite -1}
		dense_to_softmax_streams_4 {Type O LastRead -1 FirstWrite 1}}
	dense_26 {
		flat_to_dense_streams_5 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_5 {Type O LastRead -1 FirstWrite 1}
		dense_weights_77 {Type I LastRead -1 FirstWrite -1}
		dense_weights_70 {Type I LastRead -1 FirstWrite -1}
		dense_weights_63 {Type I LastRead -1 FirstWrite -1}
		dense_weights_56 {Type I LastRead -1 FirstWrite -1}
		dense_weights_49 {Type I LastRead -1 FirstWrite -1}
		dense_weights_42 {Type I LastRead -1 FirstWrite -1}
		dense_weights_35 {Type I LastRead -1 FirstWrite -1}
		dense_weights_28 {Type I LastRead -1 FirstWrite -1}
		dense_weights_21 {Type I LastRead -1 FirstWrite -1}
		dense_weights_14 {Type I LastRead -1 FirstWrite -1}}
	dense_26_Pipeline_1 {
		dense_array {Type O LastRead -1 FirstWrite 0}}
	dense_26_Pipeline_dense_for_flat {
		dense_array_load_29 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_28 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_27 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_26 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_25 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_24 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_23 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_22 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_21 {Type I LastRead 0 FirstWrite -1}
		dense_array_load {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_5 {Type I LastRead 1 FirstWrite -1}
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
		dense_weights_77 {Type I LastRead -1 FirstWrite -1}
		dense_weights_70 {Type I LastRead -1 FirstWrite -1}
		dense_weights_63 {Type I LastRead -1 FirstWrite -1}
		dense_weights_56 {Type I LastRead -1 FirstWrite -1}
		dense_weights_49 {Type I LastRead -1 FirstWrite -1}
		dense_weights_42 {Type I LastRead -1 FirstWrite -1}
		dense_weights_35 {Type I LastRead -1 FirstWrite -1}
		dense_weights_28 {Type I LastRead -1 FirstWrite -1}
		dense_weights_21 {Type I LastRead -1 FirstWrite -1}
		dense_weights_14 {Type I LastRead -1 FirstWrite -1}}
	dense_26_Pipeline_VITIS_LOOP_60_2 {
		dense_array {Type I LastRead 0 FirstWrite -1}
		dense_to_softmax_streams_5 {Type O LastRead -1 FirstWrite 1}}
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
		dense_to_softmax_streams_6 {Type O LastRead -1 FirstWrite 1}}
	dense_28 {
		flat_to_dense_streams_7 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_7 {Type O LastRead -1 FirstWrite 1}
		dense_weights_0 {Type I LastRead -1 FirstWrite -1}
		dense_weights_1 {Type I LastRead -1 FirstWrite -1}
		dense_weights_2 {Type I LastRead -1 FirstWrite -1}
		dense_weights_3 {Type I LastRead -1 FirstWrite -1}
		dense_weights_4 {Type I LastRead -1 FirstWrite -1}
		dense_weights_5 {Type I LastRead -1 FirstWrite -1}
		dense_weights_6 {Type I LastRead -1 FirstWrite -1}
		dense_weights_7 {Type I LastRead -1 FirstWrite -1}
		dense_weights_8 {Type I LastRead -1 FirstWrite -1}
		dense_weights_9 {Type I LastRead -1 FirstWrite -1}}
	dense_28_Pipeline_1 {
		dense_array {Type O LastRead -1 FirstWrite 0}}
	dense_28_Pipeline_dense_for_flat {
		dense_array_load_9 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_8 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_7 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_6 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_5 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_4 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_3 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_2 {Type I LastRead 0 FirstWrite -1}
		dense_array_load_1 {Type I LastRead 0 FirstWrite -1}
		dense_array_load {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_7 {Type I LastRead 1 FirstWrite -1}
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
		dense_weights_0 {Type I LastRead -1 FirstWrite -1}
		dense_weights_1 {Type I LastRead -1 FirstWrite -1}
		dense_weights_2 {Type I LastRead -1 FirstWrite -1}
		dense_weights_3 {Type I LastRead -1 FirstWrite -1}
		dense_weights_4 {Type I LastRead -1 FirstWrite -1}
		dense_weights_5 {Type I LastRead -1 FirstWrite -1}
		dense_weights_6 {Type I LastRead -1 FirstWrite -1}
		dense_weights_7 {Type I LastRead -1 FirstWrite -1}
		dense_weights_8 {Type I LastRead -1 FirstWrite -1}
		dense_weights_9 {Type I LastRead -1 FirstWrite -1}}
	dense_28_Pipeline_VITIS_LOOP_60_2 {
		dense_array {Type I LastRead 0 FirstWrite -1}
		dense_to_softmax_streams_7 {Type O LastRead -1 FirstWrite 1}}
	dense_layer_soft_max {
		dense_to_softmax_streams_0 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_1 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_2 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_3 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_4 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_5 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_6 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_7 {Type I LastRead 1 FirstWrite -1}
		prediction {Type IO LastRead 0 FirstWrite 18}
		dense_biases {Type I LastRead -1 FirstWrite -1}}
	dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size {
		dense_to_softmax_streams_0 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_1 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_2 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_3 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_4 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_5 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_6 {Type I LastRead 1 FirstWrite -1}
		dense_to_softmax_streams_7 {Type I LastRead 1 FirstWrite -1}
		prediction {Type O LastRead -1 FirstWrite 71}
		exp_sum_out {Type O LastRead -1 FirstWrite 71}
		dense_biases {Type I LastRead -1 FirstWrite -1}}
	dense_layer_soft_max_Pipeline_dense_soft_max_for_digits {
		prediction {Type IO LastRead 0 FirstWrite 18}
		exp_sum_reload {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5920", "Max" : "5920"}
	, {"Name" : "Interval", "Min" : "5921", "Max" : "5921"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_in { ap_memory {  { img_in_address0 mem_address 1 10 }  { img_in_ce0 mem_ce 1 1 }  { img_in_q0 mem_dout 0 32 } } }
	prediction { ap_memory {  { prediction_address0 mem_address 1 4 }  { prediction_ce0 mem_ce 1 1 }  { prediction_we0 mem_we 1 1 }  { prediction_d0 mem_din 1 32 }  { prediction_address1 MemPortADDR2 1 4 }  { prediction_ce1 MemPortCE2 1 1 }  { prediction_q1 MemPortDOUT2 0 32 } } }
	weight_buf { ap_memory {  { weight_buf_address0 mem_address 1 7 }  { weight_buf_ce0 mem_ce 1 1 }  { weight_buf_q0 mem_dout 0 32 } } }
	biases_buf { ap_memory {  { biases_buf_address0 mem_address 1 3 }  { biases_buf_ce0 mem_ce 1 1 }  { biases_buf_q0 mem_dout 0 32 }  { biases_buf_address1 MemPortADDR2 1 3 }  { biases_buf_ce1 MemPortCE2 1 1 }  { biases_buf_q1 MemPortDOUT2 0 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
