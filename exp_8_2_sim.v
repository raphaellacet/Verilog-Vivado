`timescale 1ns / 1ps
module d_ff_sim(

    );
    reg d_t;
    reg clk_t;
    wire q_t;
    wire q_p_t;
    
    d_ff UUT(
    .d(d_t),
    .clk_sig(clk_t),
    .q(q_t),
    .q_prime(q_p_t)
    );
    
    initial begin
    d_t = 1'b0;
    clk_t = 1'b0;
end
    always #40 d_t = ~d_t;
    always #30 clk_t = ~clk_t;
endmodule

module Sequence_Counter_sim(
    
    );
    reg CLK_t;
    wire [3:0]O_t;
    Sequence_Counter UUT(
        .CLK(CLK_t),
        .O(O_t)
    );
    initial begin
    CLK_t = 0;
    end
    always #10 CLK_t = ~CLK_t;
endmodule
