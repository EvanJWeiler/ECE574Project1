`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2018 10:22:38 AM
// Design Name: 
// Module Name: TopTestTiming
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TopTestTiming #(parameter DATAWIDTH = 16)(a, b, z, Clk );

input [DATAWIDTH-1:0] a, b;
//input [$clog2(DATAWIDTH)-1:0] b;
output reg[2*DATAWIDTH-1:0] z;
input Clk;
reg [DATAWIDTH-1:0] awire, bwire;
//reg [$clog2(DATAWIDTH)-1:0] bwire;
wire [2*DATAWIDTH-1:0] zwire;

always@(posedge Clk) begin
    awire <= a;
    bwire <= b;
    z <= zwire;
end

MUL #(.DATAWIDTH(DATAWIDTH))mul1(awire, bwire, zwire);

endmodule

