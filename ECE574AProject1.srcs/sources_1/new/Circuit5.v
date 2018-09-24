`timescale 1ns / 1ps



module Circuit5(a, b, c, d, zero, Clk, Rst, z);
input [63:0] a, b, c, d, zero;
input Clk, Rst;
output [63:0] z;

wire [63:0] e, f, g, zwire;
wire gEQz, gt, lt;

DIV div1(a, b, e);
DIV div2(a, d, f);
MOD mod1(a, b, g);
COMP comp1(g, zero, gt, lt, gEQz);
MUX2x1 mux1(e, f, gEQz, zwire);
REG reg1(zwire, Clk, Rst, z);`

endmodule