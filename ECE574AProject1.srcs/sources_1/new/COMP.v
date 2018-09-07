`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Brendan Cassidy,
//           Diego Akantera,
//           Evan Weiler,
//           Logan Knott
// Create Date: 09/03/2018 10:32:43 PM
// Design Name: 
// Module Name: COMP
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


module COMP #(parameter DATAWIDTH = 64)(a, b, gt, lt, eq);
    input [DATAWIDTH-1:0] a, b;
    output reg gt, lt, eq;
    
    always @(a, b) begin
        gt <= 1'b0;
        lt <= 1'b0;
        eq <= 1'b0;
        if (a > b) begin
            gt = 1'b1;
        end
        else if(a == b) begin
            eq = 1'b1;
        end
        else begin
            lt = 1'b1;
        end
    end
    
endmodule
