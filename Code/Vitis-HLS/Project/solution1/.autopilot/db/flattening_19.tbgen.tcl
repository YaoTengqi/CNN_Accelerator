set moduleName flattening_19
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
set C_modelName {flattening.19}
set C_modelType { void 0 }
set C_modelArgList {
	{ pool_to_flat_streams_5 int 32 regular {fifo 0 volatile }  }
	{ flat_to_dense_streams_5 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pool_to_flat_streams_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flat_to_dense_streams_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ pool_to_flat_streams_5_dout sc_in sc_lv 32 signal 0 } 
	{ pool_to_flat_streams_5_num_data_valid sc_in sc_lv 9 signal 0 } 
	{ pool_to_flat_streams_5_fifo_cap sc_in sc_lv 9 signal 0 } 
	{ pool_to_flat_streams_5_empty_n sc_in sc_logic 1 signal 0 } 
	{ pool_to_flat_streams_5_read sc_out sc_logic 1 signal 0 } 
	{ flat_to_dense_streams_5_din sc_out sc_lv 32 signal 1 } 
	{ flat_to_dense_streams_5_num_data_valid sc_in sc_lv 9 signal 1 } 
	{ flat_to_dense_streams_5_fifo_cap sc_in sc_lv 9 signal 1 } 
	{ flat_to_dense_streams_5_full_n sc_in sc_logic 1 signal 1 } 
	{ flat_to_dense_streams_5_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pool_to_flat_streams_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_to_flat_streams_5", "role": "dout" }} , 
 	{ "name": "pool_to_flat_streams_5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pool_to_flat_streams_5", "role": "num_data_valid" }} , 
 	{ "name": "pool_to_flat_streams_5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pool_to_flat_streams_5", "role": "fifo_cap" }} , 
 	{ "name": "pool_to_flat_streams_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_5", "role": "empty_n" }} , 
 	{ "name": "pool_to_flat_streams_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_to_flat_streams_5", "role": "read" }} , 
 	{ "name": "flat_to_dense_streams_5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flat_to_dense_streams_5", "role": "din" }} , 
 	{ "name": "flat_to_dense_streams_5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "flat_to_dense_streams_5", "role": "num_data_valid" }} , 
 	{ "name": "flat_to_dense_streams_5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "flat_to_dense_streams_5", "role": "fifo_cap" }} , 
 	{ "name": "flat_to_dense_streams_5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_5", "role": "full_n" }} , 
 	{ "name": "flat_to_dense_streams_5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat_to_dense_streams_5", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"Name" : "pool_to_flat_streams_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pool_to_flat_streams_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flat_to_dense_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "196", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "flat_to_dense_streams_5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "flat_for_rows_flat_for_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	flattening_19 {
		pool_to_flat_streams_5 {Type I LastRead 0 FirstWrite -1}
		flat_to_dense_streams_5 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "198", "Max" : "198"}
	, {"Name" : "Interval", "Min" : "198", "Max" : "198"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pool_to_flat_streams_5 { ap_fifo {  { pool_to_flat_streams_5_dout fifo_port_we 0 32 }  { pool_to_flat_streams_5_num_data_valid fifo_status_num_data_valid 0 9 }  { pool_to_flat_streams_5_fifo_cap fifo_update 0 9 }  { pool_to_flat_streams_5_empty_n fifo_status 0 1 }  { pool_to_flat_streams_5_read fifo_data 1 1 } } }
	flat_to_dense_streams_5 { ap_fifo {  { flat_to_dense_streams_5_din fifo_port_we 1 32 }  { flat_to_dense_streams_5_num_data_valid fifo_status_num_data_valid 0 9 }  { flat_to_dense_streams_5_fifo_cap fifo_update 0 9 }  { flat_to_dense_streams_5_full_n fifo_status 0 1 }  { flat_to_dense_streams_5_write fifo_data 1 1 } } }
}
