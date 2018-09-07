`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2018 02:21:29 PM
// Design Name: 
// Module Name: Circuit2
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


module Circuit2(a, b, c, z, x);

    input [63:0] a, b, c;
    output [63:0] z, x;
    //set to 32
    wire [63:0] d, e, f, g, h;
    wire dGTe, dLTe, dEQe;
    wire [63:0] zwire, xwire;
    
    ADD add1(a, b, d);
    ADD add2(a, c, e);
    SUB sub1(a, b, f);
    COMP comp1(d, e, dGTe, dLTe, dEQe);
    //MUX2x1 mux1();
    //MUX2x1 mux2();
    SHL shl(g, dLTe, xwire);
    SHR shr(h, dEQe, zwire);
       
    
endmodule
