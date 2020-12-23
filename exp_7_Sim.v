`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2020 12:17:01 PM
// Design Name: 
// Module Name: exp_7_Sim
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


module sr_sim();

    reg s_t;
    reg r_t;
    wire q_t;
    wire qb_t;
    
    sr_1 sr11(
    .S(s_t),
    .R(r_t),
    .Q(q_t),
    .Qb(qb_t)
    );
    
    initial
    begin
        s_t=1'b0;
        r_t=1'b0;
    end
    
    always #10 s_t=~s_t;
    always #20 r_t=~r_t;
endmodule
