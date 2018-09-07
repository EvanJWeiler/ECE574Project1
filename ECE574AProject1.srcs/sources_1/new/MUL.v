`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Brendan Cassidy,
//           Diego Akantera,
//           Evan Weiler,
//           Logan Knott
// Create Date: 09/03/2018 10:32:43 PM
// Design Name: 
// Module Name: MUL
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


module MUL #(parameter DATAWIDTH = 64)(a, b, prod);
    input [DATAWIDTH-1:0] a, b;
    output reg [2*DATAWIDTH-1:0] prod;
    
    always @(a, b) begin
        prod <= a * b;
    end
    
endmodule
