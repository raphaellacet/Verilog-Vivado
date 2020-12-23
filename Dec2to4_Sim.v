`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2020 01:52:23 PM
// Design Name: 
// Module Name: Dec2to4_Sim
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


module Dec2to4_Sim();
reg [2:0] A_t;
wire [7:0] D_t;
Dec3to8 UUT(
.A(A_t),
.D(D_t)
);

initial begin
    A_t = 3'b000;
end

always #10 A_t[0] = ~A_t[0];
always #20 A_t[1] = ~A_t[1];
always #40 A_t[2] = ~A_t[2];
endmodule
