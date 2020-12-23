`timescale 1ns / 1ps
module sr_sim(

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
