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


module TopTestTiming(a, b, z, Clk );
input [63:0] a,b;
output reg[63:0] z;
input Clk;
reg [63:0] awire, bwire;
wire [63:0] zwire;

always@(posedge Clk) begin
    awire <= a;
    bwire <= b;
    z <= zwire;
end
   
ADD add2(awire, zwire, zwire);

endmodule

