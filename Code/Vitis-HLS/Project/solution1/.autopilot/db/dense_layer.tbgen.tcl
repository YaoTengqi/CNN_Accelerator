set moduleName dense_layer
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dense_layer}
set C_modelType { void 0 }
set C_modelArgList {
	{ flat_to_dense_streams_0 int 32 regular {fifo 0 volatile }  }
	{ flat_to_dense_streams_1 int 32 regular {fifo 0 volatile }  }
	{ flat_to_dense_streams_2 int 32 regular {fifo 0 volatile }  }
	{ flat_to_dense_streams_3 int 32 regular {fifo 0 volatile }  }
	{ flat_to_dense_streams_4 int 32 regular {fifo 0 volatile }  }
	{ flat_to_dense_streams_5 int 32 regular {fifo 0 volatile }  }
	{ flat_to_dense_streams_6 int 32 regular {fifo 0 volatile }  }
	{ flat_to_dense_streams_7 int 32 regular {fifo 0 volatile }  }
	{ dense_to_softmax_streams_0 int 32 regular {fifo 1 volatile }  }
	{ dense_to_softmax_streams_1 int 32 regular {fifo 1 volatile }  }
	{ dense_to_softmax_streams_2 int 32 regular {fifo 1 volatile }  }
	{ dense_to_softmax_streams_3 int 32 regular {fifo 1 volatile }  }
	{ dense_to_softmax_streams_4 int 32 regular {fifo 1 volatile }  }
	{ dense_to_softmax_streams_5 int 32 regular {fifo 1 volatile }  }
	{ dense_to_softmax_streams_6 int 32 regular {fifo 1 volatile }  }
	{ dense_to_softmax_streams_7 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "flat_to_dense_streams_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flat_to_dense_streams_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flat_to_dense_streams_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flat_to_dense_streams_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flat_to_dense_streams_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flat_to_dense_streams_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flat_to_dense_streams_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flat_to_dense_streams_7", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense_to_softmax_streams_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dense_to_softmax_streams_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dense_to_softmax_streams_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dense_to_softmax_streams_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dense_to_softmax_streams_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dense_to_softmax_streams_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dense_to_softmax_streams_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dense_to_softmax_streams_7", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 55
set portList { 
	{ flat_to_dense_streams_0_dout sc_in sc_lv 32 signal 0 } 
	{ flat_to_dense_streams_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ flat_to_dense_streams_0_read sc_out sc_logic 1 signal 0 } 
	{ flat_to_dense_streams_1_dout sc_in sc_lv 32 signal 1 } 
	{ flat_to_dense_streams_1_empty_n sc_in sc_logic 1 signal 1 } 
	{ flat_to_dense_streams_1_read sc_out sc_logic 1 signal 1 } 
	{ flat_to_dense_streams_2_dout sc_in sc_lv 32 signal 2 } 
	{ flat_to_dense_streams_2_empty_n sc_in sc_logic 1 signal 2 } 
	{ flat_to_dense_streams_2_read sc_out sc_logic 1 signal 2 } 
	{ flat_to_dense_streams_3_dout sc_in sc_lv 32 signal 3 } 
	{ flat_to_dense_streams_3_empty_n sc_in sc_logic 1 signal 3 } 
	{ flat_to_dense_streams_3_read sc_out sc_logic 1 signal 3 } 
	{ flat_to_dense_streams_4_dout sc_in sc_lv 32 signal 4 } 
	{ flat_to_dense_streams_4_empty_n sc_in sc_logic 1 signal 4 } 
	{ flat_to_dense_streams_4_read sc_out sc_logic 1 signal 4 } 
	{ flat_to_dense_streams_5_dout sc_in sc_lv 32 signal 5 } 
	{ flat_to_dense_streams_5_empty_n sc_in sc_logic 1 signal 5 } 
	{ flat_to_dense_streams_5_read sc_out sc_logic 1 signal 5 } 
	{ flat_to_dense_streams_6_dout sc_in sc_lv 32 signal 6 } 
	{ flat_to_dense_streams_6_empty_n sc_in sc_logic 1 signal 6 } 
	{ flat_to_dense_streams_6_read sc_out sc_logic 1 signal 6 } 
	{ flat_to_dense_streams_7_dout sc_in sc_lv 32 signal 7 } 
	{ flat_to_dense_streams_7_empty_n sc_in sc_logic 1 signal 7 } 
	{ flat_to_dense_streams_7_read sc_out sc_logic 1 signal 7 } 
	{ dense_to_softmax_streams_0_din sc_out sc_lv 32 signal 8 } 
	{ dense_to_softmax_streams_0_full_n sc_in sc_logic 1 signal 8 } 
	{ dense_to_softmax_streams_0_write sc_out sc_logic 1 signal 8 } 
	{ dense_to_softmax_streams_1_din sc_out sc_lv 32 signal 9 } 
	{ dense_to_softmax_streams_1_full_n sc_in sc_logic 1 signal 9 } 
	{ dense_to_softmax_streams_1_write sc_out sc_logic 1 signal 9 } 
	{ dense_to_softmax_streams_2_din sc_out sc_lv 32 signal 10 } 
	{ dense_to_softmax_streams_2_full_n sc_in sc_logic 1 signal 10 } 
	{ dense_to_softmax_streams_2_write sc_out sc_logic 1 signal 10 } 
	{ dense_to_softmax_streams_3_din sc_out sc_lv 32 signal 11 } 
	{ dense_to_softmax_streams_3_full_n sc_in sc_logic 1 signal 11 } 
	{ dense_to_softmax_streams_3_write sc_out sc_logic 1 signal 11 } 
	{ dense_to_softmax_streams_4_din sc_out sc_lv 32 signal 12 } 
	{ dense_to_softmax_streams_4_full_n sc_in sc_logic 1 signal 12 } 
	{ dense_to_softmax_streams_4_write sc_out sc_logic 1 signal 12 } 
	{ dense_to_softmax_streams_5_din sc_out sc_lv 32 signal 13 } 
	{ dense_to_softmax_streams_5_full_n sc_in sc_logic 1 signal 13 } 
	{ dense_to_softmax_streams_5_write sc_out sc_logic 1 signal 13 } 
	{ dense_to_softmax_streams_6_din sc_out sc_lv 32 signal 14 } 
	{ dense_to_softmax_streams_6_full_n sc_in sc_logic 1 signal 14 } 
	{ dense_to_softmax_streams_6_write sc_out sc_logic 1 signal 14 } 
	{ dense_to_softmax_streams_7_din sc_out sc_lv 32 signal 15 } 
	{ dense_to_softmax_streams_7_full_n sc_in sc_logic 1 signal 15 } 
	{ dense_to_softmax_streams_7_write sc_out sc_logic 1 signal 15 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "flat_to_dense_streams_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flat_to_dense_streams_0", "role": "dout" }} , 
 	{ "name": "flat_to_dense_streams_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_0", "role": "empty_n" }} , 
 	{ "name": "flat_to_dense_streams_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_0", "role": "read" }} , 
 	{ "name": "flat_to_dense_streams_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flat_to_dense_streams_1", "role": "dout" }} , 
 	{ "name": "flat_to_dense_streams_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_1", "role": "empty_n" }} , 
 	{ "name": "flat_to_dense_streams_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_1", "role": "read" }} , 
 	{ "name": "flat_to_dense_streams_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flat_to_dense_streams_2", "role": "dout" }} , 
 	{ "name": "flat_to_dense_streams_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_2", "role": "empty_n" }} , 
 	{ "name": "flat_to_dense_streams_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_2", "role": "read" }} , 
 	{ "name": "flat_to_dense_streams_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flat_to_dense_streams_3", "role": "dout" }} , 
 	{ "name": "flat_to_dense_streams_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_3", "role": "empty_n" }} , 
 	{ "name": "flat_to_dense_streams_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_3", "role": "read" }} , 
 	{ "name": "flat_to_dense_streams_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flat_to_dense_streams_4", "role": "dout" }} , 
 	{ "name": "flat_to_dense_streams_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_4", "role": "empty_n" }} , 
 	{ "name": "flat_to_dense_streams_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_4", "role": "read" }} , 
 	{ "name": "flat_to_dense_streams_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flat_to_dense_streams_5", "role": "dout" }} , 
 	{ "name": "flat_to_dense_streams_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_5", "role": "empty_n" }} , 
 	{ "name": "flat_to_dense_streams_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_5", "role": "read" }} , 
 	{ "name": "flat_to_dense_streams_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flat_to_dense_streams_6", "role": "dout" }} , 
 	{ "name": "flat_to_dense_streams_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_6", "role": "empty_n" }} , 
 	{ "name": "flat_to_dense_streams_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_6", "role": "read" }} , 
 	{ "name": "flat_to_dense_streams_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flat_to_dense_streams_7", "role": "dout" }} , 
 	{ "name": "flat_to_dense_streams_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_7", "role": "empty_n" }} , 
 	{ "name": "flat_to_dense_streams_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_7", "role": "read" }} , 
 	{ "name": "dense_to_softmax_streams_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_0", "role": "din" }} , 
 	{ "name": "dense_to_softmax_streams_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_0", "role": "full_n" }} , 
 	{ "name": "dense_to_softmax_streams_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_0", "role": "write" }} , 
 	{ "name": "dense_to_softmax_streams_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_1", "role": "din" }} , 
 	{ "name": "dense_to_softmax_streams_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_1", "role": "full_n" }} , 
 	{ "name": "dense_to_softmax_streams_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_1", "role": "write" }} , 
 	{ "name": "dense_to_softmax_streams_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_2", "role": "din" }} , 
 	{ "name": "dense_to_softmax_streams_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_2", "role": "full_n" }} , 
 	{ "name": "dense_to_softmax_streams_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_2", "role": "write" }} , 
 	{ "name": "dense_to_softmax_streams_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_3", "role": "din" }} , 
 	{ "name": "dense_to_softmax_streams_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_3", "role": "full_n" }} , 
 	{ "name": "dense_to_softmax_streams_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_3", "role": "write" }} , 
 	{ "name": "dense_to_softmax_streams_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_4", "role": "din" }} , 
 	{ "name": "dense_to_softmax_streams_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_4", "role": "full_n" }} , 
 	{ "name": "dense_to_softmax_streams_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_4", "role": "write" }} , 
 	{ "name": "dense_to_softmax_streams_5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_5", "role": "din" }} , 
 	{ "name": "dense_to_softmax_streams_5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_5", "role": "full_n" }} , 
 	{ "name": "dense_to_softmax_streams_5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_5", "role": "write" }} , 
 	{ "name": "dense_to_softmax_streams_6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_6", "role": "din" }} , 
 	{ "name": "dense_to_softmax_streams_6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_6", "role": "full_n" }} , 
 	{ "name": "dense_to_softmax_streams_6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_6", "role": "write" }} , 
 	{ "name": "dense_to_softmax_streams_7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_7", "role": "din" }} , 
 	{ "name": "dense_to_softmax_streams_7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_7", "role": "full_n" }} , 
 	{ "name": "dense_to_softmax_streams_7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_to_softmax_streams_7", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "21", "41", "61", "81", "101", "121", "141"],
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
		"InputProcess" : [
			{"ID" : "1", "Name" : "dense_U0"},
			{"ID" : "21", "Name" : "dense_22_U0"},
			{"ID" : "41", "Name" : "dense_23_U0"},
			{"ID" : "61", "Name" : "dense_24_U0"},
			{"ID" : "81", "Name" : "dense_25_U0"},
			{"ID" : "101", "Name" : "dense_26_U0"},
			{"ID" : "121", "Name" : "dense_27_U0"},
			{"ID" : "141", "Name" : "dense_28_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "dense_U0"},
			{"ID" : "21", "Name" : "dense_22_U0"},
			{"ID" : "41", "Name" : "dense_23_U0"},
			{"ID" : "61", "Name" : "dense_24_U0"},
			{"ID" : "81", "Name" : "dense_25_U0"},
			{"ID" : "101", "Name" : "dense_26_U0"},
			{"ID" : "121", "Name" : "dense_27_U0"},
			{"ID" : "141", "Name" : "dense_28_U0"}],
		"Port" : [
			{"Name" : "flat_to_dense_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dense_U0", "Port" : "flat_to_dense_streams_0"}]},
			{"Name" : "flat_to_dense_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dense_22_U0", "Port" : "flat_to_dense_streams_1"}]},
			{"Name" : "flat_to_dense_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "dense_23_U0", "Port" : "flat_to_dense_streams_2"}]},
			{"Name" : "flat_to_dense_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "dense_24_U0", "Port" : "flat_to_dense_streams_3"}]},
			{"Name" : "flat_to_dense_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "dense_25_U0", "Port" : "flat_to_dense_streams_4"}]},
			{"Name" : "flat_to_dense_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "dense_26_U0", "Port" : "flat_to_dense_streams_5"}]},
			{"Name" : "flat_to_dense_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "dense_27_U0", "Port" : "flat_to_dense_streams_6"}]},
			{"Name" : "flat_to_dense_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "dense_28_U0", "Port" : "flat_to_dense_streams_7"}]},
			{"Name" : "dense_to_softmax_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dense_U0", "Port" : "dense_to_softmax_streams_0"}]},
			{"Name" : "dense_to_softmax_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dense_22_U0", "Port" : "dense_to_softmax_streams_1"}]},
			{"Name" : "dense_to_softmax_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "dense_23_U0", "Port" : "dense_to_softmax_streams_2"}]},
			{"Name" : "dense_to_softmax_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "dense_24_U0", "Port" : "dense_to_softmax_streams_3"}]},
			{"Name" : "dense_to_softmax_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "dense_25_U0", "Port" : "dense_to_softmax_streams_4"}]},
			{"Name" : "dense_to_softmax_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "dense_26_U0", "Port" : "dense_to_softmax_streams_5"}]},
			{"Name" : "dense_to_softmax_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "dense_27_U0", "Port" : "dense_to_softmax_streams_6"}]},
			{"Name" : "dense_to_softmax_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "dense_28_U0", "Port" : "dense_to_softmax_streams_7"}]},
			{"Name" : "dense_weights_72", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dense_U0", "Port" : "dense_weights_72"}]},
			{"Name" : "dense_weights_65", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dense_U0", "Port" : "dense_weights_65"}]},
			{"Name" : "dense_weights_58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dense_U0", "Port" : "dense_weights_58"}]},
			{"Name" : "dense_weights_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dense_U0", "Port" : "dense_weights_51"}]},
			{"Name" : "dense_weights_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dense_U0", "Port" : "dense_weights_44"}]},
			{"Name" : "dense_weights_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dense_U0", "Port" : "dense_weights_37"}]},
			{"Name" : "dense_weights_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dense_U0", "Port" : "dense_weights_30"}]},
			{"Name" : "dense_weights_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dense_U0", "Port" : "dense_weights_23"}]},
			{"Name" : "dense_weights_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dense_U0", "Port" : "dense_weights_16"}]},
			{"Name" : "dense_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dense_U0", "Port" : "dense_weights"}]},
			{"Name" : "dense_weights_73", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_73"}]},
			{"Name" : "dense_weights_66", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_66"}]},
			{"Name" : "dense_weights_59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_59"}]},
			{"Name" : "dense_weights_52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_52"}]},
			{"Name" : "dense_weights_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_45"}]},
			{"Name" : "dense_weights_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_38"}]},
			{"Name" : "dense_weights_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_31"}]},
			{"Name" : "dense_weights_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_24"}]},
			{"Name" : "dense_weights_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_17"}]},
			{"Name" : "dense_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dense_22_U0", "Port" : "dense_weights_10"}]},
			{"Name" : "dense_weights_74", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_74"}]},
			{"Name" : "dense_weights_67", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_67"}]},
			{"Name" : "dense_weights_60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_60"}]},
			{"Name" : "dense_weights_53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_53"}]},
			{"Name" : "dense_weights_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_46"}]},
			{"Name" : "dense_weights_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_39"}]},
			{"Name" : "dense_weights_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_32"}]},
			{"Name" : "dense_weights_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_25"}]},
			{"Name" : "dense_weights_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_18"}]},
			{"Name" : "dense_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "dense_23_U0", "Port" : "dense_weights_11"}]},
			{"Name" : "dense_weights_75", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_75"}]},
			{"Name" : "dense_weights_68", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_68"}]},
			{"Name" : "dense_weights_61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_61"}]},
			{"Name" : "dense_weights_54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_54"}]},
			{"Name" : "dense_weights_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_47"}]},
			{"Name" : "dense_weights_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_40"}]},
			{"Name" : "dense_weights_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_33"}]},
			{"Name" : "dense_weights_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_26"}]},
			{"Name" : "dense_weights_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_19"}]},
			{"Name" : "dense_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "dense_24_U0", "Port" : "dense_weights_12"}]},
			{"Name" : "dense_weights_76", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_76"}]},
			{"Name" : "dense_weights_69", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_69"}]},
			{"Name" : "dense_weights_62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_62"}]},
			{"Name" : "dense_weights_55", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_55"}]},
			{"Name" : "dense_weights_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_48"}]},
			{"Name" : "dense_weights_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_41"}]},
			{"Name" : "dense_weights_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_34"}]},
			{"Name" : "dense_weights_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_27"}]},
			{"Name" : "dense_weights_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_20"}]},
			{"Name" : "dense_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "dense_25_U0", "Port" : "dense_weights_13"}]},
			{"Name" : "dense_weights_77", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_77"}]},
			{"Name" : "dense_weights_70", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_70"}]},
			{"Name" : "dense_weights_63", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_63"}]},
			{"Name" : "dense_weights_56", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_56"}]},
			{"Name" : "dense_weights_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_49"}]},
			{"Name" : "dense_weights_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_42"}]},
			{"Name" : "dense_weights_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_35"}]},
			{"Name" : "dense_weights_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_28"}]},
			{"Name" : "dense_weights_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_21"}]},
			{"Name" : "dense_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "dense_26_U0", "Port" : "dense_weights_14"}]},
			{"Name" : "dense_weights_78", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_78"}]},
			{"Name" : "dense_weights_71", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_71"}]},
			{"Name" : "dense_weights_64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_64"}]},
			{"Name" : "dense_weights_57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_57"}]},
			{"Name" : "dense_weights_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_50"}]},
			{"Name" : "dense_weights_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_43"}]},
			{"Name" : "dense_weights_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_36"}]},
			{"Name" : "dense_weights_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_29"}]},
			{"Name" : "dense_weights_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_22"}]},
			{"Name" : "dense_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "dense_27_U0", "Port" : "dense_weights_15"}]},
			{"Name" : "dense_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_0"}]},
			{"Name" : "dense_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_1"}]},
			{"Name" : "dense_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_2"}]},
			{"Name" : "dense_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_3"}]},
			{"Name" : "dense_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_4"}]},
			{"Name" : "dense_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_5"}]},
			{"Name" : "dense_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_6"}]},
			{"Name" : "dense_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_7"}]},
			{"Name" : "dense_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_8"}]},
			{"Name" : "dense_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "dense_28_U0", "Port" : "dense_weights_9"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_U0", "Parent" : "0", "Child" : ["2", "3", "5", "19"],
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
			{"Name" : "flat_to_dense_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_0", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_dense_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_72", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_72", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_65", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_65", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_58", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_51", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_44", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_37", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_30", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_23", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_16", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dense_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_U0.dense_array_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_1_fu_195", "Parent" : "1", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201", "Parent" : "1", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_72_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_65_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_58_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_51_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_44_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_37_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_30_U", "Parent" : "5"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_23_U", "Parent" : "5"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_16_U", "Parent" : "5"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.dense_weights_U", "Parent" : "5"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U386", "Parent" : "5"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U387", "Parent" : "5"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "1", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_U0.grp_dense_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_22_U0", "Parent" : "0", "Child" : ["22", "23", "25", "39"],
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
			{"Name" : "flat_to_dense_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_1", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_dense_22_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_73", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_73", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_66", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_66", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_59", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_52", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_45", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_38", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_31", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_24", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_17", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dense_22_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_10", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.dense_array_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_1_fu_195", "Parent" : "21", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201", "Parent" : "21", "Child" : ["26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38"],
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
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_73_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_66_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_59_U", "Parent" : "25"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_52_U", "Parent" : "25"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_45_U", "Parent" : "25"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_38_U", "Parent" : "25"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_31_U", "Parent" : "25"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_24_U", "Parent" : "25"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_17_U", "Parent" : "25"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.dense_weights_10_U", "Parent" : "25"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U425", "Parent" : "25"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U426", "Parent" : "25"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "21", "Child" : ["40"],
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
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_22_U0.grp_dense_22_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_23_U0", "Parent" : "0", "Child" : ["42", "43", "45", "59"],
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
			{"Name" : "flat_to_dense_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_2", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_dense_23_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_2", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_74", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_74", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_67", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_67", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_60", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_53", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_46", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_39", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_32", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_25", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_18", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_dense_23_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_11", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.dense_array_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_1_fu_195", "Parent" : "41", "Child" : ["44"],
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
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201", "Parent" : "41", "Child" : ["46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58"],
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
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_74_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_67_U", "Parent" : "45"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_60_U", "Parent" : "45"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_53_U", "Parent" : "45"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_46_U", "Parent" : "45"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_39_U", "Parent" : "45"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_32_U", "Parent" : "45"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_25_U", "Parent" : "45"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_18_U", "Parent" : "45"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.dense_weights_11_U", "Parent" : "45"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U453", "Parent" : "45"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U454", "Parent" : "45"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "41", "Child" : ["60"],
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_23_U0.grp_dense_23_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_24_U0", "Parent" : "0", "Child" : ["62", "63", "65", "79"],
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
			{"Name" : "flat_to_dense_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_3", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_dense_24_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_3", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_75", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_75", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_68", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_68", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_61", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_54", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_47", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_40", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_33", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_26", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_19", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_dense_24_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_12", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.dense_array_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_1_fu_195", "Parent" : "61", "Child" : ["64"],
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
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201", "Parent" : "61", "Child" : ["66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78"],
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
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_75_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_68_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_61_U", "Parent" : "65"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_54_U", "Parent" : "65"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_47_U", "Parent" : "65"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_40_U", "Parent" : "65"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_33_U", "Parent" : "65"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_26_U", "Parent" : "65"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_19_U", "Parent" : "65"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.dense_weights_12_U", "Parent" : "65"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U481", "Parent" : "65"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U482", "Parent" : "65"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "61", "Child" : ["80"],
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
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_24_U0.grp_dense_24_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_25_U0", "Parent" : "0", "Child" : ["82", "83", "85", "99"],
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
			{"Name" : "flat_to_dense_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_dense_25_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_4", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_76", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_76", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_69", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_69", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_62", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_55", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_55", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_48", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_41", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_34", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_27", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_20", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_dense_25_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_13", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.dense_array_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_1_fu_195", "Parent" : "81", "Child" : ["84"],
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
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201", "Parent" : "81", "Child" : ["86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_76_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_69_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_62_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_55_U", "Parent" : "85"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_48_U", "Parent" : "85"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_41_U", "Parent" : "85"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_34_U", "Parent" : "85"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_27_U", "Parent" : "85"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_20_U", "Parent" : "85"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.dense_weights_13_U", "Parent" : "85"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U509", "Parent" : "85"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U510", "Parent" : "85"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "85"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "81", "Child" : ["100"],
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
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_25_U0.grp_dense_25_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_26_U0", "Parent" : "0", "Child" : ["102", "103", "105", "119"],
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
			{"Name" : "flat_to_dense_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_5", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_dense_26_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_5", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_77", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_77", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_70", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_70", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_63", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_63", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_56", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_56", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_49", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_42", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_35", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_28", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_21", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_dense_26_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_14", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.dense_array_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_1_fu_195", "Parent" : "101", "Child" : ["104"],
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
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201", "Parent" : "101", "Child" : ["106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118"],
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
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_77_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_70_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_63_U", "Parent" : "105"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_56_U", "Parent" : "105"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_49_U", "Parent" : "105"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_42_U", "Parent" : "105"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_35_U", "Parent" : "105"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_28_U", "Parent" : "105"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_21_U", "Parent" : "105"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.dense_weights_14_U", "Parent" : "105"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U537", "Parent" : "105"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U538", "Parent" : "105"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "105"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "101", "Child" : ["120"],
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
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_26_U0.grp_dense_26_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_27_U0", "Parent" : "0", "Child" : ["122", "123", "125", "139"],
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
					{"ID" : "125", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_dense_27_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_6", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_78", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_78", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_71", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_71", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_64", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_57", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_50", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_43", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_36", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_29", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_22", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_dense_27_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_15", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.dense_array_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_1_fu_195", "Parent" : "121", "Child" : ["124"],
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
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "123"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201", "Parent" : "121", "Child" : ["126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138"],
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
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_78_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_71_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_64_U", "Parent" : "125"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_57_U", "Parent" : "125"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_50_U", "Parent" : "125"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_43_U", "Parent" : "125"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_36_U", "Parent" : "125"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_29_U", "Parent" : "125"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_22_U", "Parent" : "125"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.dense_weights_15_U", "Parent" : "125"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U565", "Parent" : "125"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U566", "Parent" : "125"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "125"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "121", "Child" : ["140"],
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
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_27_U0.grp_dense_27_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_28_U0", "Parent" : "0", "Child" : ["142", "143", "145", "159"],
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
			{"Name" : "flat_to_dense_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "flat_to_dense_streams_7", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_to_softmax_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "grp_dense_28_Pipeline_VITIS_LOOP_60_2_fu_249", "Port" : "dense_to_softmax_streams_7", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "dense_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_0", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_1", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_2", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_3", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_5", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_7", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_8", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "dense_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_dense_28_Pipeline_dense_for_flat_fu_201", "Port" : "dense_weights_9", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.dense_array_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_1_fu_195", "Parent" : "141", "Child" : ["144"],
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
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_1_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201", "Parent" : "141", "Child" : ["146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158"],
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
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_0_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_1_U", "Parent" : "145"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_2_U", "Parent" : "145"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_3_U", "Parent" : "145"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_4_U", "Parent" : "145"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_5_U", "Parent" : "145"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_6_U", "Parent" : "145"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_7_U", "Parent" : "145"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_8_U", "Parent" : "145"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.dense_weights_9_U", "Parent" : "145"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.fadd_32ns_32ns_32_7_full_dsp_1_U593", "Parent" : "145"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.fmul_32ns_32ns_32_4_max_dsp_1_U594", "Parent" : "145"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_dense_for_flat_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "145"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_VITIS_LOOP_60_2_fu_249", "Parent" : "141", "Child" : ["160"],
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
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_28_U0.grp_dense_28_Pipeline_VITIS_LOOP_60_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "159"}]}


set ArgLastReadFirstWriteLatency {
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
		dense_to_softmax_streams_7 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2013", "Max" : "2013"}
	, {"Name" : "Interval", "Min" : "2014", "Max" : "2014"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	flat_to_dense_streams_0 { ap_fifo {  { flat_to_dense_streams_0_dout fifo_port_we 0 32 }  { flat_to_dense_streams_0_empty_n fifo_status 0 1 }  { flat_to_dense_streams_0_read fifo_data 1 1 } } }
	flat_to_dense_streams_1 { ap_fifo {  { flat_to_dense_streams_1_dout fifo_port_we 0 32 }  { flat_to_dense_streams_1_empty_n fifo_status 0 1 }  { flat_to_dense_streams_1_read fifo_data 1 1 } } }
	flat_to_dense_streams_2 { ap_fifo {  { flat_to_dense_streams_2_dout fifo_port_we 0 32 }  { flat_to_dense_streams_2_empty_n fifo_status 0 1 }  { flat_to_dense_streams_2_read fifo_data 1 1 } } }
	flat_to_dense_streams_3 { ap_fifo {  { flat_to_dense_streams_3_dout fifo_port_we 0 32 }  { flat_to_dense_streams_3_empty_n fifo_status 0 1 }  { flat_to_dense_streams_3_read fifo_data 1 1 } } }
	flat_to_dense_streams_4 { ap_fifo {  { flat_to_dense_streams_4_dout fifo_port_we 0 32 }  { flat_to_dense_streams_4_empty_n fifo_status 0 1 }  { flat_to_dense_streams_4_read fifo_data 1 1 } } }
	flat_to_dense_streams_5 { ap_fifo {  { flat_to_dense_streams_5_dout fifo_port_we 0 32 }  { flat_to_dense_streams_5_empty_n fifo_status 0 1 }  { flat_to_dense_streams_5_read fifo_data 1 1 } } }
	flat_to_dense_streams_6 { ap_fifo {  { flat_to_dense_streams_6_dout fifo_port_we 0 32 }  { flat_to_dense_streams_6_empty_n fifo_status 0 1 }  { flat_to_dense_streams_6_read fifo_data 1 1 } } }
	flat_to_dense_streams_7 { ap_fifo {  { flat_to_dense_streams_7_dout fifo_port_we 0 32 }  { flat_to_dense_streams_7_empty_n fifo_status 0 1 }  { flat_to_dense_streams_7_read fifo_data 1 1 } } }
	dense_to_softmax_streams_0 { ap_fifo {  { dense_to_softmax_streams_0_din fifo_port_we 1 32 }  { dense_to_softmax_streams_0_full_n fifo_status 0 1 }  { dense_to_softmax_streams_0_write fifo_data 1 1 } } }
	dense_to_softmax_streams_1 { ap_fifo {  { dense_to_softmax_streams_1_din fifo_port_we 1 32 }  { dense_to_softmax_streams_1_full_n fifo_status 0 1 }  { dense_to_softmax_streams_1_write fifo_data 1 1 } } }
	dense_to_softmax_streams_2 { ap_fifo {  { dense_to_softmax_streams_2_din fifo_port_we 1 32 }  { dense_to_softmax_streams_2_full_n fifo_status 0 1 }  { dense_to_softmax_streams_2_write fifo_data 1 1 } } }
	dense_to_softmax_streams_3 { ap_fifo {  { dense_to_softmax_streams_3_din fifo_port_we 1 32 }  { dense_to_softmax_streams_3_full_n fifo_status 0 1 }  { dense_to_softmax_streams_3_write fifo_data 1 1 } } }
	dense_to_softmax_streams_4 { ap_fifo {  { dense_to_softmax_streams_4_din fifo_port_we 1 32 }  { dense_to_softmax_streams_4_full_n fifo_status 0 1 }  { dense_to_softmax_streams_4_write fifo_data 1 1 } } }
	dense_to_softmax_streams_5 { ap_fifo {  { dense_to_softmax_streams_5_din fifo_port_we 1 32 }  { dense_to_softmax_streams_5_full_n fifo_status 0 1 }  { dense_to_softmax_streams_5_write fifo_data 1 1 } } }
	dense_to_softmax_streams_6 { ap_fifo {  { dense_to_softmax_streams_6_din fifo_port_we 1 32 }  { dense_to_softmax_streams_6_full_n fifo_status 0 1 }  { dense_to_softmax_streams_6_write fifo_data 1 1 } } }
	dense_to_softmax_streams_7 { ap_fifo {  { dense_to_softmax_streams_7_din fifo_port_we 1 32 }  { dense_to_softmax_streams_7_full_n fifo_status 0 1 }  { dense_to_softmax_streams_7_write fifo_data 1 1 } } }
}
