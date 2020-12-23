`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2020 12:56:06 PM
// Design Name: 
// Module Name: exp_4_sim
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


module exp_4_sim(
    );
    reg [7:0] I_t;
    reg [2:0] S_t;
    wire F_t;
    integer i;
    integer j;
        
    exp_4 UUT(
        .I(I_t),
        .S(S_t),
        .F(F_t)
        );
       
    initial begin
        I_t = 3'd0;
        S_t = 3'd0;
        for (i=0; i<=256; i=i+1) begin
             for (j=0; j<=8; j=j+1) begin
                 #10 I_t=i;
                 S_t=j;
             end
        end
    end 
              
endmodule
