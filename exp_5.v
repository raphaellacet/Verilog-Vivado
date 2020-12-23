`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2020 12:28:43 PM
// Design Name: 
// Module Name: exp_5
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


module Dec2to4 (en, in, out);
input en;
input [1:0] in;
output reg [3:0] out;
always@(in or en)
begin
    if(en==1)
        case(in)
            4'b00: out = 4'b0001;
            4'b01: out = 4'b0010;
            4'b10: out = 4'b0100;
            4'b11: out = 4'b1000;
        endcase
    else if (en==0)
    begin
        out = 4'b0000;
        end 
    end
endmodule

module Dec3to8(
input [2:0] A,
output [7:0] D
);
Dec2to4 Decoder2to4Small(
.en(~A[2]),
.in(A[1:0]),
.out(D[3:0])
);
Dec2to4 Decoder2to4Big(
.en(A[2]),
.in(A[1:0]),
.out(D[7:4])
);
endmodule