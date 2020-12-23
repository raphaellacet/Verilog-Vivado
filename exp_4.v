`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2020 12:45:34 PM
// Design Name: 
// Module Name: exp_4
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


module exp_4(
    input [7:0] I,
    input [2:0] S,
    output reg F
    );
    
    always @ (S)
    begin
        case(S)
        0: F = I[0];
        1: F = I[1];
        2: F = I[2];
        3: F = I[3];
        4: F = I[4];
        5: F = I[5];
        6: F = I[6];
        7: F = I[7];
        default: F=0;
    endcase
end
  
endmodule
