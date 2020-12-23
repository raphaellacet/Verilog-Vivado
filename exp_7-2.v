`timescale 1ns / 1ps
module SR_CLK(
    input s,
    input r,
    input clk_edge,
    output reg q
    );
    always @(posedge clk_edge)
        begin
           if(clk_edge == 1)
           if(s==1'b0 && r==1'b0)
           q<=q;
           
           else if(s==1'b1 && r==1'b0)
           q<=1'b1;
           
           else if(s==1'b0 && r==1'b1)
           q<=1'b0;
           
           else if(s==1'b1 && r==1'b1)
           q<=1'bx;
        end 
endmodule

module d_ff(
    input d,
    input clk_sig,
    output reg q,
    output reg q_prime
    );
    
    always@(posedge clk_sig)
    begin
        if(clk_sig == 0 && d == 0)
            q <= q;
        if(clk_sig == 0 && d == 1)
            q <= q;
        if(clk_sig == 1 && d == 0)
            q <= d;
        if(clk_sig == 1 && d == 1)
            q <= d;
    end
endmodule
