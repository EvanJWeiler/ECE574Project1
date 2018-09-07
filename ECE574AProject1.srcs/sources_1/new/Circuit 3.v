`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2018 02:22:02 PM
// Design Name: 
// Module Name: Circuit 3
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


module Circuit3(a, b, c, d, e, f, g, h, sa, avg);
input [15:0] a, b, c, d, e, f, g, h;
input [7:0] sa;
output [15:0] avg;

wire [31:0] l00, l01, l02, l03, l10, l11, l2, l2div2, l2div4, l2div8;

ADD add1(a, b, l00);
ADD add2(c, d, l01);
ADD add3(e, f, l02);
ADD add4(g, h, l03);
ADD add5(l00, l01, l10);
ADD add6(l02, l03, l11);
ADD add7(l10, l11, l2);
SHR shr1(l2, sa, l2div2);
SHR shr2(l2div2, sa, l2div4);
SHR shr3(l2div4, sa, l2div8);


//l00 = a + b
//l01 = c + d
//l02 = e + f
//l03 = g + h
//l10 = l00 + l01
//l11 = l02 + l03
//l2 = l10 + l11
//l2div2 = l2 >> sa
//l2div4 = l2div2 >> sa 
//l2div8 = l2div4 >> sa
//avg = l2div8



endmodule
