`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Brendan Cassidy,
//           Diego Akantera,
//           Evan Weiler,
//           Logan Knott
// Create Date: 09/03/2018 10:32:43 PM
// Design Name: 
// Module Name: SUB
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


module SUB #(parameter DATAWIDTH = 64)(a, b, diff);
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] diff;
    
    always @(a, b) begin
        diff <= a - b;
    end
    
endmodule
