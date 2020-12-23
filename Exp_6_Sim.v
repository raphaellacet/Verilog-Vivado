`timescale 1ns / 1ps

module Sim_Exp_6(
    );
    reg CLK_t;
    reg WE_t;
    reg [3:0] A_t;
    reg W_t;
    reg X_t;
    reg Y_t;
    reg Z_t;
    reg [1:0] Xi_t;
    reg [1:0] Yi_t;
    wire [3:0] Do_t;
    
    RAM UUT (
        .CLK(CLK_t),
        .WE(WE_t),
        .A(A_t),
        .W(W_t),
        .X(X_t),
        .Xi(Xi_t),
        .Y(Y_t),
        .Yi(Yi_t),
        .Z(Z_t),
        .Do(Do_t)
        );
initial begin
    CLK_t = 1'b0;
    W_t = 1'b0;
    X_t = 1'b0;
    Y_t = 1'b0;
    Z_t = 1'b0;
    Xi_t = 2'b00;
    Yi_t = 2'b00;
    WE_t = 1'b1;
    A_t = 4'b0000;
end

always #5 CLK_t = ~CLK_t;
always #15 WE_t = ~WE_t;

always #10 A_t = A_t+1;
always #10 W_t = ~W_t;
always #20 X_t = ~X_t;
always #40 Y_t = ~Y_t;
always #80 Z_t = ~Z_t;
always #10 Xi_t = Xi_t + 1;
always #40 Yi_t = Yi_t + 1;

    
    
endmodule
