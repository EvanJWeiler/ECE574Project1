`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Brendan Cassidy,
//           Diego Akantera,
//           Evan Weiler,
//           Logan Knott
// Create Date: 09/03/2018 10:32:43 PM
// Design Name: 
// Module Name: ADD
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


module ADD #(parameter DATAWIDTH = 64)(a, b, sum);
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] sum;
    
    always @(a, b) begin
        sum <= a + b;
    end
    
endmodule
