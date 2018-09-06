`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Brendan Cassidy,
//           Diego Akantera,
//           Evan Weiler,
//           Logan Knott
// Create Date: 09/03/2018 10:32:43 PM
// Design Name: 
// Module Name: MUX2x1
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


module MUX2x1 #(parameter DATAWIDTH = 64)(a, b, sel, d);
    input [DATAWIDTH-1:0] a, b;
    input sel;
    output reg [DATAWIDTH-1:0] d;
    
    always @(sel) begin
        if(sel) begin
            d <= b;
        end
        else begin
            d <= a;
        end
    end
    
endmodule
