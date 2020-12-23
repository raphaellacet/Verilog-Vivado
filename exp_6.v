`timescale 1ns / 1ps
module HalfAdder(
    input X,
    input Y,
    output Sum,
    output Carry
    );
    assign Sum = X^Y;
    assign Carry = X&Y;
endmodule

module FullAdder(
    input X,
    input Y,
    input Cin,
    output Cout,
    output Sum
    );
    assign Sum = X^Y^Cin;
    assign Cout = (X&Y) | (X&Cin) | (Y & Cin);
endmodule


module TwoBitAdder(
    input [1:0]X,
    input [1:0]Y,
    output wire Cout,
    output wire Cin,
    output[1:0] Sum
);
    wire h;
    HalfAdder half_adder(.X(X[0]), .Y(Y[0]), .Sum(Sum[0]), .Carry(h));
    FullAdder full_adder(.X(X[1]), .Y(Y[1]), .Sum(Sum[1]), .Cin(h), .Cout(Cout));
endmodule
    
    
    

module F1(
    input W,
    input X,
    input Y,
    input Z,
    output F1_out
    );
    assign F1_out = (W &  X & Y & Z) | (W & ~X & ~Y & Z);
endmodule


module RAM(
input CLK,
input WE,
input [3:0] A,
output [3:0] Do,

input W,
input X,
input Y,
input Z,
input [1:0] Xi,
input [1:0] Yi
);

wire [3:0] Di;
reg [3:0] RAM [31:0]; 

F1 f1(.W(W), .X(X), .Y(Y), .Z(Z), .F1_out(Di[0]));
TwoBitAdder twobitadder(.X(Xi[1:0]), .Y(Yi[1:0]),.Sum(Di[2:1]),.Cout(Di[3]));


always @(posedge CLK) begin
    if(WE)
        RAM[A] <= Di;
    end
    
 assign Do= RAM[A];
endmodule    