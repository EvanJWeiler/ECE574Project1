`timescale 1ns / 1ps



module Circuit6(a, b, c, zero, Clk, Rst, z);
input [63:0] a, b, c, zero;
input Clk, Rst;
output [63:0] z;

wire [63:0] e, f, g, zwire;
wire gEQz, gt, lt;

DEC dec1(a, e);
INC inc1(g, f);
MOD mod1(a, c, g);
COMP comp1(a, zero, gt, lt, gEQz);
MUX2x1 mux1(e, f, gEQz, zwire);
REG reg1(zwire, Clk, Rst, z);`

endmodule