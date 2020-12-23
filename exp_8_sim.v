`timescale 1ns / 1ps
module Shift_Register_Sim(

); //inputs
reg CLK_t;
reg LOAD_t;
reg LR_Shift_t;
reg [3:0]D_t;
//outputs
wire [3:0]O_t;
//instalation of module or unit under test (UUT)
Shift_Register UUT(
    .CLK(CLK_t),
    .LOAD(LOAD_t),
    .LR_Shift(LR_Shift_t),
    .D(D_t),
    .O(O_t)
    );
//initializing inputs
initial begin
CLK_t = 0;
LOAD_t = 0;
LR_Shift_t = 0;
D_t = 0;

#20 D_t = 4'b0001;
    LOAD_t = 1;
#20 D_t = 4'b0000;
    LOAD_t = 0;
#100 D_t = 4'b1000;
    LOAD_t = 1;
    LR_Shift_t = 1;
#20 D_t = 4'b0000;
    LOAD_t = 0;
end
always #10 CLK_t = ~CLK_t; //the clock runs every 10 ns
endmodule
