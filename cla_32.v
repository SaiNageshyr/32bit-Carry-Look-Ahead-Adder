`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2023 04:10:27 PM
// Design Name: 
// Module Name: cla_32
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


module cla_32(
    input [31:0]a,
    input [31:0]b,
    input cin,
    output [31:0]sum,
    output cout
    );
    wire c;
    cla_16 m1 (.a(a[15:0]),.b(b[15:0]),.cin(cin),.sum(sum[15:0]),.cout(c));
    cla_16 m2 (.a(a[31:16]),.b(b[31:16]),.cin(c),.sum(sum[31:16]),.cout(cout));
endmodule
