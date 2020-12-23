`timescale 1ns / 1ps
module Sequence_Counter(
    input wire CLK,
    output wire [3:0]O
    );
    
    wire [3:0]D;
    
    assign D[3] = ((O[3])&~(O[2])&~(O[1])&~(O[0])) | (~(O[3])&(O[2])&~(O[1])&(O[0]));
    assign D[2] = (~(O[3])&~(O[2])&(O[1])&(O[0])) | ((O[3])&~(O[2])&~(O[1])&~(O[0]));
    assign D[1] = (~(O[3])&~(O[2])&~(O[1])&(O[0])) | (~(O[3])&~(O[2])&(O[1])&~(O[0]));
    assign D[0] = (~(O[3])&~(O[2])&(O[1])) | ((O[3])&~(O[1]))&((O[2])~^((O[0])));
    
    D_Flip_Flop ff3(.D(D[3]), .CLK(CLK), .q(O[3]));
    D_Flip_Flop ff2(.D(D[2]), .CLK(CLK), .q(O[2]));
    D_Flip_Flop ff1(.D(D[1]), .CLK(CLK), .q(O[1]));
    D_Flip_Flop ff0(.D(D[0]), .CLK(CLK), .q(O[0]));
    
endmodule

module D_Flip_Flop(
    input D,
    input CLK,
    output reg q
    );
    
    always@(posedge CLK)
    begin
        if(CLK == 0 && D == 0)
            q <= q;
        if(CLK == 0 && D == 1)
            q <= q;
        if(CLK == 1 && D == 0)
            q <= D;
        if(CLK == 1 && D == 1)
            q <= D;
    end
endmodule




