`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Brendan Cassidy,
//           Diego Akantera,
//           Evan Weiler,
//           Logan Knott
// Create Date: 09/03/2018 10:32:43 PM
// Design Name: 
// Module Name: SHR
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


module SHR #(parameter DATAWIDTH = 64)(a, sh_amt, d);
    input [DATAWIDTH-1:0] a;
    input [$clog2(DATAWIDTH)-1:0] sh_amt;
    output reg [DATAWIDTH-1:0] d;
    
    always @(sh_amt) begin
        d <= a >> sh_amt;
    end
    
endmodule
