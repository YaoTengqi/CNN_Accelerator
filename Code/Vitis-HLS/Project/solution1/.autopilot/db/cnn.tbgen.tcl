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
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5914", "EstimateLatencyMax" : "5914",
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
					{"ID" : "28", "SubInstance" : "grp_cnn_Pipeline_6_fu_411", "Port" : "weight_buf", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "24", "SubInstance" : "grp_cnn_Pipeline_4_fu_397", "Port" : "weight_buf", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "20", "SubInstance" : "grp_cnn_Pipeline_3_fu_377", "Port" : "weight_buf", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_cnn_Pipeline_7_fu_418", "Port" : "weight_buf", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "26", "SubInstance" : "grp_cnn_Pipeline_5_fu_404", "Port" : "weight_buf", "Inst_start_state" : "5", "Inst_end_state" : "6"},
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
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446", "Parent" : "0", "Child" : ["39", "104", "129", "146", "307", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351"],
		"CDFG" : "dataflow_section",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4003", "EstimateLatencyMax" : "4003",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "39", "Name" : "convolutional_layer_U0"},
			{"ID" : "307", "Name" : "dense_layer_soft_max_U0"}],
		"OutputProcess" : [
			{"ID" : "307", "Name" : "dense_layer_soft_max_U0"}],
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
					{"ID" : "307", "SubInstance" : "dense_layer_soft_max_U0", "Port" : "prediction"}]},
			{"Name" : "dense_weights_72", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_72"}]},
			{"Name" : "dense_weights_65", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_65"}]},
			{"Name" : "dense_weights_58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_58"}]},
			{"Name" : "dense_weights_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_51"}]},
			{"Name" : "dense_weights_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_44"}]},
			{"Name" : "dense_weights_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_37"}]},
			{"Name" : "dense_weights_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_30"}]},
			{"Name" : "dense_weights_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_23"}]},
			{"Name" : "dense_weights_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_16"}]},
			{"Name" : "dense_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights"}]},
			{"Name" : "dense_weights_73", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_73"}]},
			{"Name" : "dense_weights_66", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_66"}]},
			{"Name" : "dense_weights_59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_59"}]},
			{"Name" : "dense_weights_52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_52"}]},
			{"Name" : "dense_weights_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_45"}]},
			{"Name" : "dense_weights_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_38"}]},
			{"Name" : "dense_weights_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_31"}]},
			{"Name" : "dense_weights_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_24"}]},
			{"Name" : "dense_weights_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_17"}]},
			{"Name" : "dense_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_10"}]},
			{"Name" : "dense_weights_74", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_74"}]},
			{"Name" : "dense_weights_67", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_67"}]},
			{"Name" : "dense_weights_60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_60"}]},
			{"Name" : "dense_weights_53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_53"}]},
			{"Name" : "dense_weights_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_46"}]},
			{"Name" : "dense_weights_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_39"}]},
			{"Name" : "dense_weights_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_32"}]},
			{"Name" : "dense_weights_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_25"}]},
			{"Name" : "dense_weights_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_18"}]},
			{"Name" : "dense_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_11"}]},
			{"Name" : "dense_weights_75", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_75"}]},
			{"Name" : "dense_weights_68", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_68"}]},
			{"Name" : "dense_weights_61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_61"}]},
			{"Name" : "dense_weights_54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_54"}]},
			{"Name" : "dense_weights_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_47"}]},
			{"Name" : "dense_weights_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_40"}]},
			{"Name" : "dense_weights_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_33"}]},
			{"Name" : "dense_weights_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_26"}]},
			{"Name" : "dense_weights_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_19"}]},
			{"Name" : "dense_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_12"}]},
			{"Name" : "dense_weights_76", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_76"}]},
			{"Name" : "dense_weights_69", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_69"}]},
			{"Name" : "dense_weights_62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_62"}]},
			{"Name" : "dense_weights_55", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_55"}]},
			{"Name" : "dense_weights_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_48"}]},
			{"Name" : "dense_weights_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_41"}]},
			{"Name" : "dense_weights_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_34"}]},
			{"Name" : "dense_weights_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_27"}]},
			{"Name" : "dense_weights_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_20"}]},
			{"Name" : "dense_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_13"}]},
			{"Name" : "dense_weights_77", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_77"}]},
			{"Name" : "dense_weights_70", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_70"}]},
			{"Name" : "dense_weights_63", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_63"}]},
			{"Name" : "dense_weights_56", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_56"}]},
			{"Name" : "dense_weights_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_49"}]},
			{"Name" : "dense_weights_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_42"}]},
			{"Name" : "dense_weights_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_35"}]},
			{"Name" : "dense_weights_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_28"}]},
			{"Name" : "dense_weights_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_21"}]},
			{"Name" : "dense_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_14"}]},
			{"Name" : "dense_weights_78", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_78"}]},
			{"Name" : "dense_weights_71", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_71"}]},
			{"Name" : "dense_weights_64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_64"}]},
			{"Name" : "dense_weights_57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_57"}]},
			{"Name" : "dense_weights_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_50"}]},
			{"Name" : "dense_weights_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_43"}]},
			{"Name" : "dense_weights_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_36"}]},
			{"Name" : "dense_weights_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_29"}]},
			{"Name" : "dense_weights_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_22"}]},
			{"Name" : "dense_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_15"}]},
			{"Name" : "dense_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_0"}]},
			{"Name" : "dense_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_1"}]},
			{"Name" : "dense_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_2"}]},
			{"Name" : "dense_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_3"}]},
			{"Name" : "dense_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_4"}]},
			{"Name" : "dense_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_5"}]},
			{"Name" : "dense_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_6"}]},
			{"Name" : "dense_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_7"}]},
			{"Name" : "dense_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_8"}]},
			{"Name" : "dense_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "dense_layer_U0", "Port" : "dense_weights_9"}]},
			{"Name" : "dense_biases", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "dense_layer_soft_max_U0", "Port" : "dense_biases"}]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0", "Parent" : "38", "Child" : ["40", "48", "56", "64", "72", "80", "88", "96"],
		"CDFG" : "convolutional_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4003", "EstimateLatencyMax" : "4003",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "40", "Name" : "convolution_U0"},
			{"ID" : "48", "Name" : "convolution_1_U0"},
			{"ID" : "56", "Name" : "convolution_2_U0"},
			{"ID" : "64", "Name" : "convolution_3_U0"},
			{"ID" : "72", "Name" : "convolution_4_U0"},
			{"ID" : "80", "Name" : "convolution_5_U0"},
			{"ID" : "88", "Name" : "convolution_6_U0"},
			{"ID" : "96", "Name" : "convolution_7_U0"}],
		"OutputProcess" : [
			{"ID" : "40", "Name" : "convolution_U0"},
			{"ID" : "48", "Name" : "convolution_1_U0"},
			{"ID" : "56", "Name" : "convolution_2_U0"},
			{"ID" : "64", "Name" : "convolution_3_U0"},
			{"ID" : "72", "Name" : "convolution_4_U0"},
			{"ID" : "80", "Name" : "convolution_5_U0"},
			{"ID" : "88", "Name" : "convolution_6_U0"},
			{"ID" : "96", "Name" : "convolution_7_U0"}],
		"Port" : [
			{"Name" : "pad_img", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "convolution_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "convolution_1_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "convolution_2_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convolution_3_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "convolution_4_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "convolution_5_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "convolution_6_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "convolution_7_U0", "Port" : "pad_img"}]},
			{"Name" : "weight_buf_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "convolution_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "convolution_1_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "convolution_2_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convolution_3_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "convolution_4_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "convolution_5_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "convolution_6_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "convolution_7_U0", "Port" : "weight_buf"}]},
			{"Name" : "biases_buf_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","105"], "DependentChan" : "317", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "convolution_U0", "Port" : "conv_to_pool_streams_0"}]},
			{"Name" : "conv_to_pool_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","108"], "DependentChan" : "318", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "convolution_1_U0", "Port" : "conv_to_pool_streams_1"}]},
			{"Name" : "conv_to_pool_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","111"], "DependentChan" : "319", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "convolution_2_U0", "Port" : "conv_to_pool_streams_2"}]},
			{"Name" : "conv_to_pool_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","114"], "DependentChan" : "320", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convolution_3_U0", "Port" : "conv_to_pool_streams_3"}]},
			{"Name" : "conv_to_pool_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","117"], "DependentChan" : "321", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "convolution_4_U0", "Port" : "conv_to_pool_streams_4"}]},
			{"Name" : "conv_to_pool_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","120"], "DependentChan" : "322", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "convolution_5_U0", "Port" : "conv_to_pool_streams_5"}]},
			{"Name" : "conv_to_pool_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","123"], "DependentChan" : "323", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "convolution_6_U0", "Port" : "conv_to_pool_streams_6"}]},
			{"Name" : "conv_to_pool_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","126"], "DependentChan" : "324", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "convolution_7_U0", "Port" : "conv_to_pool_streams_7"}]}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_U0", "Parent" : "39", "Child" : ["41"],
		"CDFG" : "convolution",
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
					{"ID" : "41", "SubInstance" : "grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","105"], "DependentChan" : "317", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
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
			{"Name" : "w_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0", "Parent" : "39", "Child" : ["49"],
		"CDFG" : "convolution_1",
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
					{"ID" : "49", "SubInstance" : "grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","108"], "DependentChan" : "318", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "48", "Child" : ["50", "51", "52", "53", "54", "55"],
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
			{"Name" : "w_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "conv_for_rows_win_for_rows_win_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U53", "Parent" : "49"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U54", "Parent" : "49"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U55", "Parent" : "49"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U56", "Parent" : "49"},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U57", "Parent" : "49"},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0", "Parent" : "39", "Child" : ["57"],
		"CDFG" : "convolution_2",
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
					{"ID" : "57", "SubInstance" : "grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","111"], "DependentChan" : "319", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "56", "Child" : ["58", "59", "60", "61", "62", "63"],
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
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U74", "Parent" : "57"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U75", "Parent" : "57"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U76", "Parent" : "57"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U77", "Parent" : "57"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U78", "Parent" : "57"},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0", "Parent" : "39", "Child" : ["65"],
		"CDFG" : "convolution_3",
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
					{"ID" : "65", "SubInstance" : "grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","114"], "DependentChan" : "320", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_3", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "64", "Child" : ["66", "67", "68", "69", "70", "71"],
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
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U95", "Parent" : "65"},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U96", "Parent" : "65"},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U97", "Parent" : "65"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U98", "Parent" : "65"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U99", "Parent" : "65"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0", "Parent" : "39", "Child" : ["73"],
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
					{"ID" : "73", "SubInstance" : "grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","117"], "DependentChan" : "321", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_4", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "72", "Child" : ["74", "75", "76", "77", "78", "79"],
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
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U116", "Parent" : "73"},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U117", "Parent" : "73"},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U118", "Parent" : "73"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U119", "Parent" : "73"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U120", "Parent" : "73"},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0", "Parent" : "39", "Child" : ["81"],
		"CDFG" : "convolution_5",
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
					{"ID" : "81", "SubInstance" : "grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","120"], "DependentChan" : "322", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_5", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "80", "Child" : ["82", "83", "84", "85", "86", "87"],
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
			{"Name" : "w_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_5", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "conv_for_rows_win_for_rows_win_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U137", "Parent" : "81"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U138", "Parent" : "81"},
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U139", "Parent" : "81"},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U140", "Parent" : "81"},
	{"ID" : "86", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U141", "Parent" : "81"},
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0", "Parent" : "39", "Child" : ["89"],
		"CDFG" : "convolution_6",
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
					{"ID" : "89", "SubInstance" : "grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","123"], "DependentChan" : "323", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_6", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "88", "Child" : ["90", "91", "92", "93", "94", "95"],
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
			{"Name" : "w_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_6", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_6_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "conv_for_rows_win_for_rows_win_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U158", "Parent" : "89"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U159", "Parent" : "89"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U160", "Parent" : "89"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U161", "Parent" : "89"},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U162", "Parent" : "89"},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0", "Parent" : "39", "Child" : ["97"],
		"CDFG" : "convolution_7",
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
					{"ID" : "97", "SubInstance" : "grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["104","126"], "DependentChan" : "324", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_7", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "96", "Child" : ["98", "99", "100", "101", "102", "103"],
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
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_7", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "conv_for_rows_win_for_rows_win_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U179", "Parent" : "97"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U180", "Parent" : "97"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U181", "Parent" : "97"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U182", "Parent" : "97"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U183", "Parent" : "97"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.convolutional_layer_U0.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "97"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0", "Parent" : "38", "Child" : ["105", "108", "111", "114", "117", "120", "123", "126"],
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
			{"ID" : "105", "Name" : "max_pooling_U0"},
			{"ID" : "108", "Name" : "max_pooling_8_U0"},
			{"ID" : "111", "Name" : "max_pooling_9_U0"},
			{"ID" : "114", "Name" : "max_pooling_10_U0"},
			{"ID" : "117", "Name" : "max_pooling_11_U0"},
			{"ID" : "120", "Name" : "max_pooling_12_U0"},
			{"ID" : "123", "Name" : "max_pooling_13_U0"},
			{"ID" : "126", "Name" : "max_pooling_14_U0"}],
		"OutputProcess" : [
			{"ID" : "105", "Name" : "max_pooling_U0"},
			{"ID" : "108", "Name" : "max_pooling_8_U0"},
			{"ID" : "111", "Name" : "max_pooling_9_U0"},
			{"ID" : "114", "Name" : "max_pooling_10_U0"},
			{"ID" : "117", "Name" : "max_pooling_11_U0"},
			{"ID" : "120", "Name" : "max_pooling_12_U0"},
			{"ID" : "123", "Name" : "max_pooling_13_U0"},
			{"ID" : "126", "Name" : "max_pooling_14_U0"}],
		"Port" : [
			{"Name" : "conv_to_pool_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","40"], "DependentChan" : "317", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "max_pooling_U0", "Port" : "conv_to_pool_streams_0"}]},
			{"Name" : "conv_to_pool_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","48"], "DependentChan" : "318", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "max_pooling_8_U0", "Port" : "conv_to_pool_streams_1"}]},
			{"Name" : "conv_to_pool_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","56"], "DependentChan" : "319", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "max_pooling_9_U0", "Port" : "conv_to_pool_streams_2"}]},
			{"Name" : "conv_to_pool_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","64"], "DependentChan" : "320", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "max_pooling_10_U0", "Port" : "conv_to_pool_streams_3"}]},
			{"Name" : "conv_to_pool_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","72"], "DependentChan" : "321", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "max_pooling_11_U0", "Port" : "conv_to_pool_streams_4"}]},
			{"Name" : "conv_to_pool_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","80"], "DependentChan" : "322", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "max_pooling_12_U0", "Port" : "conv_to_pool_streams_5"}]},
			{"Name" : "conv_to_pool_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","88"], "DependentChan" : "323", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "max_pooling_13_U0", "Port" : "conv_to_pool_streams_6"}]},
			{"Name" : "conv_to_pool_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","96"], "DependentChan" : "324", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "max_pooling_14_U0", "Port" : "conv_to_pool_streams_7"}]},
			{"Name" : "pool_to_flat_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","130"], "DependentChan" : "325", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "max_pooling_U0", "Port" : "pool_to_flat_streams_0"}]},
			{"Name" : "pool_to_flat_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","132"], "DependentChan" : "326", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "max_pooling_8_U0", "Port" : "pool_to_flat_streams_1"}]},
			{"Name" : "pool_to_flat_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","134"], "DependentChan" : "327", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "max_pooling_9_U0", "Port" : "pool_to_flat_streams_2"}]},
			{"Name" : "pool_to_flat_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","136"], "DependentChan" : "328", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "max_pooling_10_U0", "Port" : "pool_to_flat_streams_3"}]},
			{"Name" : "pool_to_flat_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","138"], "DependentChan" : "329", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "max_pooling_11_U0", "Port" : "pool_to_flat_streams_4"}]},
			{"Name" : "pool_to_flat_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","140"], "DependentChan" : "330", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "max_pooling_12_U0", "Port" : "pool_to_flat_streams_5"}]},
			{"Name" : "pool_to_flat_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","142"], "DependentChan" : "331", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "max_pooling_13_U0", "Port" : "pool_to_flat_streams_6"}]},
			{"Name" : "pool_to_flat_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","144"], "DependentChan" : "332", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "max_pooling_14_U0", "Port" : "pool_to_flat_streams_7"}]}]},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_U0", "Parent" : "104", "Child" : ["106", "107"],
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
			{"Name" : "conv_to_pool_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","40"], "DependentChan" : "317", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","130"], "DependentChan" : "325", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U232", "Parent" : "105"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_U0.flow_control_loop_pipe_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_8_U0", "Parent" : "104", "Child" : ["109", "110"],
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
			{"Name" : "conv_to_pool_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","48"], "DependentChan" : "318", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","132"], "DependentChan" : "326", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_8_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U235", "Parent" : "108"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_8_U0.flow_control_loop_pipe_U", "Parent" : "108"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_9_U0", "Parent" : "104", "Child" : ["112", "113"],
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
			{"Name" : "conv_to_pool_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","56"], "DependentChan" : "319", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","134"], "DependentChan" : "327", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_9_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U238", "Parent" : "111"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_9_U0.flow_control_loop_pipe_U", "Parent" : "111"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_10_U0", "Parent" : "104", "Child" : ["115", "116"],
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
			{"Name" : "conv_to_pool_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","64"], "DependentChan" : "320", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","136"], "DependentChan" : "328", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_10_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U241", "Parent" : "114"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_10_U0.flow_control_loop_pipe_U", "Parent" : "114"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_11_U0", "Parent" : "104", "Child" : ["118", "119"],
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
			{"Name" : "conv_to_pool_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","72"], "DependentChan" : "321", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","138"], "DependentChan" : "329", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_11_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U244", "Parent" : "117"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_11_U0.flow_control_loop_pipe_U", "Parent" : "117"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_12_U0", "Parent" : "104", "Child" : ["121", "122"],
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
			{"Name" : "conv_to_pool_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","80"], "DependentChan" : "322", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","140"], "DependentChan" : "330", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_12_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U247", "Parent" : "120"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_12_U0.flow_control_loop_pipe_U", "Parent" : "120"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_13_U0", "Parent" : "104", "Child" : ["124", "125"],
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
			{"Name" : "conv_to_pool_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","88"], "DependentChan" : "323", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","142"], "DependentChan" : "331", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_6_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_13_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U250", "Parent" : "123"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_13_U0.flow_control_loop_pipe_U", "Parent" : "123"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_14_U0", "Parent" : "104", "Child" : ["127", "128"],
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
			{"Name" : "conv_to_pool_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","96"], "DependentChan" : "324", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["129","144"], "DependentChan" : "332", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_14_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U253", "Parent" : "126"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.max_pooling_layer_U0.max_pooling_14_U0.flow_control_loop_pipe_U", "Parent" : "126"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0", "Parent" : "38", "Child" : ["130", "132", "134", "136", "138", "140", "142", "144"],
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
		"StartSource" : "104",
		"StartFifo" : "start_for_flattening_layer_U0_U",
		"InputProcess" : [
			{"ID" : "130", "Name" : "flattening_U0"},
			{"ID" : "132", "Name" : "flattening_15_U0"},
			{"ID" : "134", "Name" : "flattening_16_U0"},
			{"ID" : "136", "Name" : "flattening_17_U0"},
			{"ID" : "138", "Name" : "flattening_18_U0"},
			{"ID" : "140", "Name" : "flattening_19_U0"},
			{"ID" : "142", "Name" : "flattening_20_U0"},
			{"ID" : "144", "Name" : "flattening_21_U0"}],
		"OutputProcess" : [
			{"ID" : "130", "Name" : "flattening_U0"},
			{"ID" : "132", "Name" : "flattening_15_U0"},
			{"ID" : "134", "Name" : "flattening_16_U0"},
			{"ID" : "136", "Name" : "flattening_17_U0"},
			{"ID" : "138", "Name" : "flattening_18_U0"},
			{"ID" : "140", "Name" : "flattening_19_U0"},
			{"ID" : "142", "Name" : "flattening_20_U0"},
			{"ID" : "144", "Name" : "flattening_21_U0"}],
		"Port" : [
			{"Name" : "pool_to_flat_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","105"], "DependentChan" : "325", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "flattening_U0", "Port" : "pool_to_flat_streams_0"}]},
			{"Name" : "pool_to_flat_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","108"], "DependentChan" : "326", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "flattening_15_U0", "Port" : "pool_to_flat_streams_1"}]},
			{"Name" : "pool_to_flat_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","111"], "DependentChan" : "327", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "flattening_16_U0", "Port" : "pool_to_flat_streams_2"}]},
			{"Name" : "pool_to_flat_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","114"], "DependentChan" : "328", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "flattening_17_U0", "Port" : "pool_to_flat_streams_3"}]},
			{"Name" : "pool_to_flat_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","117"], "DependentChan" : "329", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "flattening_18_U0", "Port" : "pool_to_flat_streams_4"}]},
			{"Name" : "pool_to_flat_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","120"], "DependentChan" : "330", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "flattening_19_U0", "Port" : "pool_to_flat_streams_5"}]},
			{"Name" : "pool_to_flat_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","123"], "DependentChan" : "331", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "flattening_20_U0", "Port" : "pool_to_flat_streams_6"}]},
			{"Name" : "pool_to_flat_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","126"], "DependentChan" : "332", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "flattening_21_U0", "Port" : "pool_to_flat_streams_7"}]},
			{"Name" : "flat_to_dense_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","147"], "DependentChan" : "333", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "flattening_U0", "Port" : "flat_to_dense_streams_0"}]},
			{"Name" : "flat_to_dense_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","167"], "DependentChan" : "334", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "flattening_15_U0", "Port" : "flat_to_dense_streams_1"}]},
			{"Name" : "flat_to_dense_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","187"], "DependentChan" : "335", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "flattening_16_U0", "Port" : "flat_to_dense_streams_2"}]},
			{"Name" : "flat_to_dense_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","207"], "DependentChan" : "336", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "flattening_17_U0", "Port" : "flat_to_dense_streams_3"}]},
			{"Name" : "flat_to_dense_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","227"], "DependentChan" : "337", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "flattening_18_U0", "Port" : "flat_to_dense_streams_4"}]},
			{"Name" : "flat_to_dense_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","247"], "DependentChan" : "338", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "flattening_19_U0", "Port" : "flat_to_dense_streams_5"}]},
			{"Name" : "flat_to_dense_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","267"], "DependentChan" : "339", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "flattening_20_U0", "Port" : "flat_to_dense_streams_6"}]},
			{"Name" : "flat_to_dense_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","287"], "DependentChan" : "340", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "flattening_21_U0", "Port" : "flat_to_dense_streams_7"}]}]},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_U0", "Parent" : "129", "Child" : ["131"],
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
			{"Name" : "pool_to_flat_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","105"], "DependentChan" : "325", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","147"], "DependentChan" : "333", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_U0.flow_control_loop_pipe_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_15_U0", "Parent" : "129", "Child" : ["133"],
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
			{"Name" : "pool_to_flat_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","108"], "DependentChan" : "326", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","167"], "DependentChan" : "334", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_15_U0.flow_control_loop_pipe_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_16_U0", "Parent" : "129", "Child" : ["135"],
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
			{"Name" : "pool_to_flat_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","111"], "DependentChan" : "327", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","187"], "DependentChan" : "335", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_16_U0.flow_control_loop_pipe_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_17_U0", "Parent" : "129", "Child" : ["137"],
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
			{"Name" : "pool_to_flat_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","114"], "DependentChan" : "328", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","207"], "DependentChan" : "336", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_17_U0.flow_control_loop_pipe_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_18_U0", "Parent" : "129", "Child" : ["139"],
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
			{"Name" : "pool_to_flat_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","117"], "DependentChan" : "329", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","227"], "DependentChan" : "337", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_18_U0.flow_control_loop_pipe_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_19_U0", "Parent" : "129", "Child" : ["141"],
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
			{"Name" : "pool_to_flat_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","120"], "DependentChan" : "330", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","247"], "DependentChan" : "338", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_19_U0.flow_control_loop_pipe_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_20_U0", "Parent" : "129", "Child" : ["143"],
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
			{"Name" : "pool_to_flat_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","123"], "DependentChan" : "331", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","267"], "DependentChan" : "339", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_6_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_20_U0.flow_control_loop_pipe_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_21_U0", "Parent" : "129", "Child" : ["145"],
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
			{"Name" : "pool_to_flat_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["104","126"], "DependentChan" : "332", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["146","287"], "DependentChan" : "340", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flattening_layer_U0.flattening_21_U0.flow_control_loop_pipe_U", "Parent" : "144"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0", "Parent" : "38", "Child" : ["147", "167", "187", "207", "227", "247", "267", "287"],
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
		"StartSource" : "129",
		"StartFifo" : "start_for_dense_layer_U0_U",
		"InputProcess" : [
			{"ID" : "147", "Name" : "dense_U0"},
			{"ID" : "167", "Name" : "dense_22_U0"},
			{"ID" : "187", "Name" : "dense_23_U0"},
			{"ID" : "207", "Name" : "dense_24_U0"},
			{"ID" : "227", "Name" : "dense_25_U0"},
			{"ID" : "247", "Name" : "dense_26_U0"},
			{"ID" : "267", "Name" : "dense_27_U0"},
			{"ID" : "287", "Name" : "dense_28_U0"}],
		"OutputProcess" : [
			{"ID" : "147", "Name" : "dense_U0"},
			{"ID" : "167", "Name" : "dense_22_U0"},
			{"ID" : "187", "Name" : "dense_23_U0"},
			{"ID" : "207", "Name" : "dense_24_U0"},
			{"ID" : "227", "Name" : "dense_25_U0"},
			{"ID" : "247", "Name" : "dense_26_U0"},
			{"ID" : "267", "Name" : "dense_27_U0"},
			{"ID" : "287", "Name" : "dense_28_U0"}],
		"Port" : [
			{"Name" : "flat_to_dense_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","130"], "DependentChan" : "333", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "dense_U0", "Port" : "flat_to_dense_streams_0"}]},
			{"Name" : "flat_to_dense_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","132"], "DependentChan" : "334", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "dense_22_U0", "Port" : "flat_to_dense_streams_1"}]},
			{"Name" : "flat_to_dense_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","134"], "DependentChan" : "335", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "dense_23_U0", "Port" : "flat_to_dense_streams_2"}]},
			{"Name" : "flat_to_dense_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","136"], "DependentChan" : "336", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "dense_24_U0", "Port" : "flat_to_dense_streams_3"}]},
			{"Name" : "flat_to_dense_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","138"], "DependentChan" : "337", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_25_U0", "Port" : "flat_to_dense_streams_4"}]},
			{"Name" : "flat_to_dense_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","140"], "DependentChan" : "338", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_26_U0", "Port" : "flat_to_dense_streams_5"}]},
			{"Name" : "flat_to_dense_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","142"], "DependentChan" : "339", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_27_U0", "Port" : "flat_to_dense_streams_6"}]},
			{"Name" : "flat_to_dense_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","144"], "DependentChan" : "340", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_28_U0", "Port" : "flat_to_dense_streams_7"}]},
			{"Name" : "dense_to_softmax_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "341", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "dense_U0", "Port" : "dense_to_softmax_streams_0"}]},
			{"Name" : "dense_to_softmax_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "342", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "dense_22_U0", "Port" : "dense_to_softmax_streams_1"}]},
			{"Name" : "dense_to_softmax_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "343", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "dense_23_U0", "Port" : "dense_to_softmax_streams_2"}]},
			{"Name" : "dense_to_softmax_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "344", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "dense_24_U0", "Port" : "dense_to_softmax_streams_3"}]},
			{"Name" : "dense_to_softmax_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "345", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_25_U0", "Port" : "dense_to_softmax_streams_4"}]},
			{"Name" : "dense_to_softmax_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "346", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_26_U0", "Port" : "dense_to_softmax_streams_5"}]},
			{"Name" : "dense_to_softmax_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "347", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_27_U0", "Port" : "dense_to_softmax_streams_6"}]},
			{"Name" : "dense_to_softmax_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "348", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_28_U0", "Port" : "dense_to_softmax_streams_7"}]},
			{"Name" : "dense_weights_72", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "dense_U0", "Port" : "dense_weights_72"}]},
			{"Name" : "dense_weights_65", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "dense_U0", "Port" : "dense_weights_65"}]},
			{"Name" : "dense_weights_58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "dense_U0", "Port" : "dense_weights_58"}]},
			{"Name" : "dense_weights_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "dense_U0", "Port" : "dense_weights_51"}]},
			{"Name" : "dense_weights_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "dense_U0", "Port" : "dense_weights_44"}]},
			{"Name" : "dense_weights_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "dense_U0", "Port" : "dense_weights_37"}]},
			{"Name" : "dense_weights_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "dense_U0", "Port" : "dense_weights_30"}]},
			{"Name" : "dense_weights_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "dense_U0", "Port" : "dense_weights_23"}]},
			{"Name" : "dense_weights_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "dense_U0", "Port" : "dense_weights_16"}]},
			{"Name" : "dense_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "dense_U0", "Port" : "dense_weights"}]},
			{"Name" : "dense_weights_73", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_73"}]},
			{"Name" : "dense_weights_66", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_66"}]},
			{"Name" : "dense_weights_59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_59"}]},
			{"Name" : "dense_weights_52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_52"}]},
			{"Name" : "dense_weights_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_45"}]},
			{"Name" : "dense_weights_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_38"}]},
			{"Name" : "dense_weights_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_31"}]},
			{"Name" : "dense_weights_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_24"}]},
			{"Name" : "dense_weights_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_17"}]},
			{"Name" : "dense_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_10"}]},
			{"Name" : "dense_weights_74", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_74"}]},
			{"Name" : "dense_weights_67", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_67"}]},
			{"Name" : "dense_weights_60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_60"}]},
			{"Name" : "dense_weights_53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_53"}]},
			{"Name" : "dense_weights_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_46"}]},
			{"Name" : "dense_weights_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_39"}]},
			{"Name" : "dense_weights_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_32"}]},
			{"Name" : "dense_weights_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_25"}]},
			{"Name" : "dense_weights_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_18"}]},
			{"Name" : "dense_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_11"}]},
			{"Name" : "dense_weights_75", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_75"}]},
			{"Name" : "dense_weights_68", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_68"}]},
			{"Name" : "dense_weights_61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_61"}]},
			{"Name" : "dense_weights_54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_54"}]},
			{"Name" : "dense_weights_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_47"}]},
			{"Name" : "dense_weights_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_40"}]},
			{"Name" : "dense_weights_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_33"}]},
			{"Name" : "dense_weights_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_26"}]},
			{"Name" : "dense_weights_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_19"}]},
			{"Name" : "dense_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_12"}]},
			{"Name" : "dense_weights_76", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_76"}]},
			{"Name" : "dense_weights_69", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_69"}]},
			{"Name" : "dense_weights_62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_62"}]},
			{"Name" : "dense_weights_55", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_55"}]},
			{"Name" : "dense_weights_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_48"}]},
			{"Name" : "dense_weights_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_41"}]},
			{"Name" : "dense_weights_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_34"}]},
			{"Name" : "dense_weights_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_27"}]},
			{"Name" : "dense_weights_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_20"}]},
			{"Name" : "dense_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_13"}]},
			{"Name" : "dense_weights_77", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_77"}]},
			{"Name" : "dense_weights_70", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_70"}]},
			{"Name" : "dense_weights_63", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_63"}]},
			{"Name" : "dense_weights_56", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_56"}]},
			{"Name" : "dense_weights_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_49"}]},
			{"Name" : "dense_weights_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_42"}]},
			{"Name" : "dense_weights_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_35"}]},
			{"Name" : "dense_weights_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_28"}]},
			{"Name" : "dense_weights_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_21"}]},
			{"Name" : "dense_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_14"}]},
			{"Name" : "dense_weights_78", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_78"}]},
			{"Name" : "dense_weights_71", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_71"}]},
			{"Name" : "dense_weights_64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_64"}]},
			{"Name" : "dense_weights_57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_57"}]},
			{"Name" : "dense_weights_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_50"}]},
			{"Name" : "dense_weights_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_43"}]},
			{"Name" : "dense_weights_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_36"}]},
			{"Name" : "dense_weights_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_29"}]},
			{"Name" : "dense_weights_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_22"}]},
			{"Name" : "dense_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_15"}]},
			{"Name" : "dense_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_0"}]},
			{"Name" : "dense_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_1"}]},
			{"Name" : "dense_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_2"}]},
			{"Name" : "dense_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_3"}]},
			{"Name" : "dense_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_4"}]},
			{"Name" : "dense_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_5"}]},
			{"Name" : "dense_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_6"}]},
			{"Name" : "dense_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_7"}]},
			{"Name" : "dense_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_8"}]},
			{"Name" : "dense_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_9"}]}]},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0", "Parent" : "146", "Child" : ["148", "149", "151", "165"],
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
			{"Name" : "flat_to_dense_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","130"], "DependentChan" : "333", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_0", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "341", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_dense_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_72", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_72", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_65", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_65", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_58", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_51", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_44", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_37", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_30", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_23", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_16", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.dense_array_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_1_fu_195", "Parent" : "147", "Child" : ["150"],
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
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201", "Parent" : "147", "Child" : ["152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164"],
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
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_72_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_65_U", "Parent" : "151"},
	{"ID" : "154", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_58_U", "Parent" : "151"},
	{"ID" : "155", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_51_U", "Parent" : "151"},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_44_U", "Parent" : "151"},
	{"ID" : "157", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_37_U", "Parent" : "151"},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_30_U", "Parent" : "151"},
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_23_U", "Parent" : "151"},
	{"ID" : "160", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_16_U", "Parent" : "151"},
	{"ID" : "161", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_U", "Parent" : "151"},
	{"ID" : "162", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U305", "Parent" : "151"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U306", "Parent" : "151"},
	{"ID" : "164", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "151"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "147", "Child" : ["166"],
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
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_U0.grp_dense_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0", "Parent" : "146", "Child" : ["168", "169", "171", "185"],
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
			{"Name" : "flat_to_dense_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","132"], "DependentChan" : "334", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_1", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "342", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_dense_22_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_73", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_73", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_66", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_66", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_59", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_52", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_45", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_38", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_31", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_24", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_17", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_10", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.dense_array_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_1_fu_195", "Parent" : "167", "Child" : ["170"],
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
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201", "Parent" : "167", "Child" : ["172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184"],
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
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_73_U", "Parent" : "171"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_66_U", "Parent" : "171"},
	{"ID" : "174", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_59_U", "Parent" : "171"},
	{"ID" : "175", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_52_U", "Parent" : "171"},
	{"ID" : "176", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_45_U", "Parent" : "171"},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_38_U", "Parent" : "171"},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_31_U", "Parent" : "171"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_24_U", "Parent" : "171"},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_17_U", "Parent" : "171"},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_10_U", "Parent" : "171"},
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U344", "Parent" : "171"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U345", "Parent" : "171"},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "171"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "167", "Child" : ["186"],
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
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_22_U0.grp_dense_22_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0", "Parent" : "146", "Child" : ["188", "189", "191", "205"],
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
			{"Name" : "flat_to_dense_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","134"], "DependentChan" : "335", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_2", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "343", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "grp_dense_23_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_2", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_74", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_74", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_67", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_67", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_60", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_53", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_46", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_39", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_32", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_25", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_18", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_11", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.dense_array_U", "Parent" : "187"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_1_fu_195", "Parent" : "187", "Child" : ["190"],
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
	{"ID" : "190", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "189"},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201", "Parent" : "187", "Child" : ["192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204"],
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
	{"ID" : "192", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_74_U", "Parent" : "191"},
	{"ID" : "193", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_67_U", "Parent" : "191"},
	{"ID" : "194", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_60_U", "Parent" : "191"},
	{"ID" : "195", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_53_U", "Parent" : "191"},
	{"ID" : "196", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_46_U", "Parent" : "191"},
	{"ID" : "197", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_39_U", "Parent" : "191"},
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_32_U", "Parent" : "191"},
	{"ID" : "199", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_25_U", "Parent" : "191"},
	{"ID" : "200", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_18_U", "Parent" : "191"},
	{"ID" : "201", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_11_U", "Parent" : "191"},
	{"ID" : "202", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U372", "Parent" : "191"},
	{"ID" : "203", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U373", "Parent" : "191"},
	{"ID" : "204", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "191"},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "187", "Child" : ["206"],
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
	{"ID" : "206", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_23_U0.grp_dense_23_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "205"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0", "Parent" : "146", "Child" : ["208", "209", "211", "225"],
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
			{"Name" : "flat_to_dense_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","136"], "DependentChan" : "336", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_3", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "344", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_dense_24_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_3", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_75", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_75", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_68", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_68", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_61", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_54", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_47", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_40", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_33", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_26", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_19", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_12", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.dense_array_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_1_fu_195", "Parent" : "207", "Child" : ["210"],
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
	{"ID" : "210", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "209"},
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201", "Parent" : "207", "Child" : ["212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224"],
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
	{"ID" : "212", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_75_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_68_U", "Parent" : "211"},
	{"ID" : "214", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_61_U", "Parent" : "211"},
	{"ID" : "215", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_54_U", "Parent" : "211"},
	{"ID" : "216", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_47_U", "Parent" : "211"},
	{"ID" : "217", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_40_U", "Parent" : "211"},
	{"ID" : "218", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_33_U", "Parent" : "211"},
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_26_U", "Parent" : "211"},
	{"ID" : "220", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_19_U", "Parent" : "211"},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_12_U", "Parent" : "211"},
	{"ID" : "222", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U400", "Parent" : "211"},
	{"ID" : "223", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U401", "Parent" : "211"},
	{"ID" : "224", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "211"},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "207", "Child" : ["226"],
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
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_24_U0.grp_dense_24_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0", "Parent" : "146", "Child" : ["228", "229", "231", "245"],
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
			{"Name" : "flat_to_dense_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","138"], "DependentChan" : "337", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "345", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "245", "SubInstance" : "grp_dense_25_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_4", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_76", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_76", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_69", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_69", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_62", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_55", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_55", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_48", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_41", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_34", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_27", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_20", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_13", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.dense_array_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_1_fu_195", "Parent" : "227", "Child" : ["230"],
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
	{"ID" : "230", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201", "Parent" : "227", "Child" : ["232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244"],
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
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_76_U", "Parent" : "231"},
	{"ID" : "233", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_69_U", "Parent" : "231"},
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_62_U", "Parent" : "231"},
	{"ID" : "235", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_55_U", "Parent" : "231"},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_48_U", "Parent" : "231"},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_41_U", "Parent" : "231"},
	{"ID" : "238", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_34_U", "Parent" : "231"},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_27_U", "Parent" : "231"},
	{"ID" : "240", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_20_U", "Parent" : "231"},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_13_U", "Parent" : "231"},
	{"ID" : "242", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U428", "Parent" : "231"},
	{"ID" : "243", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U429", "Parent" : "231"},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "231"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "227", "Child" : ["246"],
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
	{"ID" : "246", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_25_U0.grp_dense_25_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "245"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0", "Parent" : "146", "Child" : ["248", "249", "251", "265"],
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
			{"Name" : "flat_to_dense_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","140"], "DependentChan" : "338", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_5", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "346", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "grp_dense_26_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_5", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_77", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_77", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_70", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_70", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_63", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_63", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_56", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_56", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_49", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_42", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_35", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_28", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_21", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_14", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.dense_array_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_1_fu_195", "Parent" : "247", "Child" : ["250"],
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
	{"ID" : "250", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201", "Parent" : "247", "Child" : ["252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264"],
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
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_77_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_70_U", "Parent" : "251"},
	{"ID" : "254", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_63_U", "Parent" : "251"},
	{"ID" : "255", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_56_U", "Parent" : "251"},
	{"ID" : "256", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_49_U", "Parent" : "251"},
	{"ID" : "257", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_42_U", "Parent" : "251"},
	{"ID" : "258", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_35_U", "Parent" : "251"},
	{"ID" : "259", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_28_U", "Parent" : "251"},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_21_U", "Parent" : "251"},
	{"ID" : "261", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_14_U", "Parent" : "251"},
	{"ID" : "262", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U456", "Parent" : "251"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U457", "Parent" : "251"},
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "251"},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "247", "Child" : ["266"],
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
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_26_U0.grp_dense_26_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0", "Parent" : "146", "Child" : ["268", "269", "271", "285"],
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
			{"Name" : "flat_to_dense_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","142"], "DependentChan" : "339", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "347", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "285", "SubInstance" : "grp_dense_27_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_6", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_78", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_78", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_71", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_71", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_64", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_57", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_50", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_43", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_36", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_29", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_22", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_15", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.dense_array_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_1_fu_195", "Parent" : "267", "Child" : ["270"],
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
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201", "Parent" : "267", "Child" : ["272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284"],
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
	{"ID" : "272", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_78_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_71_U", "Parent" : "271"},
	{"ID" : "274", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_64_U", "Parent" : "271"},
	{"ID" : "275", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_57_U", "Parent" : "271"},
	{"ID" : "276", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_50_U", "Parent" : "271"},
	{"ID" : "277", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_43_U", "Parent" : "271"},
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_36_U", "Parent" : "271"},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_29_U", "Parent" : "271"},
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_22_U", "Parent" : "271"},
	{"ID" : "281", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_15_U", "Parent" : "271"},
	{"ID" : "282", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U484", "Parent" : "271"},
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U485", "Parent" : "271"},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "271"},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "267", "Child" : ["286"],
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
	{"ID" : "286", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_27_U0.grp_dense_27_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0", "Parent" : "146", "Child" : ["288", "289", "291", "305"],
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
			{"Name" : "flat_to_dense_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["129","144"], "DependentChan" : "340", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_7", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["307"], "DependentChan" : "348", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_dense_28_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_7", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_0", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_1", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_2", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_3", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_5", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_7", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_8", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_9", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.dense_array_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_1_fu_195", "Parent" : "287", "Child" : ["290"],
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
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201", "Parent" : "287", "Child" : ["292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304"],
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
	{"ID" : "292", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_0_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_1_U", "Parent" : "291"},
	{"ID" : "294", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_2_U", "Parent" : "291"},
	{"ID" : "295", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_3_U", "Parent" : "291"},
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_4_U", "Parent" : "291"},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_5_U", "Parent" : "291"},
	{"ID" : "298", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_6_U", "Parent" : "291"},
	{"ID" : "299", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_7_U", "Parent" : "291"},
	{"ID" : "300", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_8_U", "Parent" : "291"},
	{"ID" : "301", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_9_U", "Parent" : "291"},
	{"ID" : "302", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U512", "Parent" : "291"},
	{"ID" : "303", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U513", "Parent" : "291"},
	{"ID" : "304", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "291"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "287", "Child" : ["306"],
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
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_U0.dense_28_U0.grp_dense_28_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0", "Parent" : "38", "Child" : ["308", "314"],
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
			{"Name" : "dense_to_softmax_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["146","147"], "DependentChan" : "341", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_to_softmax_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["146","167"], "DependentChan" : "342", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_to_softmax_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["146","187"], "DependentChan" : "343", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_to_softmax_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["146","207"], "DependentChan" : "344", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_to_softmax_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["146","227"], "DependentChan" : "345", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_to_softmax_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["146","247"], "DependentChan" : "346", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_to_softmax_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["146","267"], "DependentChan" : "347", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_to_softmax_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["146","287"], "DependentChan" : "348", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_to_softmax_streams_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "prediction", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "prediction", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "314", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_digits_fu_69", "Port" : "prediction", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dense_biases", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Port" : "dense_biases", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44", "Parent" : "307", "Child" : ["309", "310", "311", "312", "313"],
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
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44.dense_biases_U", "Parent" : "308"},
	{"ID" : "310", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44.fadd_32ns_32ns_32_7_full_dsp_1_U555", "Parent" : "308"},
	{"ID" : "311", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44.fadd_32ns_32ns_32_7_full_dsp_1_U556", "Parent" : "308"},
	{"ID" : "312", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44.fexp_32ns_32ns_32_10_full_dsp_1_U557", "Parent" : "308"},
	{"ID" : "313", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "308"},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_digits_fu_69", "Parent" : "307", "Child" : ["315", "316"],
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
	{"ID" : "315", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_digits_fu_69.fdiv_32ns_32ns_32_16_no_dsp_1_U570", "Parent" : "314"},
	{"ID" : "316", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_layer_soft_max_U0.grp_dense_layer_soft_max_Pipeline_dense_soft_max_for_digits_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "314"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_0_U", "Parent" : "38"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_1_U", "Parent" : "38"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_2_U", "Parent" : "38"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_3_U", "Parent" : "38"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_4_U", "Parent" : "38"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_5_U", "Parent" : "38"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_6_U", "Parent" : "38"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.conv_to_pool_streams_7_U", "Parent" : "38"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_0_U", "Parent" : "38"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_1_U", "Parent" : "38"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_2_U", "Parent" : "38"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_3_U", "Parent" : "38"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_4_U", "Parent" : "38"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_5_U", "Parent" : "38"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_6_U", "Parent" : "38"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.pool_to_flat_streams_7_U", "Parent" : "38"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_0_U", "Parent" : "38"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_1_U", "Parent" : "38"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_2_U", "Parent" : "38"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_3_U", "Parent" : "38"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_4_U", "Parent" : "38"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_5_U", "Parent" : "38"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_6_U", "Parent" : "38"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.flat_to_dense_streams_7_U", "Parent" : "38"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_0_U", "Parent" : "38"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_1_U", "Parent" : "38"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_2_U", "Parent" : "38"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_3_U", "Parent" : "38"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_4_U", "Parent" : "38"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_5_U", "Parent" : "38"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_6_U", "Parent" : "38"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.dense_to_softmax_streams_7_U", "Parent" : "38"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.start_for_max_pooling_layer_U0_U", "Parent" : "38"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.start_for_flattening_layer_U0_U", "Parent" : "38"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_section_fu_446.start_for_dense_layer_U0_U", "Parent" : "38"}]}


set ArgLastReadFirstWriteLatency {
	cnn {
		img_in {Type I LastRead 1 FirstWrite -1}
		prediction {Type IO LastRead 0 FirstWrite 18}
		weight_buf {Type I LastRead 1 FirstWrite -1}
		biases_buf {Type I LastRead 16 FirstWrite -1}
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
		biases_buf {Type I LastRead 4 FirstWrite -1}
		conv_to_pool_streams_0 {Type O LastRead -1 FirstWrite 80}}
	convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols {
		pad_img {Type I LastRead 7 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		w_57 {Type I LastRead 0 FirstWrite -1}
		w_58 {Type I LastRead 0 FirstWrite -1}
		w_59 {Type I LastRead 0 FirstWrite -1}
		w_60 {Type I LastRead 0 FirstWrite -1}
		w_61 {Type I LastRead 0 FirstWrite -1}
		w_62 {Type I LastRead 0 FirstWrite -1}
		w_63 {Type I LastRead 0 FirstWrite -1}
		w_64 {Type I LastRead 0 FirstWrite -1}
		biases_buf {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_0 {Type O LastRead -1 FirstWrite 80}}
	convolution_1 {
		pad_img {Type I LastRead 7 FirstWrite -1}
		weight_buf {Type I LastRead 5 FirstWrite -1}
		biases_buf {Type I LastRead 4 FirstWrite -1}
		conv_to_pool_streams_1 {Type O LastRead -1 FirstWrite 80}}
	convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols {
		pad_img {Type I LastRead 7 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		w_49 {Type I LastRead 0 FirstWrite -1}
		w_50 {Type I LastRead 0 FirstWrite -1}
		w_51 {Type I LastRead 0 FirstWrite -1}
		w_52 {Type I LastRead 0 FirstWrite -1}
		w_53 {Type I LastRead 0 FirstWrite -1}
		w_54 {Type I LastRead 0 FirstWrite -1}
		w_55 {Type I LastRead 0 FirstWrite -1}
		w_56 {Type I LastRead 0 FirstWrite -1}
		biases_buf {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_1 {Type O LastRead -1 FirstWrite 80}}
	convolution_2 {
		pad_img {Type I LastRead 7 FirstWrite -1}
		weight_buf {Type I LastRead 5 FirstWrite -1}
		biases_buf {Type I LastRead 4 FirstWrite -1}
		conv_to_pool_streams_2 {Type O LastRead -1 FirstWrite 80}}
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
		conv_to_pool_streams_2 {Type O LastRead -1 FirstWrite 80}}
	convolution_3 {
		pad_img {Type I LastRead 7 FirstWrite -1}
		weight_buf {Type I LastRead 5 FirstWrite -1}
		biases_buf {Type I LastRead 4 FirstWrite -1}
		conv_to_pool_streams_3 {Type O LastRead -1 FirstWrite 80}}
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
		conv_to_pool_streams_3 {Type O LastRead -1 FirstWrite 80}}
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
		conv_to_pool_streams_4 {Type O LastRead -1 FirstWrite 80}}
	convolution_5 {
		pad_img {Type I LastRead 7 FirstWrite -1}
		weight_buf {Type I LastRead 5 FirstWrite -1}
		biases_buf {Type I LastRead 4 FirstWrite -1}
		conv_to_pool_streams_5 {Type O LastRead -1 FirstWrite 80}}
	convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols {
		pad_img {Type I LastRead 7 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		w_17 {Type I LastRead 0 FirstWrite -1}
		w_18 {Type I LastRead 0 FirstWrite -1}
		w_19 {Type I LastRead 0 FirstWrite -1}
		w_20 {Type I LastRead 0 FirstWrite -1}
		w_21 {Type I LastRead 0 FirstWrite -1}
		w_22 {Type I LastRead 0 FirstWrite -1}
		w_23 {Type I LastRead 0 FirstWrite -1}
		w_24 {Type I LastRead 0 FirstWrite -1}
		biases_buf {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_5 {Type O LastRead -1 FirstWrite 80}}
	convolution_6 {
		pad_img {Type I LastRead 7 FirstWrite -1}
		weight_buf {Type I LastRead 5 FirstWrite -1}
		biases_buf {Type I LastRead 4 FirstWrite -1}
		conv_to_pool_streams_6 {Type O LastRead -1 FirstWrite 80}}
	convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols {
		pad_img {Type I LastRead 7 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		w_9 {Type I LastRead 0 FirstWrite -1}
		w_10 {Type I LastRead 0 FirstWrite -1}
		w_11 {Type I LastRead 0 FirstWrite -1}
		w_12 {Type I LastRead 0 FirstWrite -1}
		w_13 {Type I LastRead 0 FirstWrite -1}
		w_14 {Type I LastRead 0 FirstWrite -1}
		w_15 {Type I LastRead 0 FirstWrite -1}
		w_16 {Type I LastRead 0 FirstWrite -1}
		biases_buf {Type I LastRead 0 FirstWrite -1}
		conv_to_pool_streams_6 {Type O LastRead -1 FirstWrite 80}}
	convolution_7 {
		pad_img {Type I LastRead 7 FirstWrite -1}
		weight_buf {Type I LastRead 5 FirstWrite -1}
		biases_buf {Type I LastRead 4 FirstWrite -1}
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
		biases_buf {Type I LastRead 0 FirstWrite -1}
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
	{"Name" : "Latency", "Min" : "5914", "Max" : "5914"}
	, {"Name" : "Interval", "Min" : "5915", "Max" : "5915"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_in { ap_memory {  { img_in_address0 mem_address 1 10 }  { img_in_ce0 mem_ce 1 1 }  { img_in_q0 mem_dout 0 32 } } }
	prediction { ap_memory {  { prediction_address0 mem_address 1 4 }  { prediction_ce0 mem_ce 1 1 }  { prediction_we0 mem_we 1 1 }  { prediction_d0 mem_din 1 32 }  { prediction_address1 MemPortADDR2 1 4 }  { prediction_ce1 MemPortCE2 1 1 }  { prediction_q1 MemPortDOUT2 0 32 } } }
	weight_buf { ap_memory {  { weight_buf_address0 mem_address 1 7 }  { weight_buf_ce0 mem_ce 1 1 }  { weight_buf_q0 mem_dout 0 32 } } }
	biases_buf { ap_memory {  { biases_buf_address0 mem_address 1 3 }  { biases_buf_ce0 mem_ce 1 1 }  { biases_buf_q0 in_data 0 32 }  { biases_buf_address1 MemPortADDR2 1 3 }  { biases_buf_ce1 MemPortCE2 1 1 }  { biases_buf_q1 in_data 0 32 } } }
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
