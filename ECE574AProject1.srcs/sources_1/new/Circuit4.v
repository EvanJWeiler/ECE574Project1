`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2018 10:14:40 AM
// Design Name: 
// Module Name: Circuit4
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


module Circuit4(a, b, c, z, x, Clk, Rst);
    input [63:0] a, b, c;
    input Clk, Rst;
    output [31:0] z, x;
    wire [63:0] d, e, f, g, h;
    wire dGTe, dLTe, dEQe;
    wire [63:0] xrin, zrin;
    wire [63:0] greg, hreg;
    
    ADD add1(a, b, d);
    ADD add2(a, c, e);
    SUB sub1(a, b, f);
    COMP comp1(d, e, dGTe, dLTe, dEQe);
    COMP comp2(d, e,dGTe, dLTe, dEQe);
    MUX2x1 mux1(d, e, dLTe, g);
    MUX2x1 mux2(g, f, dEQe, h);
    REG reg1(g, Clk, Rst, greg);
    REG reg2(h, Clk, Rst, hreg);
    SHL shiftL(hreg, dLTe, xrin);
    SHR shiftR(greg, dEQe, zrin);
    REG reg3(xrin, Clk, Rst, x);
    REG reg4(zrin, Clk, Rst, z);

endmodule
