`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Brendan Cassidy,
//           Diego Akantera,
//           Evan Weiler,
//           Logan Knott
// Create Date: 09/03/2018 10:32:43 PM
// Design Name: 
// Module Name: REG
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


module REG(d, Clk, Rst, q);
    parameter DATAWIDTH = 63;
    input [DATAWIDTH:0] d;
    input Clk, Rst;
    output reg q;
    
    always @(posedge Clk) begin
        if(Rst == 1) begin
            q <= 0;
        end
        else begin
            q <= d;
       end
    end
    
endmodule
