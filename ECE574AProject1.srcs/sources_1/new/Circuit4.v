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


module Circuit4(a, b, c, z, x);
input [63:0] a, b, c;
output [31:0] z, x;
wire [63:0] d, e, f, g, h;
wire dGTe, dLTe, dEQe;
reg [63:0] greg, hreg;

ADD add1(a, b, d);
ADD add2(a, c, e);
SUB sub1(a, b, f);
COMP comp1(d, e, dGTe, dLTe, dEQe);
COMP comp2(d, e,dGTe, dLTe, dEQe);
MUX2x1 mux1(dLTe, d, e, g);
MUX2x1 mux2(dEQe, g, f, h);
REG reg1(greg, g);
REG reg2(hreg, h);
COMP comp3(hreg, dLTe, dGTe, dLTe, dEQe);
COMP comp4(greg, dEQe,dGTe, dLTe, dEQe);
REG reg3(x, xrin);
REG reg4(z, zrin);

endmodule
