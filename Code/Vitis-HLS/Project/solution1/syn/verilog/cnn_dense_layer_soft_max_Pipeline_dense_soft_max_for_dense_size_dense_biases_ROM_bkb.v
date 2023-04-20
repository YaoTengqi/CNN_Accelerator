// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module cnn_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_dense_biases_ROM_bkb (
    address0, ce0, q0, 
    reset, clk);

parameter DataWidth = 32;
parameter AddressWidth = 4;
parameter AddressRange = 10;
 
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;

input reset;
input clk;

 
reg [DataWidth-1:0] rom0[0:AddressRange-1];


initial begin
     
    $readmemh("./cnn_dense_layer_soft_max_Pipeline_dense_soft_max_for_dense_size_dense_biases_ROM_bkb.dat", rom0);
end

  
always @(posedge clk) 
begin 
    if (ce0) 
    begin
        q0 <= rom0[address0];
    end
end


endmodule

