`timescale 1ns / 1ps
module Shift_Register(
    input wire CLK,
    input wire LOAD,
    input wire LR_Shift,
    input wire [3:0]D,
    output reg [3:0]O
    );
always @(posedge CLK) 
begin
    if(LOAD == 1) 
    begin
    O<=D;
    end
    else 
    begin 
    if(LR_Shift == 0)
    begin
    O[0] <= D[0];
    O[1] <= O[0];
    O[2] <= O[1];
    O[3] <= O[2];
    end
    if(LR_Shift == 1)
    begin
    O[0] <= O[1];
    O[1] <= O[2];
    O[2] <= O[3];
    O[3] <= D[3];
    end
  end
end
endmodule
