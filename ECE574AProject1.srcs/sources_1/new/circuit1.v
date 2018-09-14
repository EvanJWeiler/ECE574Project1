`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2018 02:19:59 PM
// Design Name: 
// Module Name: circuit1
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


module circuit1(a, b, c, z, x);
    input [7:0] a, b, c;
    output reg [7:0] z; 
    output reg [15:0] x;
    wire [7:0] d, e;
    wire [15:0] f, g, xWire;
    wire g, l, eq;
    
    ADD add1(a, b, d);
    ADD add2(a, c, e);
    COMP comp1(d, e, g, l, eq);
    MUX2x1 mux1(g, d, e, z);
    MUL mul1(a, c, f);
    SUB sub1(f, d, xWire);
    REG reg1(x, xWire);
endmodule
