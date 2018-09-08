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


module TopTestTiming #(parameter DATAWIDTH = 2)(a, b, z, Clk );

input [DATAWIDTH-1:0] a;
input [$clog2(DATAWIDTH)-1:0] b;
output reg[DATAWIDTH-1:0] z;
input Clk;
reg [DATAWIDTH-1:0] awire;
reg [$clog2(DATAWIDTH)-1:0] bwire;
wire [DATAWIDTH-1:0] zwire;

always@(posedge Clk) begin
    awire <= a;
    bwire <= b;
    z <= zwire;
end

//SHL #(.DATAWIDTH(DATAWIDTH))shl1(awire, bwire, zwire);
SHR #(.DATAWIDTH(DATAWIDTH))shr1(awire, bwire, zwire);

endmodule

