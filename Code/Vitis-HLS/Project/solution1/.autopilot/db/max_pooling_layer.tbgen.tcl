set moduleName max_pooling_layer
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
set C_modelName {max_pooling_layer}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv_to_pool_streams_0 int 32 regular {fifo 0 volatile }  }
	{ conv_to_pool_streams_1 int 32 regular {fifo 0 volatile }  }
	{ conv_to_pool_streams_2 int 32 regular {fifo 0 volatile }  }
	{ conv_to_pool_streams_3 int 32 regular {fifo 0 volatile }  }
	{ conv_to_pool_streams_4 int 32 regular {fifo 0 volatile }  }
	{ conv_to_pool_streams_5 int 32 regular {fifo 0 volatile }  }
	{ conv_to_pool_streams_6 int 32 regular {fifo 0 volatile }  }
	{ conv_to_pool_streams_7 int 32 regular {fifo 0 volatile }  }
	{ pool_to_flat_streams_0 int 32 regular {fifo 1 volatile }  }
	{ pool_to_flat_streams_1 int 32 regular {fifo 1 volatile }  }
	{ pool_to_flat_streams_2 int 32 regular {fifo 1 volatile }  }
	{ pool_to_flat_streams_3 int 32 regular {fifo 1 volatile }  }
	{ pool_to_flat_streams_4 int 32 regular {fifo 1 volatile }  }
	{ pool_to_flat_streams_5 int 32 regular {fifo 1 volatile }  }
	{ pool_to_flat_streams_6 int 32 regular {fifo 1 volatile }  }
	{ pool_to_flat_streams_7 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv_to_pool_streams_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_to_pool_streams_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_to_pool_streams_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_to_pool_streams_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_to_pool_streams_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_to_pool_streams_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_to_pool_streams_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_to_pool_streams_7", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pool_to_flat_streams_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pool_to_flat_streams_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pool_to_flat_streams_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pool_to_flat_streams_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pool_to_flat_streams_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pool_to_flat_streams_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pool_to_flat_streams_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pool_to_flat_streams_7", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ conv_to_pool_streams_0_dout sc_in sc_lv 32 signal 0 } 
	{ conv_to_pool_streams_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv_to_pool_streams_0_read sc_out sc_logic 1 signal 0 } 
	{ conv_to_pool_streams_1_dout sc_in sc_lv 32 signal 1 } 
	{ conv_to_pool_streams_1_empty_n sc_in sc_logic 1 signal 1 } 
	{ conv_to_pool_streams_1_read sc_out sc_logic 1 signal 1 } 
	{ conv_to_pool_streams_2_dout sc_in sc_lv 32 signal 2 } 
	{ conv_to_pool_streams_2_empty_n sc_in sc_logic 1 signal 2 } 
	{ conv_to_pool_streams_2_read sc_out sc_logic 1 signal 2 } 
	{ conv_to_pool_streams_3_dout sc_in sc_lv 32 signal 3 } 
	{ conv_to_pool_streams_3_empty_n sc_in sc_logic 1 signal 3 } 
	{ conv_to_pool_streams_3_read sc_out sc_logic 1 signal 3 } 
	{ conv_to_pool_streams_4_dout sc_in sc_lv 32 signal 4 } 
	{ conv_to_pool_streams_4_empty_n sc_in sc_logic 1 signal 4 } 
	{ conv_to_pool_streams_4_read sc_out sc_logic 1 signal 4 } 
	{ conv_to_pool_streams_5_dout sc_in sc_lv 32 signal 5 } 
	{ conv_to_pool_streams_5_empty_n sc_in sc_logic 1 signal 5 } 
	{ conv_to_pool_streams_5_read sc_out sc_logic 1 signal 5 } 
	{ conv_to_pool_streams_6_dout sc_in sc_lv 32 signal 6 } 
	{ conv_to_pool_streams_6_empty_n sc_in sc_logic 1 signal 6 } 
	{ conv_to_pool_streams_6_read sc_out sc_logic 1 signal 6 } 
	{ conv_to_pool_streams_7_dout sc_in sc_lv 32 signal 7 } 
	{ conv_to_pool_streams_7_empty_n sc_in sc_logic 1 signal 7 } 
	{ conv_to_pool_streams_7_read sc_out sc_logic 1 signal 7 } 
	{ pool_to_flat_streams_0_din sc_out sc_lv 32 signal 8 } 
	{ pool_to_flat_streams_0_full_n sc_in sc_logic 1 signal 8 } 
	{ pool_to_flat_streams_0_write sc_out sc_logic 1 signal 8 } 
	{ pool_to_flat_streams_1_din sc_out sc_lv 32 signal 9 } 
	{ pool_to_flat_streams_1_full_n sc_in sc_logic 1 signal 9 } 
	{ pool_to_flat_streams_1_write sc_out sc_logic 1 signal 9 } 
	{ pool_to_flat_streams_2_din sc_out sc_lv 32 signal 10 } 
	{ pool_to_flat_streams_2_full_n sc_in sc_logic 1 signal 10 } 
	{ pool_to_flat_streams_2_write sc_out sc_logic 1 signal 10 } 
	{ pool_to_flat_streams_3_din sc_out sc_lv 32 signal 11 } 
	{ pool_to_flat_streams_3_full_n sc_in sc_logic 1 signal 11 } 
	{ pool_to_flat_streams_3_write sc_out sc_logic 1 signal 11 } 
	{ pool_to_flat_streams_4_din sc_out sc_lv 32 signal 12 } 
	{ pool_to_flat_streams_4_full_n sc_in sc_logic 1 signal 12 } 
	{ pool_to_flat_streams_4_write sc_out sc_logic 1 signal 12 } 
	{ pool_to_flat_streams_5_din sc_out sc_lv 32 signal 13 } 
	{ pool_to_flat_streams_5_full_n sc_in sc_logic 1 signal 13 } 
	{ pool_to_flat_streams_5_write sc_out sc_logic 1 signal 13 } 
	{ pool_to_flat_streams_6_din sc_out sc_lv 32 signal 14 } 
	{ pool_to_flat_streams_6_full_n sc_in sc_logic 1 signal 14 } 
	{ pool_to_flat_streams_6_write sc_out sc_logic 1 signal 14 } 
	{ pool_to_flat_streams_7_din sc_out sc_lv 32 signal 15 } 
	{ pool_to_flat_streams_7_full_n sc_in sc_logic 1 signal 15 } 
	{ pool_to_flat_streams_7_write sc_out sc_logic 1 signal 15 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "conv_to_pool_streams_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_0", "role": "dout" }} , 
 	{ "name": "conv_to_pool_streams_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_0", "role": "empty_n" }} , 
 	{ "name": "conv_to_pool_streams_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_0", "role": "read" }} , 
 	{ "name": "conv_to_pool_streams_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_1", "role": "dout" }} , 
 	{ "name": "conv_to_pool_streams_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_1", "role": "empty_n" }} , 
 	{ "name": "conv_to_pool_streams_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_1", "role": "read" }} , 
 	{ "name": "conv_to_pool_streams_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_2", "role": "dout" }} , 
 	{ "name": "conv_to_pool_streams_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_2", "role": "empty_n" }} , 
 	{ "name": "conv_to_pool_streams_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_2", "role": "read" }} , 
 	{ "name": "conv_to_pool_streams_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_3", "role": "dout" }} , 
 	{ "name": "conv_to_pool_streams_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_3", "role": "empty_n" }} , 
 	{ "name": "conv_to_pool_streams_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_3", "role": "read" }} , 
 	{ "name": "conv_to_pool_streams_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_4", "role": "dout" }} , 
 	{ "name": "conv_to_pool_streams_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_4", "role": "empty_n" }} , 
 	{ "name": "conv_to_pool_streams_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_4", "role": "read" }} , 
 	{ "name": "conv_to_pool_streams_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_5", "role": "dout" }} , 
 	{ "name": "conv_to_pool_streams_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_5", "role": "empty_n" }} , 
 	{ "name": "conv_to_pool_streams_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_5", "role": "read" }} , 
 	{ "name": "conv_to_pool_streams_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_6", "role": "dout" }} , 
 	{ "name": "conv_to_pool_streams_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_6", "role": "empty_n" }} , 
 	{ "name": "conv_to_pool_streams_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_6", "role": "read" }} , 
 	{ "name": "conv_to_pool_streams_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_7", "role": "dout" }} , 
 	{ "name": "conv_to_pool_streams_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_7", "role": "empty_n" }} , 
 	{ "name": "conv_to_pool_streams_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_7", "role": "read" }} , 
 	{ "name": "pool_to_flat_streams_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_to_flat_streams_0", "role": "din" }} , 
 	{ "name": "pool_to_flat_streams_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_0", "role": "full_n" }} , 
 	{ "name": "pool_to_flat_streams_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_0", "role": "write" }} , 
 	{ "name": "pool_to_flat_streams_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_to_flat_streams_1", "role": "din" }} , 
 	{ "name": "pool_to_flat_streams_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_1", "role": "full_n" }} , 
 	{ "name": "pool_to_flat_streams_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_1", "role": "write" }} , 
 	{ "name": "pool_to_flat_streams_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_to_flat_streams_2", "role": "din" }} , 
 	{ "name": "pool_to_flat_streams_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_2", "role": "full_n" }} , 
 	{ "name": "pool_to_flat_streams_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_2", "role": "write" }} , 
 	{ "name": "pool_to_flat_streams_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_to_flat_streams_3", "role": "din" }} , 
 	{ "name": "pool_to_flat_streams_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_3", "role": "full_n" }} , 
 	{ "name": "pool_to_flat_streams_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_3", "role": "write" }} , 
 	{ "name": "pool_to_flat_streams_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_to_flat_streams_4", "role": "din" }} , 
 	{ "name": "pool_to_flat_streams_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_4", "role": "full_n" }} , 
 	{ "name": "pool_to_flat_streams_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_4", "role": "write" }} , 
 	{ "name": "pool_to_flat_streams_5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_to_flat_streams_5", "role": "din" }} , 
 	{ "name": "pool_to_flat_streams_5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_5", "role": "full_n" }} , 
 	{ "name": "pool_to_flat_streams_5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_5", "role": "write" }} , 
 	{ "name": "pool_to_flat_streams_6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_to_flat_streams_6", "role": "din" }} , 
 	{ "name": "pool_to_flat_streams_6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_6", "role": "full_n" }} , 
 	{ "name": "pool_to_flat_streams_6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_6", "role": "write" }} , 
 	{ "name": "pool_to_flat_streams_7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_to_flat_streams_7", "role": "din" }} , 
 	{ "name": "pool_to_flat_streams_7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_7", "role": "full_n" }} , 
 	{ "name": "pool_to_flat_streams_7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_7", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "7", "10", "13", "16", "19", "22"],
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
		"InputProcess" : [
			{"ID" : "1", "Name" : "max_pooling_U0"},
			{"ID" : "4", "Name" : "max_pooling_1_U0"},
			{"ID" : "7", "Name" : "max_pooling_2_U0"},
			{"ID" : "10", "Name" : "max_pooling_3_U0"},
			{"ID" : "13", "Name" : "max_pooling_4_U0"},
			{"ID" : "16", "Name" : "max_pooling_5_U0"},
			{"ID" : "19", "Name" : "max_pooling_6_U0"},
			{"ID" : "22", "Name" : "max_pooling_7_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "max_pooling_U0"},
			{"ID" : "4", "Name" : "max_pooling_1_U0"},
			{"ID" : "7", "Name" : "max_pooling_2_U0"},
			{"ID" : "10", "Name" : "max_pooling_3_U0"},
			{"ID" : "13", "Name" : "max_pooling_4_U0"},
			{"ID" : "16", "Name" : "max_pooling_5_U0"},
			{"ID" : "19", "Name" : "max_pooling_6_U0"},
			{"ID" : "22", "Name" : "max_pooling_7_U0"}],
		"Port" : [
			{"Name" : "conv_to_pool_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "max_pooling_U0", "Port" : "conv_to_pool_streams_0"}]},
			{"Name" : "conv_to_pool_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "max_pooling_1_U0", "Port" : "conv_to_pool_streams_1"}]},
			{"Name" : "conv_to_pool_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "max_pooling_2_U0", "Port" : "conv_to_pool_streams_2"}]},
			{"Name" : "conv_to_pool_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "max_pooling_3_U0", "Port" : "conv_to_pool_streams_3"}]},
			{"Name" : "conv_to_pool_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "max_pooling_4_U0", "Port" : "conv_to_pool_streams_4"}]},
			{"Name" : "conv_to_pool_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "max_pooling_5_U0", "Port" : "conv_to_pool_streams_5"}]},
			{"Name" : "conv_to_pool_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "max_pooling_6_U0", "Port" : "conv_to_pool_streams_6"}]},
			{"Name" : "conv_to_pool_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "max_pooling_7_U0", "Port" : "conv_to_pool_streams_7"}]},
			{"Name" : "pool_to_flat_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "max_pooling_U0", "Port" : "pool_to_flat_streams_0"}]},
			{"Name" : "pool_to_flat_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "max_pooling_1_U0", "Port" : "pool_to_flat_streams_1"}]},
			{"Name" : "pool_to_flat_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "max_pooling_2_U0", "Port" : "pool_to_flat_streams_2"}]},
			{"Name" : "pool_to_flat_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "max_pooling_3_U0", "Port" : "pool_to_flat_streams_3"}]},
			{"Name" : "pool_to_flat_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "max_pooling_4_U0", "Port" : "pool_to_flat_streams_4"}]},
			{"Name" : "pool_to_flat_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "max_pooling_5_U0", "Port" : "pool_to_flat_streams_5"}]},
			{"Name" : "pool_to_flat_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "max_pooling_6_U0", "Port" : "pool_to_flat_streams_6"}]},
			{"Name" : "pool_to_flat_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "max_pooling_7_U0", "Port" : "pool_to_flat_streams_7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pooling_U0", "Parent" : "0", "Child" : ["2", "3"],
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
			{"Name" : "conv_to_pool_streams_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U232", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_U0.flow_control_loop_pipe_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pooling_1_U0", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "max_pooling_1",
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
			{"Name" : "conv_to_pool_streams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_1_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U235", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_1_U0.flow_control_loop_pipe_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pooling_2_U0", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "max_pooling_2",
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
			{"Name" : "conv_to_pool_streams_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_2_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U238", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_2_U0.flow_control_loop_pipe_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pooling_3_U0", "Parent" : "0", "Child" : ["11", "12"],
		"CDFG" : "max_pooling_3",
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
			{"Name" : "conv_to_pool_streams_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_3_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U241", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_3_U0.flow_control_loop_pipe_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pooling_4_U0", "Parent" : "0", "Child" : ["14", "15"],
		"CDFG" : "max_pooling_4",
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
			{"Name" : "conv_to_pool_streams_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_4_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U244", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_4_U0.flow_control_loop_pipe_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pooling_5_U0", "Parent" : "0", "Child" : ["17", "18"],
		"CDFG" : "max_pooling_5",
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
			{"Name" : "conv_to_pool_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_5_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U247", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_5_U0.flow_control_loop_pipe_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pooling_6_U0", "Parent" : "0", "Child" : ["20", "21"],
		"CDFG" : "max_pooling_6",
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
			{"Name" : "conv_to_pool_streams_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_6_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_6_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U250", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_6_U0.flow_control_loop_pipe_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pooling_7_U0", "Parent" : "0", "Child" : ["23", "24"],
		"CDFG" : "max_pooling_7",
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
			{"Name" : "conv_to_pool_streams_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv_to_pool_streams_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_to_flat_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pool_for_rows_pool_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_7_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U253", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling_7_U0.flow_control_loop_pipe_U", "Parent" : "22"}]}


set ArgLastReadFirstWriteLatency {
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
	max_pooling_1 {
		conv_to_pool_streams_1 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_1 {Type O LastRead -1 FirstWrite 10}}
	max_pooling_2 {
		conv_to_pool_streams_2 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_2 {Type O LastRead -1 FirstWrite 10}}
	max_pooling_3 {
		conv_to_pool_streams_3 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_3 {Type O LastRead -1 FirstWrite 10}}
	max_pooling_4 {
		conv_to_pool_streams_4 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_4 {Type O LastRead -1 FirstWrite 10}}
	max_pooling_5 {
		conv_to_pool_streams_5 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_5 {Type O LastRead -1 FirstWrite 10}}
	max_pooling_6 {
		conv_to_pool_streams_6 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_6 {Type O LastRead -1 FirstWrite 10}}
	max_pooling_7 {
		conv_to_pool_streams_7 {Type I LastRead 3 FirstWrite -1}
		pool_to_flat_streams_7 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "792", "Max" : "792"}
	, {"Name" : "Interval", "Min" : "793", "Max" : "793"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv_to_pool_streams_0 { ap_fifo {  { conv_to_pool_streams_0_dout fifo_data 0 32 }  { conv_to_pool_streams_0_empty_n fifo_status 0 1 }  { conv_to_pool_streams_0_read fifo_update 1 1 } } }
	conv_to_pool_streams_1 { ap_fifo {  { conv_to_pool_streams_1_dout fifo_data 0 32 }  { conv_to_pool_streams_1_empty_n fifo_status 0 1 }  { conv_to_pool_streams_1_read fifo_update 1 1 } } }
	conv_to_pool_streams_2 { ap_fifo {  { conv_to_pool_streams_2_dout fifo_data 0 32 }  { conv_to_pool_streams_2_empty_n fifo_status 0 1 }  { conv_to_pool_streams_2_read fifo_update 1 1 } } }
	conv_to_pool_streams_3 { ap_fifo {  { conv_to_pool_streams_3_dout fifo_data 0 32 }  { conv_to_pool_streams_3_empty_n fifo_status 0 1 }  { conv_to_pool_streams_3_read fifo_update 1 1 } } }
	conv_to_pool_streams_4 { ap_fifo {  { conv_to_pool_streams_4_dout fifo_data 0 32 }  { conv_to_pool_streams_4_empty_n fifo_status 0 1 }  { conv_to_pool_streams_4_read fifo_update 1 1 } } }
	conv_to_pool_streams_5 { ap_fifo {  { conv_to_pool_streams_5_dout fifo_data 0 32 }  { conv_to_pool_streams_5_empty_n fifo_status 0 1 }  { conv_to_pool_streams_5_read fifo_update 1 1 } } }
	conv_to_pool_streams_6 { ap_fifo {  { conv_to_pool_streams_6_dout fifo_data 0 32 }  { conv_to_pool_streams_6_empty_n fifo_status 0 1 }  { conv_to_pool_streams_6_read fifo_update 1 1 } } }
	conv_to_pool_streams_7 { ap_fifo {  { conv_to_pool_streams_7_dout fifo_data 0 32 }  { conv_to_pool_streams_7_empty_n fifo_status 0 1 }  { conv_to_pool_streams_7_read fifo_update 1 1 } } }
	pool_to_flat_streams_0 { ap_fifo {  { pool_to_flat_streams_0_din fifo_data 1 32 }  { pool_to_flat_streams_0_full_n fifo_status 0 1 }  { pool_to_flat_streams_0_write fifo_update 1 1 } } }
	pool_to_flat_streams_1 { ap_fifo {  { pool_to_flat_streams_1_din fifo_data 1 32 }  { pool_to_flat_streams_1_full_n fifo_status 0 1 }  { pool_to_flat_streams_1_write fifo_update 1 1 } } }
	pool_to_flat_streams_2 { ap_fifo {  { pool_to_flat_streams_2_din fifo_data 1 32 }  { pool_to_flat_streams_2_full_n fifo_status 0 1 }  { pool_to_flat_streams_2_write fifo_update 1 1 } } }
	pool_to_flat_streams_3 { ap_fifo {  { pool_to_flat_streams_3_din fifo_data 1 32 }  { pool_to_flat_streams_3_full_n fifo_status 0 1 }  { pool_to_flat_streams_3_write fifo_update 1 1 } } }
	pool_to_flat_streams_4 { ap_fifo {  { pool_to_flat_streams_4_din fifo_data 1 32 }  { pool_to_flat_streams_4_full_n fifo_status 0 1 }  { pool_to_flat_streams_4_write fifo_update 1 1 } } }
	pool_to_flat_streams_5 { ap_fifo {  { pool_to_flat_streams_5_din fifo_data 1 32 }  { pool_to_flat_streams_5_full_n fifo_status 0 1 }  { pool_to_flat_streams_5_write fifo_update 1 1 } } }
	pool_to_flat_streams_6 { ap_fifo {  { pool_to_flat_streams_6_din fifo_data 1 32 }  { pool_to_flat_streams_6_full_n fifo_status 0 1 }  { pool_to_flat_streams_6_write fifo_update 1 1 } } }
	pool_to_flat_streams_7 { ap_fifo {  { pool_to_flat_streams_7_din fifo_data 1 32 }  { pool_to_flat_streams_7_full_n fifo_status 0 1 }  { pool_to_flat_streams_7_write fifo_update 1 1 } } }
}
