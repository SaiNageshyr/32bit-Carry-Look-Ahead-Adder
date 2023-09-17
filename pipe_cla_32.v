`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2023 04:23:39 PM
// Design Name: 
// Module Name: pipe_cla_32
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


module pipe_cla_32(
    input clk,
    input rst,
    input [31:0]a,
    input [31:0]b,
    input cin,
    output reg [31:0]sum,
    output reg cout
    );
    reg [31:0] a_d,b_d;
    reg cin_d;
    wire [31:0] sum_d;
    wire cout_d;
    cla_32 m1(.a(a_d),.b(b_d),.cin(cin_d),.sum(sum_d),.cout(cout_d));
    always @(posedge clk or posedge rst) begin 
    if (rst) begin 
    a_d<=0;
    b_d<=0;
    cin_d<=0;
    sum<=0;
    cout<=0;
    end
    else begin 
        a_d<=a;
        b_d<=b;
        cin_d<=cin;
        sum<=sum_d;
        cout<=cout_d;
    end
    end
endmodule
