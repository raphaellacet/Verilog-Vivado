`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2020 12:16:38 PM
// Design Name: 
// Module Name: exp_7
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


module sr_1(
    input S,
    input R,
    output reg Q,
    output Qb
    );
    
    always@(S or R)
    begin
        if(S==0 & R==0)
            Q<=Q;
        else if(S==0 & R==1)
            Q<=1'b0;
        else if(S==1 & R==0)
            Q<=1'b1;
        else if(S==1 & R==1)
            Q<=1'bx;
    end
    
    assign Qb=~Q;
endmodule
