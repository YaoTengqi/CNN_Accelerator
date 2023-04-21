set moduleName convolutional_layer
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
set C_modelName {convolutional_layer}
set C_modelType { void 0 }
set C_modelArgList {
	{ pad_img float 32 regular {array 900 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pad_img1 float 32 regular {array 900 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pad_img2 float 32 regular {array 900 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pad_img3 float 32 regular {array 900 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pad_img4 float 32 regular {array 900 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pad_img5 float 32 regular {array 900 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pad_img6 float 32 regular {array 900 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pad_img7 float 32 regular {array 900 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ weight_buf_0 float 32 regular {array 9 { 1 1 } 1 1 }  }
	{ weight_buf_1 float 32 regular {array 9 { 1 1 } 1 1 }  }
	{ weight_buf_2 float 32 regular {array 9 { 1 1 } 1 1 }  }
	{ weight_buf_3 float 32 regular {array 9 { 1 1 } 1 1 }  }
	{ weight_buf_4 float 32 regular {array 9 { 1 1 } 1 1 }  }
	{ weight_buf_5 float 32 regular {array 9 { 1 1 } 1 1 }  }
	{ weight_buf_6 float 32 regular {array 9 { 1 1 } 1 1 }  }
	{ weight_buf_7 float 32 regular {array 9 { 1 1 } 1 1 }  }
	{ biases_buf_0 float 32 regular  }
	{ biases_buf_1 float 32 regular  }
	{ biases_buf_2 float 32 regular  }
	{ biases_buf_3 float 32 regular  }
	{ biases_buf_4 float 32 regular  }
	{ biases_buf_5 float 32 regular  }
	{ biases_buf_6 float 32 regular  }
	{ biases_buf_7 float 32 regular  }
	{ conv_to_pool_streams_0 int 32 regular {fifo 1 volatile }  }
	{ conv_to_pool_streams_1 int 32 regular {fifo 1 volatile }  }
	{ conv_to_pool_streams_2 int 32 regular {fifo 1 volatile }  }
	{ conv_to_pool_streams_3 int 32 regular {fifo 1 volatile }  }
	{ conv_to_pool_streams_4 int 32 regular {fifo 1 volatile }  }
	{ conv_to_pool_streams_5 int 32 regular {fifo 1 volatile }  }
	{ conv_to_pool_streams_6 int 32 regular {fifo 1 volatile }  }
	{ conv_to_pool_streams_7 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pad_img", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pad_img1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pad_img2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pad_img3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pad_img4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pad_img5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pad_img6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pad_img7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "biases_buf_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "biases_buf_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "biases_buf_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "biases_buf_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "biases_buf_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "biases_buf_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "biases_buf_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "biases_buf_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_to_pool_streams_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_to_pool_streams_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_to_pool_streams_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_to_pool_streams_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_to_pool_streams_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_to_pool_streams_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_to_pool_streams_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_to_pool_streams_7", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 810
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ pad_img_address0 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce0 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d0 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q0 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we0 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address1 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce1 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d1 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q1 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we1 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address2 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce2 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d2 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q2 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we2 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address3 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce3 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d3 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q3 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we3 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address4 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce4 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d4 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q4 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we4 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address5 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce5 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d5 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q5 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we5 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address6 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce6 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d6 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q6 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we6 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address7 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce7 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d7 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q7 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we7 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address8 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce8 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d8 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q8 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we8 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address9 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce9 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d9 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q9 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we9 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address10 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce10 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d10 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q10 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we10 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address11 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce11 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d11 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q11 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we11 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address12 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce12 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d12 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q12 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we12 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address13 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce13 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d13 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q13 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we13 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address14 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce14 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d14 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q14 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we14 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address15 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce15 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d15 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q15 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we15 sc_out sc_logic 1 signal 0 } 
	{ pad_img_address16 sc_out sc_lv 10 signal 0 } 
	{ pad_img_ce16 sc_out sc_logic 1 signal 0 } 
	{ pad_img_d16 sc_out sc_lv 32 signal 0 } 
	{ pad_img_q16 sc_in sc_lv 32 signal 0 } 
	{ pad_img_we16 sc_out sc_logic 1 signal 0 } 
	{ pad_img1_address0 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce0 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d0 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q0 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we0 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address1 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce1 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d1 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q1 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we1 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address2 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce2 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d2 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q2 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we2 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address3 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce3 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d3 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q3 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we3 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address4 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce4 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d4 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q4 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we4 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address5 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce5 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d5 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q5 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we5 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address6 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce6 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d6 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q6 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we6 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address7 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce7 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d7 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q7 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we7 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address8 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce8 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d8 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q8 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we8 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address9 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce9 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d9 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q9 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we9 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address10 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce10 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d10 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q10 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we10 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address11 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce11 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d11 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q11 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we11 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address12 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce12 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d12 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q12 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we12 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address13 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce13 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d13 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q13 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we13 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address14 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce14 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d14 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q14 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we14 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address15 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce15 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d15 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q15 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we15 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_address16 sc_out sc_lv 10 signal 1 } 
	{ pad_img1_ce16 sc_out sc_logic 1 signal 1 } 
	{ pad_img1_d16 sc_out sc_lv 32 signal 1 } 
	{ pad_img1_q16 sc_in sc_lv 32 signal 1 } 
	{ pad_img1_we16 sc_out sc_logic 1 signal 1 } 
	{ pad_img2_address0 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce0 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d0 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q0 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we0 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address1 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce1 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d1 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q1 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we1 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address2 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce2 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d2 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q2 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we2 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address3 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce3 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d3 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q3 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we3 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address4 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce4 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d4 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q4 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we4 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address5 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce5 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d5 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q5 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we5 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address6 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce6 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d6 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q6 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we6 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address7 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce7 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d7 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q7 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we7 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address8 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce8 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d8 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q8 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we8 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address9 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce9 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d9 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q9 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we9 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address10 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce10 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d10 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q10 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we10 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address11 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce11 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d11 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q11 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we11 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address12 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce12 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d12 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q12 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we12 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address13 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce13 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d13 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q13 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we13 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address14 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce14 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d14 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q14 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we14 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address15 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce15 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d15 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q15 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we15 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_address16 sc_out sc_lv 10 signal 2 } 
	{ pad_img2_ce16 sc_out sc_logic 1 signal 2 } 
	{ pad_img2_d16 sc_out sc_lv 32 signal 2 } 
	{ pad_img2_q16 sc_in sc_lv 32 signal 2 } 
	{ pad_img2_we16 sc_out sc_logic 1 signal 2 } 
	{ pad_img3_address0 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce0 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d0 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q0 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we0 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address1 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce1 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d1 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q1 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we1 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address2 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce2 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d2 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q2 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we2 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address3 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce3 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d3 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q3 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we3 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address4 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce4 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d4 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q4 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we4 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address5 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce5 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d5 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q5 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we5 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address6 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce6 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d6 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q6 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we6 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address7 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce7 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d7 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q7 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we7 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address8 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce8 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d8 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q8 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we8 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address9 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce9 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d9 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q9 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we9 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address10 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce10 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d10 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q10 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we10 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address11 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce11 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d11 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q11 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we11 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address12 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce12 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d12 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q12 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we12 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address13 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce13 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d13 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q13 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we13 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address14 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce14 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d14 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q14 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we14 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address15 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce15 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d15 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q15 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we15 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_address16 sc_out sc_lv 10 signal 3 } 
	{ pad_img3_ce16 sc_out sc_logic 1 signal 3 } 
	{ pad_img3_d16 sc_out sc_lv 32 signal 3 } 
	{ pad_img3_q16 sc_in sc_lv 32 signal 3 } 
	{ pad_img3_we16 sc_out sc_logic 1 signal 3 } 
	{ pad_img4_address0 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce0 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d0 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q0 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we0 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address1 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce1 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d1 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q1 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we1 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address2 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce2 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d2 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q2 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we2 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address3 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce3 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d3 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q3 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we3 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address4 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce4 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d4 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q4 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we4 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address5 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce5 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d5 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q5 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we5 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address6 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce6 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d6 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q6 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we6 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address7 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce7 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d7 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q7 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we7 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address8 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce8 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d8 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q8 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we8 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address9 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce9 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d9 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q9 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we9 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address10 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce10 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d10 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q10 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we10 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address11 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce11 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d11 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q11 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we11 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address12 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce12 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d12 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q12 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we12 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address13 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce13 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d13 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q13 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we13 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address14 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce14 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d14 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q14 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we14 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address15 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce15 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d15 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q15 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we15 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_address16 sc_out sc_lv 10 signal 4 } 
	{ pad_img4_ce16 sc_out sc_logic 1 signal 4 } 
	{ pad_img4_d16 sc_out sc_lv 32 signal 4 } 
	{ pad_img4_q16 sc_in sc_lv 32 signal 4 } 
	{ pad_img4_we16 sc_out sc_logic 1 signal 4 } 
	{ pad_img5_address0 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce0 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d0 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q0 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we0 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address1 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce1 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d1 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q1 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we1 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address2 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce2 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d2 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q2 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we2 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address3 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce3 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d3 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q3 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we3 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address4 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce4 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d4 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q4 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we4 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address5 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce5 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d5 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q5 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we5 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address6 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce6 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d6 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q6 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we6 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address7 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce7 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d7 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q7 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we7 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address8 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce8 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d8 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q8 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we8 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address9 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce9 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d9 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q9 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we9 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address10 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce10 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d10 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q10 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we10 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address11 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce11 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d11 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q11 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we11 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address12 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce12 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d12 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q12 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we12 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address13 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce13 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d13 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q13 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we13 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address14 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce14 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d14 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q14 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we14 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address15 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce15 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d15 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q15 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we15 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_address16 sc_out sc_lv 10 signal 5 } 
	{ pad_img5_ce16 sc_out sc_logic 1 signal 5 } 
	{ pad_img5_d16 sc_out sc_lv 32 signal 5 } 
	{ pad_img5_q16 sc_in sc_lv 32 signal 5 } 
	{ pad_img5_we16 sc_out sc_logic 1 signal 5 } 
	{ pad_img6_address0 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce0 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d0 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q0 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we0 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address1 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce1 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d1 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q1 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we1 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address2 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce2 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d2 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q2 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we2 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address3 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce3 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d3 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q3 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we3 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address4 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce4 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d4 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q4 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we4 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address5 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce5 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d5 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q5 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we5 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address6 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce6 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d6 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q6 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we6 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address7 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce7 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d7 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q7 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we7 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address8 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce8 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d8 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q8 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we8 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address9 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce9 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d9 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q9 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we9 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address10 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce10 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d10 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q10 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we10 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address11 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce11 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d11 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q11 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we11 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address12 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce12 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d12 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q12 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we12 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address13 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce13 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d13 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q13 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we13 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address14 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce14 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d14 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q14 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we14 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address15 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce15 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d15 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q15 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we15 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_address16 sc_out sc_lv 10 signal 6 } 
	{ pad_img6_ce16 sc_out sc_logic 1 signal 6 } 
	{ pad_img6_d16 sc_out sc_lv 32 signal 6 } 
	{ pad_img6_q16 sc_in sc_lv 32 signal 6 } 
	{ pad_img6_we16 sc_out sc_logic 1 signal 6 } 
	{ pad_img7_address0 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce0 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d0 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q0 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we0 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address1 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce1 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d1 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q1 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we1 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address2 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce2 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d2 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q2 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we2 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address3 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce3 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d3 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q3 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we3 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address4 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce4 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d4 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q4 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we4 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address5 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce5 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d5 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q5 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we5 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address6 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce6 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d6 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q6 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we6 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address7 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce7 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d7 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q7 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we7 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address8 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce8 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d8 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q8 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we8 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address9 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce9 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d9 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q9 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we9 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address10 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce10 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d10 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q10 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we10 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address11 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce11 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d11 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q11 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we11 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address12 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce12 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d12 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q12 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we12 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address13 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce13 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d13 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q13 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we13 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address14 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce14 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d14 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q14 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we14 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address15 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce15 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d15 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q15 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we15 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_address16 sc_out sc_lv 10 signal 7 } 
	{ pad_img7_ce16 sc_out sc_logic 1 signal 7 } 
	{ pad_img7_d16 sc_out sc_lv 32 signal 7 } 
	{ pad_img7_q16 sc_in sc_lv 32 signal 7 } 
	{ pad_img7_we16 sc_out sc_logic 1 signal 7 } 
	{ weight_buf_0_address0 sc_out sc_lv 4 signal 8 } 
	{ weight_buf_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ weight_buf_0_d0 sc_out sc_lv 32 signal 8 } 
	{ weight_buf_0_q0 sc_in sc_lv 32 signal 8 } 
	{ weight_buf_0_we0 sc_out sc_logic 1 signal 8 } 
	{ weight_buf_0_address1 sc_out sc_lv 4 signal 8 } 
	{ weight_buf_0_ce1 sc_out sc_logic 1 signal 8 } 
	{ weight_buf_0_d1 sc_out sc_lv 32 signal 8 } 
	{ weight_buf_0_q1 sc_in sc_lv 32 signal 8 } 
	{ weight_buf_0_we1 sc_out sc_logic 1 signal 8 } 
	{ weight_buf_1_address0 sc_out sc_lv 4 signal 9 } 
	{ weight_buf_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ weight_buf_1_d0 sc_out sc_lv 32 signal 9 } 
	{ weight_buf_1_q0 sc_in sc_lv 32 signal 9 } 
	{ weight_buf_1_we0 sc_out sc_logic 1 signal 9 } 
	{ weight_buf_1_address1 sc_out sc_lv 4 signal 9 } 
	{ weight_buf_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ weight_buf_1_d1 sc_out sc_lv 32 signal 9 } 
	{ weight_buf_1_q1 sc_in sc_lv 32 signal 9 } 
	{ weight_buf_1_we1 sc_out sc_logic 1 signal 9 } 
	{ weight_buf_2_address0 sc_out sc_lv 4 signal 10 } 
	{ weight_buf_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ weight_buf_2_d0 sc_out sc_lv 32 signal 10 } 
	{ weight_buf_2_q0 sc_in sc_lv 32 signal 10 } 
	{ weight_buf_2_we0 sc_out sc_logic 1 signal 10 } 
	{ weight_buf_2_address1 sc_out sc_lv 4 signal 10 } 
	{ weight_buf_2_ce1 sc_out sc_logic 1 signal 10 } 
	{ weight_buf_2_d1 sc_out sc_lv 32 signal 10 } 
	{ weight_buf_2_q1 sc_in sc_lv 32 signal 10 } 
	{ weight_buf_2_we1 sc_out sc_logic 1 signal 10 } 
	{ weight_buf_3_address0 sc_out sc_lv 4 signal 11 } 
	{ weight_buf_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ weight_buf_3_d0 sc_out sc_lv 32 signal 11 } 
	{ weight_buf_3_q0 sc_in sc_lv 32 signal 11 } 
	{ weight_buf_3_we0 sc_out sc_logic 1 signal 11 } 
	{ weight_buf_3_address1 sc_out sc_lv 4 signal 11 } 
	{ weight_buf_3_ce1 sc_out sc_logic 1 signal 11 } 
	{ weight_buf_3_d1 sc_out sc_lv 32 signal 11 } 
	{ weight_buf_3_q1 sc_in sc_lv 32 signal 11 } 
	{ weight_buf_3_we1 sc_out sc_logic 1 signal 11 } 
	{ weight_buf_4_address0 sc_out sc_lv 4 signal 12 } 
	{ weight_buf_4_ce0 sc_out sc_logic 1 signal 12 } 
	{ weight_buf_4_d0 sc_out sc_lv 32 signal 12 } 
	{ weight_buf_4_q0 sc_in sc_lv 32 signal 12 } 
	{ weight_buf_4_we0 sc_out sc_logic 1 signal 12 } 
	{ weight_buf_4_address1 sc_out sc_lv 4 signal 12 } 
	{ weight_buf_4_ce1 sc_out sc_logic 1 signal 12 } 
	{ weight_buf_4_d1 sc_out sc_lv 32 signal 12 } 
	{ weight_buf_4_q1 sc_in sc_lv 32 signal 12 } 
	{ weight_buf_4_we1 sc_out sc_logic 1 signal 12 } 
	{ weight_buf_5_address0 sc_out sc_lv 4 signal 13 } 
	{ weight_buf_5_ce0 sc_out sc_logic 1 signal 13 } 
	{ weight_buf_5_d0 sc_out sc_lv 32 signal 13 } 
	{ weight_buf_5_q0 sc_in sc_lv 32 signal 13 } 
	{ weight_buf_5_we0 sc_out sc_logic 1 signal 13 } 
	{ weight_buf_5_address1 sc_out sc_lv 4 signal 13 } 
	{ weight_buf_5_ce1 sc_out sc_logic 1 signal 13 } 
	{ weight_buf_5_d1 sc_out sc_lv 32 signal 13 } 
	{ weight_buf_5_q1 sc_in sc_lv 32 signal 13 } 
	{ weight_buf_5_we1 sc_out sc_logic 1 signal 13 } 
	{ weight_buf_6_address0 sc_out sc_lv 4 signal 14 } 
	{ weight_buf_6_ce0 sc_out sc_logic 1 signal 14 } 
	{ weight_buf_6_d0 sc_out sc_lv 32 signal 14 } 
	{ weight_buf_6_q0 sc_in sc_lv 32 signal 14 } 
	{ weight_buf_6_we0 sc_out sc_logic 1 signal 14 } 
	{ weight_buf_6_address1 sc_out sc_lv 4 signal 14 } 
	{ weight_buf_6_ce1 sc_out sc_logic 1 signal 14 } 
	{ weight_buf_6_d1 sc_out sc_lv 32 signal 14 } 
	{ weight_buf_6_q1 sc_in sc_lv 32 signal 14 } 
	{ weight_buf_6_we1 sc_out sc_logic 1 signal 14 } 
	{ weight_buf_7_address0 sc_out sc_lv 4 signal 15 } 
	{ weight_buf_7_ce0 sc_out sc_logic 1 signal 15 } 
	{ weight_buf_7_d0 sc_out sc_lv 32 signal 15 } 
	{ weight_buf_7_q0 sc_in sc_lv 32 signal 15 } 
	{ weight_buf_7_we0 sc_out sc_logic 1 signal 15 } 
	{ weight_buf_7_address1 sc_out sc_lv 4 signal 15 } 
	{ weight_buf_7_ce1 sc_out sc_logic 1 signal 15 } 
	{ weight_buf_7_d1 sc_out sc_lv 32 signal 15 } 
	{ weight_buf_7_q1 sc_in sc_lv 32 signal 15 } 
	{ weight_buf_7_we1 sc_out sc_logic 1 signal 15 } 
	{ biases_buf_0 sc_in sc_lv 32 signal 16 } 
	{ biases_buf_1 sc_in sc_lv 32 signal 17 } 
	{ biases_buf_2 sc_in sc_lv 32 signal 18 } 
	{ biases_buf_3 sc_in sc_lv 32 signal 19 } 
	{ biases_buf_4 sc_in sc_lv 32 signal 20 } 
	{ biases_buf_5 sc_in sc_lv 32 signal 21 } 
	{ biases_buf_6 sc_in sc_lv 32 signal 22 } 
	{ biases_buf_7 sc_in sc_lv 32 signal 23 } 
	{ conv_to_pool_streams_0_din sc_out sc_lv 32 signal 24 } 
	{ conv_to_pool_streams_0_full_n sc_in sc_logic 1 signal 24 } 
	{ conv_to_pool_streams_0_write sc_out sc_logic 1 signal 24 } 
	{ conv_to_pool_streams_1_din sc_out sc_lv 32 signal 25 } 
	{ conv_to_pool_streams_1_full_n sc_in sc_logic 1 signal 25 } 
	{ conv_to_pool_streams_1_write sc_out sc_logic 1 signal 25 } 
	{ conv_to_pool_streams_2_din sc_out sc_lv 32 signal 26 } 
	{ conv_to_pool_streams_2_full_n sc_in sc_logic 1 signal 26 } 
	{ conv_to_pool_streams_2_write sc_out sc_logic 1 signal 26 } 
	{ conv_to_pool_streams_3_din sc_out sc_lv 32 signal 27 } 
	{ conv_to_pool_streams_3_full_n sc_in sc_logic 1 signal 27 } 
	{ conv_to_pool_streams_3_write sc_out sc_logic 1 signal 27 } 
	{ conv_to_pool_streams_4_din sc_out sc_lv 32 signal 28 } 
	{ conv_to_pool_streams_4_full_n sc_in sc_logic 1 signal 28 } 
	{ conv_to_pool_streams_4_write sc_out sc_logic 1 signal 28 } 
	{ conv_to_pool_streams_5_din sc_out sc_lv 32 signal 29 } 
	{ conv_to_pool_streams_5_full_n sc_in sc_logic 1 signal 29 } 
	{ conv_to_pool_streams_5_write sc_out sc_logic 1 signal 29 } 
	{ conv_to_pool_streams_6_din sc_out sc_lv 32 signal 30 } 
	{ conv_to_pool_streams_6_full_n sc_in sc_logic 1 signal 30 } 
	{ conv_to_pool_streams_6_write sc_out sc_logic 1 signal 30 } 
	{ conv_to_pool_streams_7_din sc_out sc_lv 32 signal 31 } 
	{ conv_to_pool_streams_7_full_n sc_in sc_logic 1 signal 31 } 
	{ conv_to_pool_streams_7_write sc_out sc_logic 1 signal 31 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ biases_buf_0_ap_vld sc_in sc_logic 1 invld 16 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ biases_buf_1_ap_vld sc_in sc_logic 1 invld 17 } 
	{ biases_buf_2_ap_vld sc_in sc_logic 1 invld 18 } 
	{ biases_buf_3_ap_vld sc_in sc_logic 1 invld 19 } 
	{ biases_buf_4_ap_vld sc_in sc_logic 1 invld 20 } 
	{ biases_buf_5_ap_vld sc_in sc_logic 1 invld 21 } 
	{ biases_buf_6_ap_vld sc_in sc_logic 1 invld 22 } 
	{ biases_buf_7_ap_vld sc_in sc_logic 1 invld 23 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "pad_img_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address0" }} , 
 	{ "name": "pad_img_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce0" }} , 
 	{ "name": "pad_img_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d0" }} , 
 	{ "name": "pad_img_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q0" }} , 
 	{ "name": "pad_img_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we0" }} , 
 	{ "name": "pad_img_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address1" }} , 
 	{ "name": "pad_img_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce1" }} , 
 	{ "name": "pad_img_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d1" }} , 
 	{ "name": "pad_img_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q1" }} , 
 	{ "name": "pad_img_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we1" }} , 
 	{ "name": "pad_img_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address2" }} , 
 	{ "name": "pad_img_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce2" }} , 
 	{ "name": "pad_img_d2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d2" }} , 
 	{ "name": "pad_img_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q2" }} , 
 	{ "name": "pad_img_we2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we2" }} , 
 	{ "name": "pad_img_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address3" }} , 
 	{ "name": "pad_img_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce3" }} , 
 	{ "name": "pad_img_d3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d3" }} , 
 	{ "name": "pad_img_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q3" }} , 
 	{ "name": "pad_img_we3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we3" }} , 
 	{ "name": "pad_img_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address4" }} , 
 	{ "name": "pad_img_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce4" }} , 
 	{ "name": "pad_img_d4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d4" }} , 
 	{ "name": "pad_img_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q4" }} , 
 	{ "name": "pad_img_we4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we4" }} , 
 	{ "name": "pad_img_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address5" }} , 
 	{ "name": "pad_img_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce5" }} , 
 	{ "name": "pad_img_d5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d5" }} , 
 	{ "name": "pad_img_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q5" }} , 
 	{ "name": "pad_img_we5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we5" }} , 
 	{ "name": "pad_img_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address6" }} , 
 	{ "name": "pad_img_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce6" }} , 
 	{ "name": "pad_img_d6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d6" }} , 
 	{ "name": "pad_img_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q6" }} , 
 	{ "name": "pad_img_we6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we6" }} , 
 	{ "name": "pad_img_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address7" }} , 
 	{ "name": "pad_img_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce7" }} , 
 	{ "name": "pad_img_d7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d7" }} , 
 	{ "name": "pad_img_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q7" }} , 
 	{ "name": "pad_img_we7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we7" }} , 
 	{ "name": "pad_img_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address8" }} , 
 	{ "name": "pad_img_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce8" }} , 
 	{ "name": "pad_img_d8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d8" }} , 
 	{ "name": "pad_img_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q8" }} , 
 	{ "name": "pad_img_we8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we8" }} , 
 	{ "name": "pad_img_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address9" }} , 
 	{ "name": "pad_img_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce9" }} , 
 	{ "name": "pad_img_d9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d9" }} , 
 	{ "name": "pad_img_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q9" }} , 
 	{ "name": "pad_img_we9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we9" }} , 
 	{ "name": "pad_img_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address10" }} , 
 	{ "name": "pad_img_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce10" }} , 
 	{ "name": "pad_img_d10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d10" }} , 
 	{ "name": "pad_img_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q10" }} , 
 	{ "name": "pad_img_we10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we10" }} , 
 	{ "name": "pad_img_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address11" }} , 
 	{ "name": "pad_img_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce11" }} , 
 	{ "name": "pad_img_d11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d11" }} , 
 	{ "name": "pad_img_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q11" }} , 
 	{ "name": "pad_img_we11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we11" }} , 
 	{ "name": "pad_img_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address12" }} , 
 	{ "name": "pad_img_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce12" }} , 
 	{ "name": "pad_img_d12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d12" }} , 
 	{ "name": "pad_img_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q12" }} , 
 	{ "name": "pad_img_we12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we12" }} , 
 	{ "name": "pad_img_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address13" }} , 
 	{ "name": "pad_img_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce13" }} , 
 	{ "name": "pad_img_d13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d13" }} , 
 	{ "name": "pad_img_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q13" }} , 
 	{ "name": "pad_img_we13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we13" }} , 
 	{ "name": "pad_img_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address14" }} , 
 	{ "name": "pad_img_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce14" }} , 
 	{ "name": "pad_img_d14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d14" }} , 
 	{ "name": "pad_img_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q14" }} , 
 	{ "name": "pad_img_we14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we14" }} , 
 	{ "name": "pad_img_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address15" }} , 
 	{ "name": "pad_img_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce15" }} , 
 	{ "name": "pad_img_d15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d15" }} , 
 	{ "name": "pad_img_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q15" }} , 
 	{ "name": "pad_img_we15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we15" }} , 
 	{ "name": "pad_img_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img", "role": "address16" }} , 
 	{ "name": "pad_img_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "ce16" }} , 
 	{ "name": "pad_img_d16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "d16" }} , 
 	{ "name": "pad_img_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img", "role": "q16" }} , 
 	{ "name": "pad_img_we16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img", "role": "we16" }} , 
 	{ "name": "pad_img1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address0" }} , 
 	{ "name": "pad_img1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce0" }} , 
 	{ "name": "pad_img1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d0" }} , 
 	{ "name": "pad_img1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q0" }} , 
 	{ "name": "pad_img1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we0" }} , 
 	{ "name": "pad_img1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address1" }} , 
 	{ "name": "pad_img1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce1" }} , 
 	{ "name": "pad_img1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d1" }} , 
 	{ "name": "pad_img1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q1" }} , 
 	{ "name": "pad_img1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we1" }} , 
 	{ "name": "pad_img1_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address2" }} , 
 	{ "name": "pad_img1_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce2" }} , 
 	{ "name": "pad_img1_d2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d2" }} , 
 	{ "name": "pad_img1_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q2" }} , 
 	{ "name": "pad_img1_we2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we2" }} , 
 	{ "name": "pad_img1_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address3" }} , 
 	{ "name": "pad_img1_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce3" }} , 
 	{ "name": "pad_img1_d3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d3" }} , 
 	{ "name": "pad_img1_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q3" }} , 
 	{ "name": "pad_img1_we3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we3" }} , 
 	{ "name": "pad_img1_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address4" }} , 
 	{ "name": "pad_img1_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce4" }} , 
 	{ "name": "pad_img1_d4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d4" }} , 
 	{ "name": "pad_img1_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q4" }} , 
 	{ "name": "pad_img1_we4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we4" }} , 
 	{ "name": "pad_img1_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address5" }} , 
 	{ "name": "pad_img1_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce5" }} , 
 	{ "name": "pad_img1_d5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d5" }} , 
 	{ "name": "pad_img1_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q5" }} , 
 	{ "name": "pad_img1_we5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we5" }} , 
 	{ "name": "pad_img1_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address6" }} , 
 	{ "name": "pad_img1_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce6" }} , 
 	{ "name": "pad_img1_d6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d6" }} , 
 	{ "name": "pad_img1_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q6" }} , 
 	{ "name": "pad_img1_we6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we6" }} , 
 	{ "name": "pad_img1_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address7" }} , 
 	{ "name": "pad_img1_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce7" }} , 
 	{ "name": "pad_img1_d7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d7" }} , 
 	{ "name": "pad_img1_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q7" }} , 
 	{ "name": "pad_img1_we7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we7" }} , 
 	{ "name": "pad_img1_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address8" }} , 
 	{ "name": "pad_img1_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce8" }} , 
 	{ "name": "pad_img1_d8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d8" }} , 
 	{ "name": "pad_img1_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q8" }} , 
 	{ "name": "pad_img1_we8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we8" }} , 
 	{ "name": "pad_img1_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address9" }} , 
 	{ "name": "pad_img1_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce9" }} , 
 	{ "name": "pad_img1_d9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d9" }} , 
 	{ "name": "pad_img1_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q9" }} , 
 	{ "name": "pad_img1_we9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we9" }} , 
 	{ "name": "pad_img1_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address10" }} , 
 	{ "name": "pad_img1_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce10" }} , 
 	{ "name": "pad_img1_d10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d10" }} , 
 	{ "name": "pad_img1_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q10" }} , 
 	{ "name": "pad_img1_we10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we10" }} , 
 	{ "name": "pad_img1_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address11" }} , 
 	{ "name": "pad_img1_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce11" }} , 
 	{ "name": "pad_img1_d11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d11" }} , 
 	{ "name": "pad_img1_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q11" }} , 
 	{ "name": "pad_img1_we11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we11" }} , 
 	{ "name": "pad_img1_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address12" }} , 
 	{ "name": "pad_img1_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce12" }} , 
 	{ "name": "pad_img1_d12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d12" }} , 
 	{ "name": "pad_img1_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q12" }} , 
 	{ "name": "pad_img1_we12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we12" }} , 
 	{ "name": "pad_img1_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address13" }} , 
 	{ "name": "pad_img1_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce13" }} , 
 	{ "name": "pad_img1_d13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d13" }} , 
 	{ "name": "pad_img1_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q13" }} , 
 	{ "name": "pad_img1_we13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we13" }} , 
 	{ "name": "pad_img1_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address14" }} , 
 	{ "name": "pad_img1_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce14" }} , 
 	{ "name": "pad_img1_d14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d14" }} , 
 	{ "name": "pad_img1_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q14" }} , 
 	{ "name": "pad_img1_we14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we14" }} , 
 	{ "name": "pad_img1_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address15" }} , 
 	{ "name": "pad_img1_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce15" }} , 
 	{ "name": "pad_img1_d15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d15" }} , 
 	{ "name": "pad_img1_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q15" }} , 
 	{ "name": "pad_img1_we15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we15" }} , 
 	{ "name": "pad_img1_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img1", "role": "address16" }} , 
 	{ "name": "pad_img1_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "ce16" }} , 
 	{ "name": "pad_img1_d16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "d16" }} , 
 	{ "name": "pad_img1_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img1", "role": "q16" }} , 
 	{ "name": "pad_img1_we16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img1", "role": "we16" }} , 
 	{ "name": "pad_img2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address0" }} , 
 	{ "name": "pad_img2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce0" }} , 
 	{ "name": "pad_img2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d0" }} , 
 	{ "name": "pad_img2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q0" }} , 
 	{ "name": "pad_img2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we0" }} , 
 	{ "name": "pad_img2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address1" }} , 
 	{ "name": "pad_img2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce1" }} , 
 	{ "name": "pad_img2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d1" }} , 
 	{ "name": "pad_img2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q1" }} , 
 	{ "name": "pad_img2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we1" }} , 
 	{ "name": "pad_img2_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address2" }} , 
 	{ "name": "pad_img2_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce2" }} , 
 	{ "name": "pad_img2_d2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d2" }} , 
 	{ "name": "pad_img2_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q2" }} , 
 	{ "name": "pad_img2_we2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we2" }} , 
 	{ "name": "pad_img2_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address3" }} , 
 	{ "name": "pad_img2_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce3" }} , 
 	{ "name": "pad_img2_d3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d3" }} , 
 	{ "name": "pad_img2_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q3" }} , 
 	{ "name": "pad_img2_we3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we3" }} , 
 	{ "name": "pad_img2_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address4" }} , 
 	{ "name": "pad_img2_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce4" }} , 
 	{ "name": "pad_img2_d4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d4" }} , 
 	{ "name": "pad_img2_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q4" }} , 
 	{ "name": "pad_img2_we4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we4" }} , 
 	{ "name": "pad_img2_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address5" }} , 
 	{ "name": "pad_img2_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce5" }} , 
 	{ "name": "pad_img2_d5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d5" }} , 
 	{ "name": "pad_img2_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q5" }} , 
 	{ "name": "pad_img2_we5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we5" }} , 
 	{ "name": "pad_img2_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address6" }} , 
 	{ "name": "pad_img2_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce6" }} , 
 	{ "name": "pad_img2_d6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d6" }} , 
 	{ "name": "pad_img2_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q6" }} , 
 	{ "name": "pad_img2_we6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we6" }} , 
 	{ "name": "pad_img2_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address7" }} , 
 	{ "name": "pad_img2_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce7" }} , 
 	{ "name": "pad_img2_d7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d7" }} , 
 	{ "name": "pad_img2_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q7" }} , 
 	{ "name": "pad_img2_we7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we7" }} , 
 	{ "name": "pad_img2_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address8" }} , 
 	{ "name": "pad_img2_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce8" }} , 
 	{ "name": "pad_img2_d8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d8" }} , 
 	{ "name": "pad_img2_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q8" }} , 
 	{ "name": "pad_img2_we8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we8" }} , 
 	{ "name": "pad_img2_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address9" }} , 
 	{ "name": "pad_img2_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce9" }} , 
 	{ "name": "pad_img2_d9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d9" }} , 
 	{ "name": "pad_img2_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q9" }} , 
 	{ "name": "pad_img2_we9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we9" }} , 
 	{ "name": "pad_img2_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address10" }} , 
 	{ "name": "pad_img2_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce10" }} , 
 	{ "name": "pad_img2_d10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d10" }} , 
 	{ "name": "pad_img2_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q10" }} , 
 	{ "name": "pad_img2_we10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we10" }} , 
 	{ "name": "pad_img2_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address11" }} , 
 	{ "name": "pad_img2_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce11" }} , 
 	{ "name": "pad_img2_d11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d11" }} , 
 	{ "name": "pad_img2_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q11" }} , 
 	{ "name": "pad_img2_we11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we11" }} , 
 	{ "name": "pad_img2_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address12" }} , 
 	{ "name": "pad_img2_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce12" }} , 
 	{ "name": "pad_img2_d12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d12" }} , 
 	{ "name": "pad_img2_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q12" }} , 
 	{ "name": "pad_img2_we12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we12" }} , 
 	{ "name": "pad_img2_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address13" }} , 
 	{ "name": "pad_img2_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce13" }} , 
 	{ "name": "pad_img2_d13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d13" }} , 
 	{ "name": "pad_img2_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q13" }} , 
 	{ "name": "pad_img2_we13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we13" }} , 
 	{ "name": "pad_img2_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address14" }} , 
 	{ "name": "pad_img2_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce14" }} , 
 	{ "name": "pad_img2_d14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d14" }} , 
 	{ "name": "pad_img2_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q14" }} , 
 	{ "name": "pad_img2_we14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we14" }} , 
 	{ "name": "pad_img2_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address15" }} , 
 	{ "name": "pad_img2_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce15" }} , 
 	{ "name": "pad_img2_d15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d15" }} , 
 	{ "name": "pad_img2_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q15" }} , 
 	{ "name": "pad_img2_we15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we15" }} , 
 	{ "name": "pad_img2_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img2", "role": "address16" }} , 
 	{ "name": "pad_img2_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "ce16" }} , 
 	{ "name": "pad_img2_d16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "d16" }} , 
 	{ "name": "pad_img2_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img2", "role": "q16" }} , 
 	{ "name": "pad_img2_we16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img2", "role": "we16" }} , 
 	{ "name": "pad_img3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address0" }} , 
 	{ "name": "pad_img3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce0" }} , 
 	{ "name": "pad_img3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d0" }} , 
 	{ "name": "pad_img3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q0" }} , 
 	{ "name": "pad_img3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we0" }} , 
 	{ "name": "pad_img3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address1" }} , 
 	{ "name": "pad_img3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce1" }} , 
 	{ "name": "pad_img3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d1" }} , 
 	{ "name": "pad_img3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q1" }} , 
 	{ "name": "pad_img3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we1" }} , 
 	{ "name": "pad_img3_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address2" }} , 
 	{ "name": "pad_img3_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce2" }} , 
 	{ "name": "pad_img3_d2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d2" }} , 
 	{ "name": "pad_img3_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q2" }} , 
 	{ "name": "pad_img3_we2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we2" }} , 
 	{ "name": "pad_img3_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address3" }} , 
 	{ "name": "pad_img3_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce3" }} , 
 	{ "name": "pad_img3_d3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d3" }} , 
 	{ "name": "pad_img3_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q3" }} , 
 	{ "name": "pad_img3_we3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we3" }} , 
 	{ "name": "pad_img3_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address4" }} , 
 	{ "name": "pad_img3_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce4" }} , 
 	{ "name": "pad_img3_d4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d4" }} , 
 	{ "name": "pad_img3_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q4" }} , 
 	{ "name": "pad_img3_we4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we4" }} , 
 	{ "name": "pad_img3_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address5" }} , 
 	{ "name": "pad_img3_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce5" }} , 
 	{ "name": "pad_img3_d5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d5" }} , 
 	{ "name": "pad_img3_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q5" }} , 
 	{ "name": "pad_img3_we5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we5" }} , 
 	{ "name": "pad_img3_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address6" }} , 
 	{ "name": "pad_img3_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce6" }} , 
 	{ "name": "pad_img3_d6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d6" }} , 
 	{ "name": "pad_img3_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q6" }} , 
 	{ "name": "pad_img3_we6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we6" }} , 
 	{ "name": "pad_img3_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address7" }} , 
 	{ "name": "pad_img3_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce7" }} , 
 	{ "name": "pad_img3_d7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d7" }} , 
 	{ "name": "pad_img3_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q7" }} , 
 	{ "name": "pad_img3_we7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we7" }} , 
 	{ "name": "pad_img3_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address8" }} , 
 	{ "name": "pad_img3_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce8" }} , 
 	{ "name": "pad_img3_d8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d8" }} , 
 	{ "name": "pad_img3_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q8" }} , 
 	{ "name": "pad_img3_we8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we8" }} , 
 	{ "name": "pad_img3_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address9" }} , 
 	{ "name": "pad_img3_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce9" }} , 
 	{ "name": "pad_img3_d9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d9" }} , 
 	{ "name": "pad_img3_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q9" }} , 
 	{ "name": "pad_img3_we9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we9" }} , 
 	{ "name": "pad_img3_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address10" }} , 
 	{ "name": "pad_img3_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce10" }} , 
 	{ "name": "pad_img3_d10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d10" }} , 
 	{ "name": "pad_img3_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q10" }} , 
 	{ "name": "pad_img3_we10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we10" }} , 
 	{ "name": "pad_img3_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address11" }} , 
 	{ "name": "pad_img3_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce11" }} , 
 	{ "name": "pad_img3_d11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d11" }} , 
 	{ "name": "pad_img3_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q11" }} , 
 	{ "name": "pad_img3_we11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we11" }} , 
 	{ "name": "pad_img3_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address12" }} , 
 	{ "name": "pad_img3_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce12" }} , 
 	{ "name": "pad_img3_d12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d12" }} , 
 	{ "name": "pad_img3_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q12" }} , 
 	{ "name": "pad_img3_we12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we12" }} , 
 	{ "name": "pad_img3_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address13" }} , 
 	{ "name": "pad_img3_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce13" }} , 
 	{ "name": "pad_img3_d13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d13" }} , 
 	{ "name": "pad_img3_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q13" }} , 
 	{ "name": "pad_img3_we13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we13" }} , 
 	{ "name": "pad_img3_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address14" }} , 
 	{ "name": "pad_img3_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce14" }} , 
 	{ "name": "pad_img3_d14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d14" }} , 
 	{ "name": "pad_img3_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q14" }} , 
 	{ "name": "pad_img3_we14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we14" }} , 
 	{ "name": "pad_img3_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address15" }} , 
 	{ "name": "pad_img3_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce15" }} , 
 	{ "name": "pad_img3_d15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d15" }} , 
 	{ "name": "pad_img3_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q15" }} , 
 	{ "name": "pad_img3_we15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we15" }} , 
 	{ "name": "pad_img3_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img3", "role": "address16" }} , 
 	{ "name": "pad_img3_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "ce16" }} , 
 	{ "name": "pad_img3_d16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "d16" }} , 
 	{ "name": "pad_img3_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img3", "role": "q16" }} , 
 	{ "name": "pad_img3_we16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img3", "role": "we16" }} , 
 	{ "name": "pad_img4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address0" }} , 
 	{ "name": "pad_img4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce0" }} , 
 	{ "name": "pad_img4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d0" }} , 
 	{ "name": "pad_img4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q0" }} , 
 	{ "name": "pad_img4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we0" }} , 
 	{ "name": "pad_img4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address1" }} , 
 	{ "name": "pad_img4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce1" }} , 
 	{ "name": "pad_img4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d1" }} , 
 	{ "name": "pad_img4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q1" }} , 
 	{ "name": "pad_img4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we1" }} , 
 	{ "name": "pad_img4_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address2" }} , 
 	{ "name": "pad_img4_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce2" }} , 
 	{ "name": "pad_img4_d2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d2" }} , 
 	{ "name": "pad_img4_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q2" }} , 
 	{ "name": "pad_img4_we2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we2" }} , 
 	{ "name": "pad_img4_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address3" }} , 
 	{ "name": "pad_img4_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce3" }} , 
 	{ "name": "pad_img4_d3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d3" }} , 
 	{ "name": "pad_img4_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q3" }} , 
 	{ "name": "pad_img4_we3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we3" }} , 
 	{ "name": "pad_img4_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address4" }} , 
 	{ "name": "pad_img4_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce4" }} , 
 	{ "name": "pad_img4_d4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d4" }} , 
 	{ "name": "pad_img4_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q4" }} , 
 	{ "name": "pad_img4_we4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we4" }} , 
 	{ "name": "pad_img4_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address5" }} , 
 	{ "name": "pad_img4_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce5" }} , 
 	{ "name": "pad_img4_d5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d5" }} , 
 	{ "name": "pad_img4_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q5" }} , 
 	{ "name": "pad_img4_we5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we5" }} , 
 	{ "name": "pad_img4_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address6" }} , 
 	{ "name": "pad_img4_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce6" }} , 
 	{ "name": "pad_img4_d6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d6" }} , 
 	{ "name": "pad_img4_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q6" }} , 
 	{ "name": "pad_img4_we6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we6" }} , 
 	{ "name": "pad_img4_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address7" }} , 
 	{ "name": "pad_img4_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce7" }} , 
 	{ "name": "pad_img4_d7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d7" }} , 
 	{ "name": "pad_img4_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q7" }} , 
 	{ "name": "pad_img4_we7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we7" }} , 
 	{ "name": "pad_img4_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address8" }} , 
 	{ "name": "pad_img4_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce8" }} , 
 	{ "name": "pad_img4_d8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d8" }} , 
 	{ "name": "pad_img4_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q8" }} , 
 	{ "name": "pad_img4_we8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we8" }} , 
 	{ "name": "pad_img4_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address9" }} , 
 	{ "name": "pad_img4_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce9" }} , 
 	{ "name": "pad_img4_d9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d9" }} , 
 	{ "name": "pad_img4_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q9" }} , 
 	{ "name": "pad_img4_we9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we9" }} , 
 	{ "name": "pad_img4_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address10" }} , 
 	{ "name": "pad_img4_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce10" }} , 
 	{ "name": "pad_img4_d10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d10" }} , 
 	{ "name": "pad_img4_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q10" }} , 
 	{ "name": "pad_img4_we10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we10" }} , 
 	{ "name": "pad_img4_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address11" }} , 
 	{ "name": "pad_img4_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce11" }} , 
 	{ "name": "pad_img4_d11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d11" }} , 
 	{ "name": "pad_img4_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q11" }} , 
 	{ "name": "pad_img4_we11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we11" }} , 
 	{ "name": "pad_img4_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address12" }} , 
 	{ "name": "pad_img4_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce12" }} , 
 	{ "name": "pad_img4_d12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d12" }} , 
 	{ "name": "pad_img4_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q12" }} , 
 	{ "name": "pad_img4_we12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we12" }} , 
 	{ "name": "pad_img4_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address13" }} , 
 	{ "name": "pad_img4_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce13" }} , 
 	{ "name": "pad_img4_d13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d13" }} , 
 	{ "name": "pad_img4_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q13" }} , 
 	{ "name": "pad_img4_we13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we13" }} , 
 	{ "name": "pad_img4_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address14" }} , 
 	{ "name": "pad_img4_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce14" }} , 
 	{ "name": "pad_img4_d14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d14" }} , 
 	{ "name": "pad_img4_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q14" }} , 
 	{ "name": "pad_img4_we14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we14" }} , 
 	{ "name": "pad_img4_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address15" }} , 
 	{ "name": "pad_img4_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce15" }} , 
 	{ "name": "pad_img4_d15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d15" }} , 
 	{ "name": "pad_img4_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q15" }} , 
 	{ "name": "pad_img4_we15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we15" }} , 
 	{ "name": "pad_img4_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img4", "role": "address16" }} , 
 	{ "name": "pad_img4_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "ce16" }} , 
 	{ "name": "pad_img4_d16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "d16" }} , 
 	{ "name": "pad_img4_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img4", "role": "q16" }} , 
 	{ "name": "pad_img4_we16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img4", "role": "we16" }} , 
 	{ "name": "pad_img5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address0" }} , 
 	{ "name": "pad_img5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce0" }} , 
 	{ "name": "pad_img5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d0" }} , 
 	{ "name": "pad_img5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q0" }} , 
 	{ "name": "pad_img5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we0" }} , 
 	{ "name": "pad_img5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address1" }} , 
 	{ "name": "pad_img5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce1" }} , 
 	{ "name": "pad_img5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d1" }} , 
 	{ "name": "pad_img5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q1" }} , 
 	{ "name": "pad_img5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we1" }} , 
 	{ "name": "pad_img5_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address2" }} , 
 	{ "name": "pad_img5_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce2" }} , 
 	{ "name": "pad_img5_d2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d2" }} , 
 	{ "name": "pad_img5_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q2" }} , 
 	{ "name": "pad_img5_we2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we2" }} , 
 	{ "name": "pad_img5_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address3" }} , 
 	{ "name": "pad_img5_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce3" }} , 
 	{ "name": "pad_img5_d3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d3" }} , 
 	{ "name": "pad_img5_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q3" }} , 
 	{ "name": "pad_img5_we3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we3" }} , 
 	{ "name": "pad_img5_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address4" }} , 
 	{ "name": "pad_img5_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce4" }} , 
 	{ "name": "pad_img5_d4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d4" }} , 
 	{ "name": "pad_img5_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q4" }} , 
 	{ "name": "pad_img5_we4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we4" }} , 
 	{ "name": "pad_img5_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address5" }} , 
 	{ "name": "pad_img5_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce5" }} , 
 	{ "name": "pad_img5_d5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d5" }} , 
 	{ "name": "pad_img5_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q5" }} , 
 	{ "name": "pad_img5_we5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we5" }} , 
 	{ "name": "pad_img5_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address6" }} , 
 	{ "name": "pad_img5_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce6" }} , 
 	{ "name": "pad_img5_d6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d6" }} , 
 	{ "name": "pad_img5_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q6" }} , 
 	{ "name": "pad_img5_we6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we6" }} , 
 	{ "name": "pad_img5_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address7" }} , 
 	{ "name": "pad_img5_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce7" }} , 
 	{ "name": "pad_img5_d7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d7" }} , 
 	{ "name": "pad_img5_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q7" }} , 
 	{ "name": "pad_img5_we7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we7" }} , 
 	{ "name": "pad_img5_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address8" }} , 
 	{ "name": "pad_img5_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce8" }} , 
 	{ "name": "pad_img5_d8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d8" }} , 
 	{ "name": "pad_img5_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q8" }} , 
 	{ "name": "pad_img5_we8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we8" }} , 
 	{ "name": "pad_img5_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address9" }} , 
 	{ "name": "pad_img5_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce9" }} , 
 	{ "name": "pad_img5_d9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d9" }} , 
 	{ "name": "pad_img5_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q9" }} , 
 	{ "name": "pad_img5_we9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we9" }} , 
 	{ "name": "pad_img5_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address10" }} , 
 	{ "name": "pad_img5_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce10" }} , 
 	{ "name": "pad_img5_d10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d10" }} , 
 	{ "name": "pad_img5_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q10" }} , 
 	{ "name": "pad_img5_we10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we10" }} , 
 	{ "name": "pad_img5_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address11" }} , 
 	{ "name": "pad_img5_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce11" }} , 
 	{ "name": "pad_img5_d11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d11" }} , 
 	{ "name": "pad_img5_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q11" }} , 
 	{ "name": "pad_img5_we11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we11" }} , 
 	{ "name": "pad_img5_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address12" }} , 
 	{ "name": "pad_img5_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce12" }} , 
 	{ "name": "pad_img5_d12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d12" }} , 
 	{ "name": "pad_img5_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q12" }} , 
 	{ "name": "pad_img5_we12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we12" }} , 
 	{ "name": "pad_img5_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address13" }} , 
 	{ "name": "pad_img5_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce13" }} , 
 	{ "name": "pad_img5_d13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d13" }} , 
 	{ "name": "pad_img5_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q13" }} , 
 	{ "name": "pad_img5_we13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we13" }} , 
 	{ "name": "pad_img5_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address14" }} , 
 	{ "name": "pad_img5_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce14" }} , 
 	{ "name": "pad_img5_d14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d14" }} , 
 	{ "name": "pad_img5_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q14" }} , 
 	{ "name": "pad_img5_we14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we14" }} , 
 	{ "name": "pad_img5_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address15" }} , 
 	{ "name": "pad_img5_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce15" }} , 
 	{ "name": "pad_img5_d15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d15" }} , 
 	{ "name": "pad_img5_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q15" }} , 
 	{ "name": "pad_img5_we15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we15" }} , 
 	{ "name": "pad_img5_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img5", "role": "address16" }} , 
 	{ "name": "pad_img5_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "ce16" }} , 
 	{ "name": "pad_img5_d16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "d16" }} , 
 	{ "name": "pad_img5_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img5", "role": "q16" }} , 
 	{ "name": "pad_img5_we16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img5", "role": "we16" }} , 
 	{ "name": "pad_img6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address0" }} , 
 	{ "name": "pad_img6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce0" }} , 
 	{ "name": "pad_img6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d0" }} , 
 	{ "name": "pad_img6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q0" }} , 
 	{ "name": "pad_img6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we0" }} , 
 	{ "name": "pad_img6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address1" }} , 
 	{ "name": "pad_img6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce1" }} , 
 	{ "name": "pad_img6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d1" }} , 
 	{ "name": "pad_img6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q1" }} , 
 	{ "name": "pad_img6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we1" }} , 
 	{ "name": "pad_img6_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address2" }} , 
 	{ "name": "pad_img6_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce2" }} , 
 	{ "name": "pad_img6_d2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d2" }} , 
 	{ "name": "pad_img6_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q2" }} , 
 	{ "name": "pad_img6_we2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we2" }} , 
 	{ "name": "pad_img6_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address3" }} , 
 	{ "name": "pad_img6_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce3" }} , 
 	{ "name": "pad_img6_d3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d3" }} , 
 	{ "name": "pad_img6_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q3" }} , 
 	{ "name": "pad_img6_we3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we3" }} , 
 	{ "name": "pad_img6_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address4" }} , 
 	{ "name": "pad_img6_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce4" }} , 
 	{ "name": "pad_img6_d4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d4" }} , 
 	{ "name": "pad_img6_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q4" }} , 
 	{ "name": "pad_img6_we4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we4" }} , 
 	{ "name": "pad_img6_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address5" }} , 
 	{ "name": "pad_img6_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce5" }} , 
 	{ "name": "pad_img6_d5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d5" }} , 
 	{ "name": "pad_img6_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q5" }} , 
 	{ "name": "pad_img6_we5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we5" }} , 
 	{ "name": "pad_img6_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address6" }} , 
 	{ "name": "pad_img6_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce6" }} , 
 	{ "name": "pad_img6_d6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d6" }} , 
 	{ "name": "pad_img6_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q6" }} , 
 	{ "name": "pad_img6_we6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we6" }} , 
 	{ "name": "pad_img6_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address7" }} , 
 	{ "name": "pad_img6_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce7" }} , 
 	{ "name": "pad_img6_d7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d7" }} , 
 	{ "name": "pad_img6_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q7" }} , 
 	{ "name": "pad_img6_we7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we7" }} , 
 	{ "name": "pad_img6_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address8" }} , 
 	{ "name": "pad_img6_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce8" }} , 
 	{ "name": "pad_img6_d8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d8" }} , 
 	{ "name": "pad_img6_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q8" }} , 
 	{ "name": "pad_img6_we8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we8" }} , 
 	{ "name": "pad_img6_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address9" }} , 
 	{ "name": "pad_img6_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce9" }} , 
 	{ "name": "pad_img6_d9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d9" }} , 
 	{ "name": "pad_img6_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q9" }} , 
 	{ "name": "pad_img6_we9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we9" }} , 
 	{ "name": "pad_img6_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address10" }} , 
 	{ "name": "pad_img6_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce10" }} , 
 	{ "name": "pad_img6_d10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d10" }} , 
 	{ "name": "pad_img6_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q10" }} , 
 	{ "name": "pad_img6_we10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we10" }} , 
 	{ "name": "pad_img6_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address11" }} , 
 	{ "name": "pad_img6_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce11" }} , 
 	{ "name": "pad_img6_d11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d11" }} , 
 	{ "name": "pad_img6_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q11" }} , 
 	{ "name": "pad_img6_we11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we11" }} , 
 	{ "name": "pad_img6_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address12" }} , 
 	{ "name": "pad_img6_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce12" }} , 
 	{ "name": "pad_img6_d12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d12" }} , 
 	{ "name": "pad_img6_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q12" }} , 
 	{ "name": "pad_img6_we12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we12" }} , 
 	{ "name": "pad_img6_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address13" }} , 
 	{ "name": "pad_img6_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce13" }} , 
 	{ "name": "pad_img6_d13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d13" }} , 
 	{ "name": "pad_img6_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q13" }} , 
 	{ "name": "pad_img6_we13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we13" }} , 
 	{ "name": "pad_img6_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address14" }} , 
 	{ "name": "pad_img6_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce14" }} , 
 	{ "name": "pad_img6_d14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d14" }} , 
 	{ "name": "pad_img6_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q14" }} , 
 	{ "name": "pad_img6_we14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we14" }} , 
 	{ "name": "pad_img6_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address15" }} , 
 	{ "name": "pad_img6_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce15" }} , 
 	{ "name": "pad_img6_d15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d15" }} , 
 	{ "name": "pad_img6_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q15" }} , 
 	{ "name": "pad_img6_we15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we15" }} , 
 	{ "name": "pad_img6_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img6", "role": "address16" }} , 
 	{ "name": "pad_img6_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "ce16" }} , 
 	{ "name": "pad_img6_d16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "d16" }} , 
 	{ "name": "pad_img6_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img6", "role": "q16" }} , 
 	{ "name": "pad_img6_we16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img6", "role": "we16" }} , 
 	{ "name": "pad_img7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address0" }} , 
 	{ "name": "pad_img7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce0" }} , 
 	{ "name": "pad_img7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d0" }} , 
 	{ "name": "pad_img7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q0" }} , 
 	{ "name": "pad_img7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we0" }} , 
 	{ "name": "pad_img7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address1" }} , 
 	{ "name": "pad_img7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce1" }} , 
 	{ "name": "pad_img7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d1" }} , 
 	{ "name": "pad_img7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q1" }} , 
 	{ "name": "pad_img7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we1" }} , 
 	{ "name": "pad_img7_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address2" }} , 
 	{ "name": "pad_img7_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce2" }} , 
 	{ "name": "pad_img7_d2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d2" }} , 
 	{ "name": "pad_img7_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q2" }} , 
 	{ "name": "pad_img7_we2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we2" }} , 
 	{ "name": "pad_img7_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address3" }} , 
 	{ "name": "pad_img7_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce3" }} , 
 	{ "name": "pad_img7_d3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d3" }} , 
 	{ "name": "pad_img7_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q3" }} , 
 	{ "name": "pad_img7_we3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we3" }} , 
 	{ "name": "pad_img7_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address4" }} , 
 	{ "name": "pad_img7_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce4" }} , 
 	{ "name": "pad_img7_d4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d4" }} , 
 	{ "name": "pad_img7_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q4" }} , 
 	{ "name": "pad_img7_we4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we4" }} , 
 	{ "name": "pad_img7_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address5" }} , 
 	{ "name": "pad_img7_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce5" }} , 
 	{ "name": "pad_img7_d5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d5" }} , 
 	{ "name": "pad_img7_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q5" }} , 
 	{ "name": "pad_img7_we5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we5" }} , 
 	{ "name": "pad_img7_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address6" }} , 
 	{ "name": "pad_img7_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce6" }} , 
 	{ "name": "pad_img7_d6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d6" }} , 
 	{ "name": "pad_img7_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q6" }} , 
 	{ "name": "pad_img7_we6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we6" }} , 
 	{ "name": "pad_img7_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address7" }} , 
 	{ "name": "pad_img7_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce7" }} , 
 	{ "name": "pad_img7_d7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d7" }} , 
 	{ "name": "pad_img7_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q7" }} , 
 	{ "name": "pad_img7_we7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we7" }} , 
 	{ "name": "pad_img7_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address8" }} , 
 	{ "name": "pad_img7_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce8" }} , 
 	{ "name": "pad_img7_d8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d8" }} , 
 	{ "name": "pad_img7_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q8" }} , 
 	{ "name": "pad_img7_we8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we8" }} , 
 	{ "name": "pad_img7_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address9" }} , 
 	{ "name": "pad_img7_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce9" }} , 
 	{ "name": "pad_img7_d9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d9" }} , 
 	{ "name": "pad_img7_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q9" }} , 
 	{ "name": "pad_img7_we9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we9" }} , 
 	{ "name": "pad_img7_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address10" }} , 
 	{ "name": "pad_img7_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce10" }} , 
 	{ "name": "pad_img7_d10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d10" }} , 
 	{ "name": "pad_img7_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q10" }} , 
 	{ "name": "pad_img7_we10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we10" }} , 
 	{ "name": "pad_img7_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address11" }} , 
 	{ "name": "pad_img7_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce11" }} , 
 	{ "name": "pad_img7_d11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d11" }} , 
 	{ "name": "pad_img7_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q11" }} , 
 	{ "name": "pad_img7_we11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we11" }} , 
 	{ "name": "pad_img7_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address12" }} , 
 	{ "name": "pad_img7_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce12" }} , 
 	{ "name": "pad_img7_d12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d12" }} , 
 	{ "name": "pad_img7_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q12" }} , 
 	{ "name": "pad_img7_we12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we12" }} , 
 	{ "name": "pad_img7_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address13" }} , 
 	{ "name": "pad_img7_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce13" }} , 
 	{ "name": "pad_img7_d13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d13" }} , 
 	{ "name": "pad_img7_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q13" }} , 
 	{ "name": "pad_img7_we13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we13" }} , 
 	{ "name": "pad_img7_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address14" }} , 
 	{ "name": "pad_img7_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce14" }} , 
 	{ "name": "pad_img7_d14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d14" }} , 
 	{ "name": "pad_img7_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q14" }} , 
 	{ "name": "pad_img7_we14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we14" }} , 
 	{ "name": "pad_img7_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address15" }} , 
 	{ "name": "pad_img7_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce15" }} , 
 	{ "name": "pad_img7_d15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d15" }} , 
 	{ "name": "pad_img7_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q15" }} , 
 	{ "name": "pad_img7_we15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we15" }} , 
 	{ "name": "pad_img7_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pad_img7", "role": "address16" }} , 
 	{ "name": "pad_img7_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "ce16" }} , 
 	{ "name": "pad_img7_d16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "d16" }} , 
 	{ "name": "pad_img7_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pad_img7", "role": "q16" }} , 
 	{ "name": "pad_img7_we16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_img7", "role": "we16" }} , 
 	{ "name": "weight_buf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_0", "role": "address0" }} , 
 	{ "name": "weight_buf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_0", "role": "ce0" }} , 
 	{ "name": "weight_buf_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_0", "role": "d0" }} , 
 	{ "name": "weight_buf_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_0", "role": "q0" }} , 
 	{ "name": "weight_buf_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_0", "role": "we0" }} , 
 	{ "name": "weight_buf_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_0", "role": "address1" }} , 
 	{ "name": "weight_buf_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_0", "role": "ce1" }} , 
 	{ "name": "weight_buf_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_0", "role": "d1" }} , 
 	{ "name": "weight_buf_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_0", "role": "q1" }} , 
 	{ "name": "weight_buf_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_0", "role": "we1" }} , 
 	{ "name": "weight_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_1", "role": "address0" }} , 
 	{ "name": "weight_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_1", "role": "ce0" }} , 
 	{ "name": "weight_buf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_1", "role": "d0" }} , 
 	{ "name": "weight_buf_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_1", "role": "q0" }} , 
 	{ "name": "weight_buf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_1", "role": "we0" }} , 
 	{ "name": "weight_buf_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_1", "role": "address1" }} , 
 	{ "name": "weight_buf_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_1", "role": "ce1" }} , 
 	{ "name": "weight_buf_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_1", "role": "d1" }} , 
 	{ "name": "weight_buf_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_1", "role": "q1" }} , 
 	{ "name": "weight_buf_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_1", "role": "we1" }} , 
 	{ "name": "weight_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_2", "role": "address0" }} , 
 	{ "name": "weight_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_2", "role": "ce0" }} , 
 	{ "name": "weight_buf_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_2", "role": "d0" }} , 
 	{ "name": "weight_buf_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_2", "role": "q0" }} , 
 	{ "name": "weight_buf_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_2", "role": "we0" }} , 
 	{ "name": "weight_buf_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_2", "role": "address1" }} , 
 	{ "name": "weight_buf_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_2", "role": "ce1" }} , 
 	{ "name": "weight_buf_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_2", "role": "d1" }} , 
 	{ "name": "weight_buf_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_2", "role": "q1" }} , 
 	{ "name": "weight_buf_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_2", "role": "we1" }} , 
 	{ "name": "weight_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_3", "role": "address0" }} , 
 	{ "name": "weight_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_3", "role": "ce0" }} , 
 	{ "name": "weight_buf_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_3", "role": "d0" }} , 
 	{ "name": "weight_buf_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_3", "role": "q0" }} , 
 	{ "name": "weight_buf_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_3", "role": "we0" }} , 
 	{ "name": "weight_buf_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_3", "role": "address1" }} , 
 	{ "name": "weight_buf_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_3", "role": "ce1" }} , 
 	{ "name": "weight_buf_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_3", "role": "d1" }} , 
 	{ "name": "weight_buf_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_3", "role": "q1" }} , 
 	{ "name": "weight_buf_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_3", "role": "we1" }} , 
 	{ "name": "weight_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_4", "role": "address0" }} , 
 	{ "name": "weight_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_4", "role": "ce0" }} , 
 	{ "name": "weight_buf_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_4", "role": "d0" }} , 
 	{ "name": "weight_buf_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_4", "role": "q0" }} , 
 	{ "name": "weight_buf_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_4", "role": "we0" }} , 
 	{ "name": "weight_buf_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_4", "role": "address1" }} , 
 	{ "name": "weight_buf_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_4", "role": "ce1" }} , 
 	{ "name": "weight_buf_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_4", "role": "d1" }} , 
 	{ "name": "weight_buf_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_4", "role": "q1" }} , 
 	{ "name": "weight_buf_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_4", "role": "we1" }} , 
 	{ "name": "weight_buf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_5", "role": "address0" }} , 
 	{ "name": "weight_buf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_5", "role": "ce0" }} , 
 	{ "name": "weight_buf_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_5", "role": "d0" }} , 
 	{ "name": "weight_buf_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_5", "role": "q0" }} , 
 	{ "name": "weight_buf_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_5", "role": "we0" }} , 
 	{ "name": "weight_buf_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_5", "role": "address1" }} , 
 	{ "name": "weight_buf_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_5", "role": "ce1" }} , 
 	{ "name": "weight_buf_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_5", "role": "d1" }} , 
 	{ "name": "weight_buf_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_5", "role": "q1" }} , 
 	{ "name": "weight_buf_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_5", "role": "we1" }} , 
 	{ "name": "weight_buf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_6", "role": "address0" }} , 
 	{ "name": "weight_buf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_6", "role": "ce0" }} , 
 	{ "name": "weight_buf_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_6", "role": "d0" }} , 
 	{ "name": "weight_buf_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_6", "role": "q0" }} , 
 	{ "name": "weight_buf_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_6", "role": "we0" }} , 
 	{ "name": "weight_buf_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_6", "role": "address1" }} , 
 	{ "name": "weight_buf_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_6", "role": "ce1" }} , 
 	{ "name": "weight_buf_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_6", "role": "d1" }} , 
 	{ "name": "weight_buf_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_6", "role": "q1" }} , 
 	{ "name": "weight_buf_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_6", "role": "we1" }} , 
 	{ "name": "weight_buf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_7", "role": "address0" }} , 
 	{ "name": "weight_buf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_7", "role": "ce0" }} , 
 	{ "name": "weight_buf_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_7", "role": "d0" }} , 
 	{ "name": "weight_buf_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_7", "role": "q0" }} , 
 	{ "name": "weight_buf_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_7", "role": "we0" }} , 
 	{ "name": "weight_buf_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_buf_7", "role": "address1" }} , 
 	{ "name": "weight_buf_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_7", "role": "ce1" }} , 
 	{ "name": "weight_buf_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_7", "role": "d1" }} , 
 	{ "name": "weight_buf_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_buf_7", "role": "q1" }} , 
 	{ "name": "weight_buf_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_7", "role": "we1" }} , 
 	{ "name": "biases_buf_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases_buf_0", "role": "default" }} , 
 	{ "name": "biases_buf_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases_buf_1", "role": "default" }} , 
 	{ "name": "biases_buf_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases_buf_2", "role": "default" }} , 
 	{ "name": "biases_buf_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases_buf_3", "role": "default" }} , 
 	{ "name": "biases_buf_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases_buf_4", "role": "default" }} , 
 	{ "name": "biases_buf_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases_buf_5", "role": "default" }} , 
 	{ "name": "biases_buf_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases_buf_6", "role": "default" }} , 
 	{ "name": "biases_buf_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases_buf_7", "role": "default" }} , 
 	{ "name": "conv_to_pool_streams_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_0", "role": "din" }} , 
 	{ "name": "conv_to_pool_streams_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_0", "role": "full_n" }} , 
 	{ "name": "conv_to_pool_streams_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_0", "role": "write" }} , 
 	{ "name": "conv_to_pool_streams_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_1", "role": "din" }} , 
 	{ "name": "conv_to_pool_streams_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_1", "role": "full_n" }} , 
 	{ "name": "conv_to_pool_streams_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_1", "role": "write" }} , 
 	{ "name": "conv_to_pool_streams_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_2", "role": "din" }} , 
 	{ "name": "conv_to_pool_streams_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_2", "role": "full_n" }} , 
 	{ "name": "conv_to_pool_streams_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_2", "role": "write" }} , 
 	{ "name": "conv_to_pool_streams_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_3", "role": "din" }} , 
 	{ "name": "conv_to_pool_streams_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_3", "role": "full_n" }} , 
 	{ "name": "conv_to_pool_streams_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_3", "role": "write" }} , 
 	{ "name": "conv_to_pool_streams_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_4", "role": "din" }} , 
 	{ "name": "conv_to_pool_streams_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_4", "role": "full_n" }} , 
 	{ "name": "conv_to_pool_streams_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_4", "role": "write" }} , 
 	{ "name": "conv_to_pool_streams_5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_5", "role": "din" }} , 
 	{ "name": "conv_to_pool_streams_5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_5", "role": "full_n" }} , 
 	{ "name": "conv_to_pool_streams_5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_5", "role": "write" }} , 
 	{ "name": "conv_to_pool_streams_6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_6", "role": "din" }} , 
 	{ "name": "conv_to_pool_streams_6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_6", "role": "full_n" }} , 
 	{ "name": "conv_to_pool_streams_6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_6", "role": "write" }} , 
 	{ "name": "conv_to_pool_streams_7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_to_pool_streams_7", "role": "din" }} , 
 	{ "name": "conv_to_pool_streams_7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_7", "role": "full_n" }} , 
 	{ "name": "conv_to_pool_streams_7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_to_pool_streams_7", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "biases_buf_0_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "biases_buf_0", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "biases_buf_1_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "biases_buf_1", "role": "ap_vld" }} , 
 	{ "name": "biases_buf_2_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "biases_buf_2", "role": "ap_vld" }} , 
 	{ "name": "biases_buf_3_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "biases_buf_3", "role": "ap_vld" }} , 
 	{ "name": "biases_buf_4_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "biases_buf_4", "role": "ap_vld" }} , 
 	{ "name": "biases_buf_5_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "biases_buf_5", "role": "ap_vld" }} , 
 	{ "name": "biases_buf_6_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "biases_buf_6", "role": "ap_vld" }} , 
 	{ "name": "biases_buf_7_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "biases_buf_7", "role": "ap_vld" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "9", "17", "25", "33", "41", "49", "57"],
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
			{"ID" : "1", "Name" : "convolution_U0"},
			{"ID" : "9", "Name" : "convolution_1_U0"},
			{"ID" : "17", "Name" : "convolution_2_U0"},
			{"ID" : "25", "Name" : "convolution_3_U0"},
			{"ID" : "33", "Name" : "convolution_4_U0"},
			{"ID" : "41", "Name" : "convolution_5_U0"},
			{"ID" : "49", "Name" : "convolution_6_U0"},
			{"ID" : "57", "Name" : "convolution_7_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "convolution_U0"},
			{"ID" : "9", "Name" : "convolution_1_U0"},
			{"ID" : "17", "Name" : "convolution_2_U0"},
			{"ID" : "25", "Name" : "convolution_3_U0"},
			{"ID" : "33", "Name" : "convolution_4_U0"},
			{"ID" : "41", "Name" : "convolution_5_U0"},
			{"ID" : "49", "Name" : "convolution_6_U0"},
			{"ID" : "57", "Name" : "convolution_7_U0"}],
		"Port" : [
			{"Name" : "pad_img", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "convolution_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "convolution_1_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "convolution_2_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "convolution_3_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "convolution_4_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "convolution_5_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "convolution_6_U0", "Port" : "pad_img"}]},
			{"Name" : "pad_img7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "convolution_7_U0", "Port" : "pad_img"}]},
			{"Name" : "weight_buf_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "convolution_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "convolution_1_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "convolution_2_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "convolution_3_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "convolution_4_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "convolution_5_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "convolution_6_U0", "Port" : "weight_buf"}]},
			{"Name" : "weight_buf_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "convolution_7_U0", "Port" : "weight_buf"}]},
			{"Name" : "biases_buf_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_buf_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "convolution_U0", "Port" : "conv_to_pool_streams_0"}]},
			{"Name" : "conv_to_pool_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "convolution_1_U0", "Port" : "conv_to_pool_streams_1"}]},
			{"Name" : "conv_to_pool_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "convolution_2_U0", "Port" : "conv_to_pool_streams_2"}]},
			{"Name" : "conv_to_pool_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "convolution_3_U0", "Port" : "conv_to_pool_streams_3"}]},
			{"Name" : "conv_to_pool_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "convolution_4_U0", "Port" : "conv_to_pool_streams_4"}]},
			{"Name" : "conv_to_pool_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "convolution_5_U0", "Port" : "conv_to_pool_streams_5"}]},
			{"Name" : "conv_to_pool_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "convolution_6_U0", "Port" : "conv_to_pool_streams_6"}]},
			{"Name" : "conv_to_pool_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "convolution_7_U0", "Port" : "conv_to_pool_streams_7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_U0", "Parent" : "0", "Child" : ["2"],
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
					{"ID" : "2", "SubInstance" : "grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convolution_U0.grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_U0.grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U29", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_U0.grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U30", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_U0.grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U31", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_U0.grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U32", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_U0.grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U33", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_U0.grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_1_U0", "Parent" : "0", "Child" : ["10"],
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
					{"ID" : "10", "SubInstance" : "grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "9", "Child" : ["11", "12", "13", "14", "15", "16"],
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
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U53", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U54", "Parent" : "10"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U55", "Parent" : "10"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U56", "Parent" : "10"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U57", "Parent" : "10"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_1_U0.grp_convolution_1_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_2_U0", "Parent" : "0", "Child" : ["18"],
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
					{"ID" : "18", "SubInstance" : "grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "17", "Child" : ["19", "20", "21", "22", "23", "24"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U74", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U75", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U76", "Parent" : "18"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U77", "Parent" : "18"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U78", "Parent" : "18"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_2_U0.grp_convolution_2_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_3_U0", "Parent" : "0", "Child" : ["26"],
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
					{"ID" : "26", "SubInstance" : "grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_3", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "25", "Child" : ["27", "28", "29", "30", "31", "32"],
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
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U95", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U96", "Parent" : "26"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U97", "Parent" : "26"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U98", "Parent" : "26"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U99", "Parent" : "26"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_3_U0.grp_convolution_3_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_4_U0", "Parent" : "0", "Child" : ["34"],
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
					{"ID" : "34", "SubInstance" : "grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_4", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "33", "Child" : ["35", "36", "37", "38", "39", "40"],
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
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U116", "Parent" : "34"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U117", "Parent" : "34"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U118", "Parent" : "34"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U119", "Parent" : "34"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U120", "Parent" : "34"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_4_U0.grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_5_U0", "Parent" : "0", "Child" : ["42"],
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
					{"ID" : "42", "SubInstance" : "grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_5", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "41", "Child" : ["43", "44", "45", "46", "47", "48"],
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
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U137", "Parent" : "42"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U138", "Parent" : "42"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U139", "Parent" : "42"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U140", "Parent" : "42"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U141", "Parent" : "42"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_5_U0.grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_6_U0", "Parent" : "0", "Child" : ["50"],
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
					{"ID" : "50", "SubInstance" : "grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_6", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "49", "Child" : ["51", "52", "53", "54", "55", "56"],
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
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U158", "Parent" : "50"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U159", "Parent" : "50"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U160", "Parent" : "50"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U161", "Parent" : "50"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U162", "Parent" : "50"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_6_U0.grp_convolution_6_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_7_U0", "Parent" : "0", "Child" : ["58"],
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
					{"ID" : "58", "SubInstance" : "grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "pad_img", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "weight_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_buf", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_to_pool_streams_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "784", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Port" : "conv_to_pool_streams_7", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138", "Parent" : "57", "Child" : ["59", "60", "61", "62", "63", "64"],
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
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U179", "Parent" : "58"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fadd_32ns_32ns_32_7_full_dsp_1_U180", "Parent" : "58"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U181", "Parent" : "58"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fmul_32ns_32ns_32_4_max_dsp_1_U182", "Parent" : "58"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.fcmp_32ns_32ns_1_2_no_dsp_1_U183", "Parent" : "58"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convolution_7_U0.grp_convolution_7_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"}]}


set ArgLastReadFirstWriteLatency {
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
		conv_to_pool_streams_7 {Type O LastRead -1 FirstWrite 80}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4003", "Max" : "4003"}
	, {"Name" : "Interval", "Min" : "4004", "Max" : "4004"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pad_img { ap_memory {  { pad_img_address0 mem_address 1 10 }  { pad_img_ce0 mem_ce 1 1 }  { pad_img_d0 mem_din 1 32 }  { pad_img_q0 mem_dout 0 32 }  { pad_img_we0 mem_we 1 1 }  { pad_img_address1 MemPortADDR2 1 10 }  { pad_img_ce1 MemPortCE2 1 1 }  { pad_img_d1 mem_din 1 32 }  { pad_img_q1 MemPortDOUT2 0 32 }  { pad_img_we1 mem_we 1 1 }  { pad_img_address2 mem_address 1 10 }  { pad_img_ce2 mem_ce 1 1 }  { pad_img_d2 mem_din 1 32 }  { pad_img_q2 mem_dout 0 32 }  { pad_img_we2 mem_we 1 1 }  { pad_img_address3 mem_address 1 10 }  { pad_img_ce3 mem_ce 1 1 }  { pad_img_d3 mem_din 1 32 }  { pad_img_q3 mem_dout 0 32 }  { pad_img_we3 mem_we 1 1 }  { pad_img_address4 mem_address 1 10 }  { pad_img_ce4 mem_ce 1 1 }  { pad_img_d4 mem_din 1 32 }  { pad_img_q4 mem_dout 0 32 }  { pad_img_we4 mem_we 1 1 }  { pad_img_address5 mem_address 1 10 }  { pad_img_ce5 mem_ce 1 1 }  { pad_img_d5 mem_din 1 32 }  { pad_img_q5 mem_dout 0 32 }  { pad_img_we5 mem_we 1 1 }  { pad_img_address6 mem_address 1 10 }  { pad_img_ce6 mem_ce 1 1 }  { pad_img_d6 mem_din 1 32 }  { pad_img_q6 mem_dout 0 32 }  { pad_img_we6 mem_we 1 1 }  { pad_img_address7 mem_address 1 10 }  { pad_img_ce7 mem_ce 1 1 }  { pad_img_d7 mem_din 1 32 }  { pad_img_q7 mem_dout 0 32 }  { pad_img_we7 mem_we 1 1 }  { pad_img_address8 mem_address 1 10 }  { pad_img_ce8 mem_ce 1 1 }  { pad_img_d8 mem_din 1 32 }  { pad_img_q8 mem_dout 0 32 }  { pad_img_we8 mem_we 1 1 }  { pad_img_address9 mem_address 1 10 }  { pad_img_ce9 mem_ce 1 1 }  { pad_img_d9 mem_din 1 32 }  { pad_img_q9 mem_dout 0 32 }  { pad_img_we9 mem_we 1 1 }  { pad_img_address10 mem_address 1 10 }  { pad_img_ce10 mem_ce 1 1 }  { pad_img_d10 mem_din 1 32 }  { pad_img_q10 mem_dout 0 32 }  { pad_img_we10 mem_we 1 1 }  { pad_img_address11 mem_address 1 10 }  { pad_img_ce11 mem_ce 1 1 }  { pad_img_d11 mem_din 1 32 }  { pad_img_q11 mem_dout 0 32 }  { pad_img_we11 mem_we 1 1 }  { pad_img_address12 mem_address 1 10 }  { pad_img_ce12 mem_ce 1 1 }  { pad_img_d12 mem_din 1 32 }  { pad_img_q12 mem_dout 0 32 }  { pad_img_we12 mem_we 1 1 }  { pad_img_address13 mem_address 1 10 }  { pad_img_ce13 mem_ce 1 1 }  { pad_img_d13 mem_din 1 32 }  { pad_img_q13 mem_dout 0 32 }  { pad_img_we13 mem_we 1 1 }  { pad_img_address14 mem_address 1 10 }  { pad_img_ce14 mem_ce 1 1 }  { pad_img_d14 mem_din 1 32 }  { pad_img_q14 mem_dout 0 32 }  { pad_img_we14 mem_we 1 1 }  { pad_img_address15 mem_address 1 10 }  { pad_img_ce15 mem_ce 1 1 }  { pad_img_d15 mem_din 1 32 }  { pad_img_q15 mem_dout 0 32 }  { pad_img_we15 mem_we 1 1 }  { pad_img_address16 mem_address 1 10 }  { pad_img_ce16 mem_ce 1 1 }  { pad_img_d16 mem_din 1 32 }  { pad_img_q16 mem_dout 0 32 }  { pad_img_we16 mem_we 1 1 } } }
	pad_img1 { ap_memory {  { pad_img1_address0 mem_address 1 10 }  { pad_img1_ce0 mem_ce 1 1 }  { pad_img1_d0 mem_din 1 32 }  { pad_img1_q0 mem_dout 0 32 }  { pad_img1_we0 mem_we 1 1 }  { pad_img1_address1 MemPortADDR2 1 10 }  { pad_img1_ce1 MemPortCE2 1 1 }  { pad_img1_d1 mem_din 1 32 }  { pad_img1_q1 MemPortDOUT2 0 32 }  { pad_img1_we1 mem_we 1 1 }  { pad_img1_address2 mem_address 1 10 }  { pad_img1_ce2 mem_ce 1 1 }  { pad_img1_d2 mem_din 1 32 }  { pad_img1_q2 mem_dout 0 32 }  { pad_img1_we2 mem_we 1 1 }  { pad_img1_address3 mem_address 1 10 }  { pad_img1_ce3 mem_ce 1 1 }  { pad_img1_d3 mem_din 1 32 }  { pad_img1_q3 mem_dout 0 32 }  { pad_img1_we3 mem_we 1 1 }  { pad_img1_address4 mem_address 1 10 }  { pad_img1_ce4 mem_ce 1 1 }  { pad_img1_d4 mem_din 1 32 }  { pad_img1_q4 mem_dout 0 32 }  { pad_img1_we4 mem_we 1 1 }  { pad_img1_address5 mem_address 1 10 }  { pad_img1_ce5 mem_ce 1 1 }  { pad_img1_d5 mem_din 1 32 }  { pad_img1_q5 mem_dout 0 32 }  { pad_img1_we5 mem_we 1 1 }  { pad_img1_address6 mem_address 1 10 }  { pad_img1_ce6 mem_ce 1 1 }  { pad_img1_d6 mem_din 1 32 }  { pad_img1_q6 mem_dout 0 32 }  { pad_img1_we6 mem_we 1 1 }  { pad_img1_address7 mem_address 1 10 }  { pad_img1_ce7 mem_ce 1 1 }  { pad_img1_d7 mem_din 1 32 }  { pad_img1_q7 mem_dout 0 32 }  { pad_img1_we7 mem_we 1 1 }  { pad_img1_address8 mem_address 1 10 }  { pad_img1_ce8 mem_ce 1 1 }  { pad_img1_d8 mem_din 1 32 }  { pad_img1_q8 mem_dout 0 32 }  { pad_img1_we8 mem_we 1 1 }  { pad_img1_address9 mem_address 1 10 }  { pad_img1_ce9 mem_ce 1 1 }  { pad_img1_d9 mem_din 1 32 }  { pad_img1_q9 mem_dout 0 32 }  { pad_img1_we9 mem_we 1 1 }  { pad_img1_address10 mem_address 1 10 }  { pad_img1_ce10 mem_ce 1 1 }  { pad_img1_d10 mem_din 1 32 }  { pad_img1_q10 mem_dout 0 32 }  { pad_img1_we10 mem_we 1 1 }  { pad_img1_address11 mem_address 1 10 }  { pad_img1_ce11 mem_ce 1 1 }  { pad_img1_d11 mem_din 1 32 }  { pad_img1_q11 mem_dout 0 32 }  { pad_img1_we11 mem_we 1 1 }  { pad_img1_address12 mem_address 1 10 }  { pad_img1_ce12 mem_ce 1 1 }  { pad_img1_d12 mem_din 1 32 }  { pad_img1_q12 mem_dout 0 32 }  { pad_img1_we12 mem_we 1 1 }  { pad_img1_address13 mem_address 1 10 }  { pad_img1_ce13 mem_ce 1 1 }  { pad_img1_d13 mem_din 1 32 }  { pad_img1_q13 mem_dout 0 32 }  { pad_img1_we13 mem_we 1 1 }  { pad_img1_address14 mem_address 1 10 }  { pad_img1_ce14 mem_ce 1 1 }  { pad_img1_d14 mem_din 1 32 }  { pad_img1_q14 mem_dout 0 32 }  { pad_img1_we14 mem_we 1 1 }  { pad_img1_address15 mem_address 1 10 }  { pad_img1_ce15 mem_ce 1 1 }  { pad_img1_d15 mem_din 1 32 }  { pad_img1_q15 mem_dout 0 32 }  { pad_img1_we15 mem_we 1 1 }  { pad_img1_address16 mem_address 1 10 }  { pad_img1_ce16 mem_ce 1 1 }  { pad_img1_d16 mem_din 1 32 }  { pad_img1_q16 mem_dout 0 32 }  { pad_img1_we16 mem_we 1 1 } } }
	pad_img2 { ap_memory {  { pad_img2_address0 mem_address 1 10 }  { pad_img2_ce0 mem_ce 1 1 }  { pad_img2_d0 mem_din 1 32 }  { pad_img2_q0 mem_dout 0 32 }  { pad_img2_we0 mem_we 1 1 }  { pad_img2_address1 MemPortADDR2 1 10 }  { pad_img2_ce1 MemPortCE2 1 1 }  { pad_img2_d1 mem_din 1 32 }  { pad_img2_q1 MemPortDOUT2 0 32 }  { pad_img2_we1 mem_we 1 1 }  { pad_img2_address2 mem_address 1 10 }  { pad_img2_ce2 mem_ce 1 1 }  { pad_img2_d2 mem_din 1 32 }  { pad_img2_q2 mem_dout 0 32 }  { pad_img2_we2 mem_we 1 1 }  { pad_img2_address3 mem_address 1 10 }  { pad_img2_ce3 mem_ce 1 1 }  { pad_img2_d3 mem_din 1 32 }  { pad_img2_q3 mem_dout 0 32 }  { pad_img2_we3 mem_we 1 1 }  { pad_img2_address4 mem_address 1 10 }  { pad_img2_ce4 mem_ce 1 1 }  { pad_img2_d4 mem_din 1 32 }  { pad_img2_q4 mem_dout 0 32 }  { pad_img2_we4 mem_we 1 1 }  { pad_img2_address5 mem_address 1 10 }  { pad_img2_ce5 mem_ce 1 1 }  { pad_img2_d5 mem_din 1 32 }  { pad_img2_q5 mem_dout 0 32 }  { pad_img2_we5 mem_we 1 1 }  { pad_img2_address6 mem_address 1 10 }  { pad_img2_ce6 mem_ce 1 1 }  { pad_img2_d6 mem_din 1 32 }  { pad_img2_q6 mem_dout 0 32 }  { pad_img2_we6 mem_we 1 1 }  { pad_img2_address7 mem_address 1 10 }  { pad_img2_ce7 mem_ce 1 1 }  { pad_img2_d7 mem_din 1 32 }  { pad_img2_q7 mem_dout 0 32 }  { pad_img2_we7 mem_we 1 1 }  { pad_img2_address8 mem_address 1 10 }  { pad_img2_ce8 mem_ce 1 1 }  { pad_img2_d8 mem_din 1 32 }  { pad_img2_q8 mem_dout 0 32 }  { pad_img2_we8 mem_we 1 1 }  { pad_img2_address9 mem_address 1 10 }  { pad_img2_ce9 mem_ce 1 1 }  { pad_img2_d9 mem_din 1 32 }  { pad_img2_q9 mem_dout 0 32 }  { pad_img2_we9 mem_we 1 1 }  { pad_img2_address10 mem_address 1 10 }  { pad_img2_ce10 mem_ce 1 1 }  { pad_img2_d10 mem_din 1 32 }  { pad_img2_q10 mem_dout 0 32 }  { pad_img2_we10 mem_we 1 1 }  { pad_img2_address11 mem_address 1 10 }  { pad_img2_ce11 mem_ce 1 1 }  { pad_img2_d11 mem_din 1 32 }  { pad_img2_q11 mem_dout 0 32 }  { pad_img2_we11 mem_we 1 1 }  { pad_img2_address12 mem_address 1 10 }  { pad_img2_ce12 mem_ce 1 1 }  { pad_img2_d12 mem_din 1 32 }  { pad_img2_q12 mem_dout 0 32 }  { pad_img2_we12 mem_we 1 1 }  { pad_img2_address13 mem_address 1 10 }  { pad_img2_ce13 mem_ce 1 1 }  { pad_img2_d13 mem_din 1 32 }  { pad_img2_q13 mem_dout 0 32 }  { pad_img2_we13 mem_we 1 1 }  { pad_img2_address14 mem_address 1 10 }  { pad_img2_ce14 mem_ce 1 1 }  { pad_img2_d14 mem_din 1 32 }  { pad_img2_q14 mem_dout 0 32 }  { pad_img2_we14 mem_we 1 1 }  { pad_img2_address15 mem_address 1 10 }  { pad_img2_ce15 mem_ce 1 1 }  { pad_img2_d15 mem_din 1 32 }  { pad_img2_q15 mem_dout 0 32 }  { pad_img2_we15 mem_we 1 1 }  { pad_img2_address16 mem_address 1 10 }  { pad_img2_ce16 mem_ce 1 1 }  { pad_img2_d16 mem_din 1 32 }  { pad_img2_q16 mem_dout 0 32 }  { pad_img2_we16 mem_we 1 1 } } }
	pad_img3 { ap_memory {  { pad_img3_address0 mem_address 1 10 }  { pad_img3_ce0 mem_ce 1 1 }  { pad_img3_d0 mem_din 1 32 }  { pad_img3_q0 mem_dout 0 32 }  { pad_img3_we0 mem_we 1 1 }  { pad_img3_address1 MemPortADDR2 1 10 }  { pad_img3_ce1 MemPortCE2 1 1 }  { pad_img3_d1 mem_din 1 32 }  { pad_img3_q1 MemPortDOUT2 0 32 }  { pad_img3_we1 mem_we 1 1 }  { pad_img3_address2 mem_address 1 10 }  { pad_img3_ce2 mem_ce 1 1 }  { pad_img3_d2 mem_din 1 32 }  { pad_img3_q2 mem_dout 0 32 }  { pad_img3_we2 mem_we 1 1 }  { pad_img3_address3 mem_address 1 10 }  { pad_img3_ce3 mem_ce 1 1 }  { pad_img3_d3 mem_din 1 32 }  { pad_img3_q3 mem_dout 0 32 }  { pad_img3_we3 mem_we 1 1 }  { pad_img3_address4 mem_address 1 10 }  { pad_img3_ce4 mem_ce 1 1 }  { pad_img3_d4 mem_din 1 32 }  { pad_img3_q4 mem_dout 0 32 }  { pad_img3_we4 mem_we 1 1 }  { pad_img3_address5 mem_address 1 10 }  { pad_img3_ce5 mem_ce 1 1 }  { pad_img3_d5 mem_din 1 32 }  { pad_img3_q5 mem_dout 0 32 }  { pad_img3_we5 mem_we 1 1 }  { pad_img3_address6 mem_address 1 10 }  { pad_img3_ce6 mem_ce 1 1 }  { pad_img3_d6 mem_din 1 32 }  { pad_img3_q6 mem_dout 0 32 }  { pad_img3_we6 mem_we 1 1 }  { pad_img3_address7 mem_address 1 10 }  { pad_img3_ce7 mem_ce 1 1 }  { pad_img3_d7 mem_din 1 32 }  { pad_img3_q7 mem_dout 0 32 }  { pad_img3_we7 mem_we 1 1 }  { pad_img3_address8 mem_address 1 10 }  { pad_img3_ce8 mem_ce 1 1 }  { pad_img3_d8 mem_din 1 32 }  { pad_img3_q8 mem_dout 0 32 }  { pad_img3_we8 mem_we 1 1 }  { pad_img3_address9 mem_address 1 10 }  { pad_img3_ce9 mem_ce 1 1 }  { pad_img3_d9 mem_din 1 32 }  { pad_img3_q9 mem_dout 0 32 }  { pad_img3_we9 mem_we 1 1 }  { pad_img3_address10 mem_address 1 10 }  { pad_img3_ce10 mem_ce 1 1 }  { pad_img3_d10 mem_din 1 32 }  { pad_img3_q10 mem_dout 0 32 }  { pad_img3_we10 mem_we 1 1 }  { pad_img3_address11 mem_address 1 10 }  { pad_img3_ce11 mem_ce 1 1 }  { pad_img3_d11 mem_din 1 32 }  { pad_img3_q11 mem_dout 0 32 }  { pad_img3_we11 mem_we 1 1 }  { pad_img3_address12 mem_address 1 10 }  { pad_img3_ce12 mem_ce 1 1 }  { pad_img3_d12 mem_din 1 32 }  { pad_img3_q12 mem_dout 0 32 }  { pad_img3_we12 mem_we 1 1 }  { pad_img3_address13 mem_address 1 10 }  { pad_img3_ce13 mem_ce 1 1 }  { pad_img3_d13 mem_din 1 32 }  { pad_img3_q13 mem_dout 0 32 }  { pad_img3_we13 mem_we 1 1 }  { pad_img3_address14 mem_address 1 10 }  { pad_img3_ce14 mem_ce 1 1 }  { pad_img3_d14 mem_din 1 32 }  { pad_img3_q14 mem_dout 0 32 }  { pad_img3_we14 mem_we 1 1 }  { pad_img3_address15 mem_address 1 10 }  { pad_img3_ce15 mem_ce 1 1 }  { pad_img3_d15 mem_din 1 32 }  { pad_img3_q15 mem_dout 0 32 }  { pad_img3_we15 mem_we 1 1 }  { pad_img3_address16 mem_address 1 10 }  { pad_img3_ce16 mem_ce 1 1 }  { pad_img3_d16 mem_din 1 32 }  { pad_img3_q16 mem_dout 0 32 }  { pad_img3_we16 mem_we 1 1 } } }
	pad_img4 { ap_memory {  { pad_img4_address0 mem_address 1 10 }  { pad_img4_ce0 mem_ce 1 1 }  { pad_img4_d0 mem_din 1 32 }  { pad_img4_q0 mem_dout 0 32 }  { pad_img4_we0 mem_we 1 1 }  { pad_img4_address1 MemPortADDR2 1 10 }  { pad_img4_ce1 MemPortCE2 1 1 }  { pad_img4_d1 mem_din 1 32 }  { pad_img4_q1 MemPortDOUT2 0 32 }  { pad_img4_we1 mem_we 1 1 }  { pad_img4_address2 mem_address 1 10 }  { pad_img4_ce2 mem_ce 1 1 }  { pad_img4_d2 mem_din 1 32 }  { pad_img4_q2 mem_dout 0 32 }  { pad_img4_we2 mem_we 1 1 }  { pad_img4_address3 mem_address 1 10 }  { pad_img4_ce3 mem_ce 1 1 }  { pad_img4_d3 mem_din 1 32 }  { pad_img4_q3 mem_dout 0 32 }  { pad_img4_we3 mem_we 1 1 }  { pad_img4_address4 mem_address 1 10 }  { pad_img4_ce4 mem_ce 1 1 }  { pad_img4_d4 mem_din 1 32 }  { pad_img4_q4 mem_dout 0 32 }  { pad_img4_we4 mem_we 1 1 }  { pad_img4_address5 mem_address 1 10 }  { pad_img4_ce5 mem_ce 1 1 }  { pad_img4_d5 mem_din 1 32 }  { pad_img4_q5 mem_dout 0 32 }  { pad_img4_we5 mem_we 1 1 }  { pad_img4_address6 mem_address 1 10 }  { pad_img4_ce6 mem_ce 1 1 }  { pad_img4_d6 mem_din 1 32 }  { pad_img4_q6 mem_dout 0 32 }  { pad_img4_we6 mem_we 1 1 }  { pad_img4_address7 mem_address 1 10 }  { pad_img4_ce7 mem_ce 1 1 }  { pad_img4_d7 mem_din 1 32 }  { pad_img4_q7 mem_dout 0 32 }  { pad_img4_we7 mem_we 1 1 }  { pad_img4_address8 mem_address 1 10 }  { pad_img4_ce8 mem_ce 1 1 }  { pad_img4_d8 mem_din 1 32 }  { pad_img4_q8 mem_dout 0 32 }  { pad_img4_we8 mem_we 1 1 }  { pad_img4_address9 mem_address 1 10 }  { pad_img4_ce9 mem_ce 1 1 }  { pad_img4_d9 mem_din 1 32 }  { pad_img4_q9 mem_dout 0 32 }  { pad_img4_we9 mem_we 1 1 }  { pad_img4_address10 mem_address 1 10 }  { pad_img4_ce10 mem_ce 1 1 }  { pad_img4_d10 mem_din 1 32 }  { pad_img4_q10 mem_dout 0 32 }  { pad_img4_we10 mem_we 1 1 }  { pad_img4_address11 mem_address 1 10 }  { pad_img4_ce11 mem_ce 1 1 }  { pad_img4_d11 mem_din 1 32 }  { pad_img4_q11 mem_dout 0 32 }  { pad_img4_we11 mem_we 1 1 }  { pad_img4_address12 mem_address 1 10 }  { pad_img4_ce12 mem_ce 1 1 }  { pad_img4_d12 mem_din 1 32 }  { pad_img4_q12 mem_dout 0 32 }  { pad_img4_we12 mem_we 1 1 }  { pad_img4_address13 mem_address 1 10 }  { pad_img4_ce13 mem_ce 1 1 }  { pad_img4_d13 mem_din 1 32 }  { pad_img4_q13 mem_dout 0 32 }  { pad_img4_we13 mem_we 1 1 }  { pad_img4_address14 mem_address 1 10 }  { pad_img4_ce14 mem_ce 1 1 }  { pad_img4_d14 mem_din 1 32 }  { pad_img4_q14 mem_dout 0 32 }  { pad_img4_we14 mem_we 1 1 }  { pad_img4_address15 mem_address 1 10 }  { pad_img4_ce15 mem_ce 1 1 }  { pad_img4_d15 mem_din 1 32 }  { pad_img4_q15 mem_dout 0 32 }  { pad_img4_we15 mem_we 1 1 }  { pad_img4_address16 mem_address 1 10 }  { pad_img4_ce16 mem_ce 1 1 }  { pad_img4_d16 mem_din 1 32 }  { pad_img4_q16 mem_dout 0 32 }  { pad_img4_we16 mem_we 1 1 } } }
	pad_img5 { ap_memory {  { pad_img5_address0 mem_address 1 10 }  { pad_img5_ce0 mem_ce 1 1 }  { pad_img5_d0 mem_din 1 32 }  { pad_img5_q0 mem_dout 0 32 }  { pad_img5_we0 mem_we 1 1 }  { pad_img5_address1 MemPortADDR2 1 10 }  { pad_img5_ce1 MemPortCE2 1 1 }  { pad_img5_d1 mem_din 1 32 }  { pad_img5_q1 MemPortDOUT2 0 32 }  { pad_img5_we1 mem_we 1 1 }  { pad_img5_address2 mem_address 1 10 }  { pad_img5_ce2 mem_ce 1 1 }  { pad_img5_d2 mem_din 1 32 }  { pad_img5_q2 mem_dout 0 32 }  { pad_img5_we2 mem_we 1 1 }  { pad_img5_address3 mem_address 1 10 }  { pad_img5_ce3 mem_ce 1 1 }  { pad_img5_d3 mem_din 1 32 }  { pad_img5_q3 mem_dout 0 32 }  { pad_img5_we3 mem_we 1 1 }  { pad_img5_address4 mem_address 1 10 }  { pad_img5_ce4 mem_ce 1 1 }  { pad_img5_d4 mem_din 1 32 }  { pad_img5_q4 mem_dout 0 32 }  { pad_img5_we4 mem_we 1 1 }  { pad_img5_address5 mem_address 1 10 }  { pad_img5_ce5 mem_ce 1 1 }  { pad_img5_d5 mem_din 1 32 }  { pad_img5_q5 mem_dout 0 32 }  { pad_img5_we5 mem_we 1 1 }  { pad_img5_address6 mem_address 1 10 }  { pad_img5_ce6 mem_ce 1 1 }  { pad_img5_d6 mem_din 1 32 }  { pad_img5_q6 mem_dout 0 32 }  { pad_img5_we6 mem_we 1 1 }  { pad_img5_address7 mem_address 1 10 }  { pad_img5_ce7 mem_ce 1 1 }  { pad_img5_d7 mem_din 1 32 }  { pad_img5_q7 mem_dout 0 32 }  { pad_img5_we7 mem_we 1 1 }  { pad_img5_address8 mem_address 1 10 }  { pad_img5_ce8 mem_ce 1 1 }  { pad_img5_d8 mem_din 1 32 }  { pad_img5_q8 mem_dout 0 32 }  { pad_img5_we8 mem_we 1 1 }  { pad_img5_address9 mem_address 1 10 }  { pad_img5_ce9 mem_ce 1 1 }  { pad_img5_d9 mem_din 1 32 }  { pad_img5_q9 mem_dout 0 32 }  { pad_img5_we9 mem_we 1 1 }  { pad_img5_address10 mem_address 1 10 }  { pad_img5_ce10 mem_ce 1 1 }  { pad_img5_d10 mem_din 1 32 }  { pad_img5_q10 mem_dout 0 32 }  { pad_img5_we10 mem_we 1 1 }  { pad_img5_address11 mem_address 1 10 }  { pad_img5_ce11 mem_ce 1 1 }  { pad_img5_d11 mem_din 1 32 }  { pad_img5_q11 mem_dout 0 32 }  { pad_img5_we11 mem_we 1 1 }  { pad_img5_address12 mem_address 1 10 }  { pad_img5_ce12 mem_ce 1 1 }  { pad_img5_d12 mem_din 1 32 }  { pad_img5_q12 mem_dout 0 32 }  { pad_img5_we12 mem_we 1 1 }  { pad_img5_address13 mem_address 1 10 }  { pad_img5_ce13 mem_ce 1 1 }  { pad_img5_d13 mem_din 1 32 }  { pad_img5_q13 mem_dout 0 32 }  { pad_img5_we13 mem_we 1 1 }  { pad_img5_address14 mem_address 1 10 }  { pad_img5_ce14 mem_ce 1 1 }  { pad_img5_d14 mem_din 1 32 }  { pad_img5_q14 mem_dout 0 32 }  { pad_img5_we14 mem_we 1 1 }  { pad_img5_address15 mem_address 1 10 }  { pad_img5_ce15 mem_ce 1 1 }  { pad_img5_d15 mem_din 1 32 }  { pad_img5_q15 mem_dout 0 32 }  { pad_img5_we15 mem_we 1 1 }  { pad_img5_address16 mem_address 1 10 }  { pad_img5_ce16 mem_ce 1 1 }  { pad_img5_d16 mem_din 1 32 }  { pad_img5_q16 mem_dout 0 32 }  { pad_img5_we16 mem_we 1 1 } } }
	pad_img6 { ap_memory {  { pad_img6_address0 mem_address 1 10 }  { pad_img6_ce0 mem_ce 1 1 }  { pad_img6_d0 mem_din 1 32 }  { pad_img6_q0 mem_dout 0 32 }  { pad_img6_we0 mem_we 1 1 }  { pad_img6_address1 MemPortADDR2 1 10 }  { pad_img6_ce1 MemPortCE2 1 1 }  { pad_img6_d1 mem_din 1 32 }  { pad_img6_q1 MemPortDOUT2 0 32 }  { pad_img6_we1 mem_we 1 1 }  { pad_img6_address2 mem_address 1 10 }  { pad_img6_ce2 mem_ce 1 1 }  { pad_img6_d2 mem_din 1 32 }  { pad_img6_q2 mem_dout 0 32 }  { pad_img6_we2 mem_we 1 1 }  { pad_img6_address3 mem_address 1 10 }  { pad_img6_ce3 mem_ce 1 1 }  { pad_img6_d3 mem_din 1 32 }  { pad_img6_q3 mem_dout 0 32 }  { pad_img6_we3 mem_we 1 1 }  { pad_img6_address4 mem_address 1 10 }  { pad_img6_ce4 mem_ce 1 1 }  { pad_img6_d4 mem_din 1 32 }  { pad_img6_q4 mem_dout 0 32 }  { pad_img6_we4 mem_we 1 1 }  { pad_img6_address5 mem_address 1 10 }  { pad_img6_ce5 mem_ce 1 1 }  { pad_img6_d5 mem_din 1 32 }  { pad_img6_q5 mem_dout 0 32 }  { pad_img6_we5 mem_we 1 1 }  { pad_img6_address6 mem_address 1 10 }  { pad_img6_ce6 mem_ce 1 1 }  { pad_img6_d6 mem_din 1 32 }  { pad_img6_q6 mem_dout 0 32 }  { pad_img6_we6 mem_we 1 1 }  { pad_img6_address7 mem_address 1 10 }  { pad_img6_ce7 mem_ce 1 1 }  { pad_img6_d7 mem_din 1 32 }  { pad_img6_q7 mem_dout 0 32 }  { pad_img6_we7 mem_we 1 1 }  { pad_img6_address8 mem_address 1 10 }  { pad_img6_ce8 mem_ce 1 1 }  { pad_img6_d8 mem_din 1 32 }  { pad_img6_q8 mem_dout 0 32 }  { pad_img6_we8 mem_we 1 1 }  { pad_img6_address9 mem_address 1 10 }  { pad_img6_ce9 mem_ce 1 1 }  { pad_img6_d9 mem_din 1 32 }  { pad_img6_q9 mem_dout 0 32 }  { pad_img6_we9 mem_we 1 1 }  { pad_img6_address10 mem_address 1 10 }  { pad_img6_ce10 mem_ce 1 1 }  { pad_img6_d10 mem_din 1 32 }  { pad_img6_q10 mem_dout 0 32 }  { pad_img6_we10 mem_we 1 1 }  { pad_img6_address11 mem_address 1 10 }  { pad_img6_ce11 mem_ce 1 1 }  { pad_img6_d11 mem_din 1 32 }  { pad_img6_q11 mem_dout 0 32 }  { pad_img6_we11 mem_we 1 1 }  { pad_img6_address12 mem_address 1 10 }  { pad_img6_ce12 mem_ce 1 1 }  { pad_img6_d12 mem_din 1 32 }  { pad_img6_q12 mem_dout 0 32 }  { pad_img6_we12 mem_we 1 1 }  { pad_img6_address13 mem_address 1 10 }  { pad_img6_ce13 mem_ce 1 1 }  { pad_img6_d13 mem_din 1 32 }  { pad_img6_q13 mem_dout 0 32 }  { pad_img6_we13 mem_we 1 1 }  { pad_img6_address14 mem_address 1 10 }  { pad_img6_ce14 mem_ce 1 1 }  { pad_img6_d14 mem_din 1 32 }  { pad_img6_q14 mem_dout 0 32 }  { pad_img6_we14 mem_we 1 1 }  { pad_img6_address15 mem_address 1 10 }  { pad_img6_ce15 mem_ce 1 1 }  { pad_img6_d15 mem_din 1 32 }  { pad_img6_q15 mem_dout 0 32 }  { pad_img6_we15 mem_we 1 1 }  { pad_img6_address16 mem_address 1 10 }  { pad_img6_ce16 mem_ce 1 1 }  { pad_img6_d16 mem_din 1 32 }  { pad_img6_q16 mem_dout 0 32 }  { pad_img6_we16 mem_we 1 1 } } }
	pad_img7 { ap_memory {  { pad_img7_address0 mem_address 1 10 }  { pad_img7_ce0 mem_ce 1 1 }  { pad_img7_d0 mem_din 1 32 }  { pad_img7_q0 mem_dout 0 32 }  { pad_img7_we0 mem_we 1 1 }  { pad_img7_address1 MemPortADDR2 1 10 }  { pad_img7_ce1 MemPortCE2 1 1 }  { pad_img7_d1 mem_din 1 32 }  { pad_img7_q1 MemPortDOUT2 0 32 }  { pad_img7_we1 mem_we 1 1 }  { pad_img7_address2 mem_address 1 10 }  { pad_img7_ce2 mem_ce 1 1 }  { pad_img7_d2 mem_din 1 32 }  { pad_img7_q2 mem_dout 0 32 }  { pad_img7_we2 mem_we 1 1 }  { pad_img7_address3 mem_address 1 10 }  { pad_img7_ce3 mem_ce 1 1 }  { pad_img7_d3 mem_din 1 32 }  { pad_img7_q3 mem_dout 0 32 }  { pad_img7_we3 mem_we 1 1 }  { pad_img7_address4 mem_address 1 10 }  { pad_img7_ce4 mem_ce 1 1 }  { pad_img7_d4 mem_din 1 32 }  { pad_img7_q4 mem_dout 0 32 }  { pad_img7_we4 mem_we 1 1 }  { pad_img7_address5 mem_address 1 10 }  { pad_img7_ce5 mem_ce 1 1 }  { pad_img7_d5 mem_din 1 32 }  { pad_img7_q5 mem_dout 0 32 }  { pad_img7_we5 mem_we 1 1 }  { pad_img7_address6 mem_address 1 10 }  { pad_img7_ce6 mem_ce 1 1 }  { pad_img7_d6 mem_din 1 32 }  { pad_img7_q6 mem_dout 0 32 }  { pad_img7_we6 mem_we 1 1 }  { pad_img7_address7 mem_address 1 10 }  { pad_img7_ce7 mem_ce 1 1 }  { pad_img7_d7 mem_din 1 32 }  { pad_img7_q7 mem_dout 0 32 }  { pad_img7_we7 mem_we 1 1 }  { pad_img7_address8 mem_address 1 10 }  { pad_img7_ce8 mem_ce 1 1 }  { pad_img7_d8 mem_din 1 32 }  { pad_img7_q8 mem_dout 0 32 }  { pad_img7_we8 mem_we 1 1 }  { pad_img7_address9 mem_address 1 10 }  { pad_img7_ce9 mem_ce 1 1 }  { pad_img7_d9 mem_din 1 32 }  { pad_img7_q9 mem_dout 0 32 }  { pad_img7_we9 mem_we 1 1 }  { pad_img7_address10 mem_address 1 10 }  { pad_img7_ce10 mem_ce 1 1 }  { pad_img7_d10 mem_din 1 32 }  { pad_img7_q10 mem_dout 0 32 }  { pad_img7_we10 mem_we 1 1 }  { pad_img7_address11 mem_address 1 10 }  { pad_img7_ce11 mem_ce 1 1 }  { pad_img7_d11 mem_din 1 32 }  { pad_img7_q11 mem_dout 0 32 }  { pad_img7_we11 mem_we 1 1 }  { pad_img7_address12 mem_address 1 10 }  { pad_img7_ce12 mem_ce 1 1 }  { pad_img7_d12 mem_din 1 32 }  { pad_img7_q12 mem_dout 0 32 }  { pad_img7_we12 mem_we 1 1 }  { pad_img7_address13 mem_address 1 10 }  { pad_img7_ce13 mem_ce 1 1 }  { pad_img7_d13 mem_din 1 32 }  { pad_img7_q13 mem_dout 0 32 }  { pad_img7_we13 mem_we 1 1 }  { pad_img7_address14 mem_address 1 10 }  { pad_img7_ce14 mem_ce 1 1 }  { pad_img7_d14 mem_din 1 32 }  { pad_img7_q14 mem_dout 0 32 }  { pad_img7_we14 mem_we 1 1 }  { pad_img7_address15 mem_address 1 10 }  { pad_img7_ce15 mem_ce 1 1 }  { pad_img7_d15 mem_din 1 32 }  { pad_img7_q15 mem_dout 0 32 }  { pad_img7_we15 mem_we 1 1 }  { pad_img7_address16 mem_address 1 10 }  { pad_img7_ce16 mem_ce 1 1 }  { pad_img7_d16 mem_din 1 32 }  { pad_img7_q16 mem_dout 0 32 }  { pad_img7_we16 mem_we 1 1 } } }
	weight_buf_0 { ap_memory {  { weight_buf_0_address0 mem_address 1 4 }  { weight_buf_0_ce0 mem_ce 1 1 }  { weight_buf_0_d0 mem_din 1 32 }  { weight_buf_0_q0 mem_dout 0 32 }  { weight_buf_0_we0 mem_we 1 1 }  { weight_buf_0_address1 MemPortADDR2 1 4 }  { weight_buf_0_ce1 MemPortCE2 1 1 }  { weight_buf_0_d1 mem_din 1 32 }  { weight_buf_0_q1 MemPortDOUT2 0 32 }  { weight_buf_0_we1 mem_we 1 1 } } }
	weight_buf_1 { ap_memory {  { weight_buf_1_address0 mem_address 1 4 }  { weight_buf_1_ce0 mem_ce 1 1 }  { weight_buf_1_d0 mem_din 1 32 }  { weight_buf_1_q0 mem_dout 0 32 }  { weight_buf_1_we0 mem_we 1 1 }  { weight_buf_1_address1 MemPortADDR2 1 4 }  { weight_buf_1_ce1 MemPortCE2 1 1 }  { weight_buf_1_d1 mem_din 1 32 }  { weight_buf_1_q1 MemPortDOUT2 0 32 }  { weight_buf_1_we1 mem_we 1 1 } } }
	weight_buf_2 { ap_memory {  { weight_buf_2_address0 mem_address 1 4 }  { weight_buf_2_ce0 mem_ce 1 1 }  { weight_buf_2_d0 mem_din 1 32 }  { weight_buf_2_q0 mem_dout 0 32 }  { weight_buf_2_we0 mem_we 1 1 }  { weight_buf_2_address1 MemPortADDR2 1 4 }  { weight_buf_2_ce1 MemPortCE2 1 1 }  { weight_buf_2_d1 mem_din 1 32 }  { weight_buf_2_q1 MemPortDOUT2 0 32 }  { weight_buf_2_we1 mem_we 1 1 } } }
	weight_buf_3 { ap_memory {  { weight_buf_3_address0 mem_address 1 4 }  { weight_buf_3_ce0 mem_ce 1 1 }  { weight_buf_3_d0 mem_din 1 32 }  { weight_buf_3_q0 mem_dout 0 32 }  { weight_buf_3_we0 mem_we 1 1 }  { weight_buf_3_address1 MemPortADDR2 1 4 }  { weight_buf_3_ce1 MemPortCE2 1 1 }  { weight_buf_3_d1 mem_din 1 32 }  { weight_buf_3_q1 MemPortDOUT2 0 32 }  { weight_buf_3_we1 mem_we 1 1 } } }
	weight_buf_4 { ap_memory {  { weight_buf_4_address0 mem_address 1 4 }  { weight_buf_4_ce0 mem_ce 1 1 }  { weight_buf_4_d0 mem_din 1 32 }  { weight_buf_4_q0 mem_dout 0 32 }  { weight_buf_4_we0 mem_we 1 1 }  { weight_buf_4_address1 MemPortADDR2 1 4 }  { weight_buf_4_ce1 MemPortCE2 1 1 }  { weight_buf_4_d1 mem_din 1 32 }  { weight_buf_4_q1 MemPortDOUT2 0 32 }  { weight_buf_4_we1 mem_we 1 1 } } }
	weight_buf_5 { ap_memory {  { weight_buf_5_address0 mem_address 1 4 }  { weight_buf_5_ce0 mem_ce 1 1 }  { weight_buf_5_d0 mem_din 1 32 }  { weight_buf_5_q0 mem_dout 0 32 }  { weight_buf_5_we0 mem_we 1 1 }  { weight_buf_5_address1 MemPortADDR2 1 4 }  { weight_buf_5_ce1 MemPortCE2 1 1 }  { weight_buf_5_d1 mem_din 1 32 }  { weight_buf_5_q1 MemPortDOUT2 0 32 }  { weight_buf_5_we1 mem_we 1 1 } } }
	weight_buf_6 { ap_memory {  { weight_buf_6_address0 mem_address 1 4 }  { weight_buf_6_ce0 mem_ce 1 1 }  { weight_buf_6_d0 mem_din 1 32 }  { weight_buf_6_q0 mem_dout 0 32 }  { weight_buf_6_we0 mem_we 1 1 }  { weight_buf_6_address1 MemPortADDR2 1 4 }  { weight_buf_6_ce1 MemPortCE2 1 1 }  { weight_buf_6_d1 mem_din 1 32 }  { weight_buf_6_q1 MemPortDOUT2 0 32 }  { weight_buf_6_we1 mem_we 1 1 } } }
	weight_buf_7 { ap_memory {  { weight_buf_7_address0 mem_address 1 4 }  { weight_buf_7_ce0 mem_ce 1 1 }  { weight_buf_7_d0 mem_din 1 32 }  { weight_buf_7_q0 mem_dout 0 32 }  { weight_buf_7_we0 mem_we 1 1 }  { weight_buf_7_address1 MemPortADDR2 1 4 }  { weight_buf_7_ce1 MemPortCE2 1 1 }  { weight_buf_7_d1 mem_din 1 32 }  { weight_buf_7_q1 MemPortDOUT2 0 32 }  { weight_buf_7_we1 mem_we 1 1 } } }
	biases_buf_0 { ap_none {  { biases_buf_0 in_data 0 32 }  { biases_buf_0_ap_vld in_vld 0 1 } } }
	biases_buf_1 { ap_none {  { biases_buf_1 in_data 0 32 }  { biases_buf_1_ap_vld in_vld 0 1 } } }
	biases_buf_2 { ap_none {  { biases_buf_2 in_data 0 32 }  { biases_buf_2_ap_vld in_vld 0 1 } } }
	biases_buf_3 { ap_none {  { biases_buf_3 in_data 0 32 }  { biases_buf_3_ap_vld in_vld 0 1 } } }
	biases_buf_4 { ap_none {  { biases_buf_4 in_data 0 32 }  { biases_buf_4_ap_vld in_vld 0 1 } } }
	biases_buf_5 { ap_none {  { biases_buf_5 in_data 0 32 }  { biases_buf_5_ap_vld in_vld 0 1 } } }
	biases_buf_6 { ap_none {  { biases_buf_6 in_data 0 32 }  { biases_buf_6_ap_vld in_vld 0 1 } } }
	biases_buf_7 { ap_none {  { biases_buf_7 in_data 0 32 }  { biases_buf_7_ap_vld in_vld 0 1 } } }
	conv_to_pool_streams_0 { ap_fifo {  { conv_to_pool_streams_0_din fifo_port_we 1 32 }  { conv_to_pool_streams_0_full_n fifo_status 0 1 }  { conv_to_pool_streams_0_write fifo_data 1 1 } } }
	conv_to_pool_streams_1 { ap_fifo {  { conv_to_pool_streams_1_din fifo_port_we 1 32 }  { conv_to_pool_streams_1_full_n fifo_status 0 1 }  { conv_to_pool_streams_1_write fifo_data 1 1 } } }
	conv_to_pool_streams_2 { ap_fifo {  { conv_to_pool_streams_2_din fifo_port_we 1 32 }  { conv_to_pool_streams_2_full_n fifo_status 0 1 }  { conv_to_pool_streams_2_write fifo_data 1 1 } } }
	conv_to_pool_streams_3 { ap_fifo {  { conv_to_pool_streams_3_din fifo_port_we 1 32 }  { conv_to_pool_streams_3_full_n fifo_status 0 1 }  { conv_to_pool_streams_3_write fifo_data 1 1 } } }
	conv_to_pool_streams_4 { ap_fifo {  { conv_to_pool_streams_4_din fifo_port_we 1 32 }  { conv_to_pool_streams_4_full_n fifo_status 0 1 }  { conv_to_pool_streams_4_write fifo_data 1 1 } } }
	conv_to_pool_streams_5 { ap_fifo {  { conv_to_pool_streams_5_din fifo_port_we 1 32 }  { conv_to_pool_streams_5_full_n fifo_status 0 1 }  { conv_to_pool_streams_5_write fifo_data 1 1 } } }
	conv_to_pool_streams_6 { ap_fifo {  { conv_to_pool_streams_6_din fifo_port_we 1 32 }  { conv_to_pool_streams_6_full_n fifo_status 0 1 }  { conv_to_pool_streams_6_write fifo_data 1 1 } } }
	conv_to_pool_streams_7 { ap_fifo {  { conv_to_pool_streams_7_din fifo_port_we 1 32 }  { conv_to_pool_streams_7_full_n fifo_status 0 1 }  { conv_to_pool_streams_7_write fifo_data 1 1 } } }
}
