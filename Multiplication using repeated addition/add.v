`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:05:42 02/05/2022 
// Design Name: 
// Module Name:    ADD 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ADD(out1,in1,in2
    );

input [15:0] in1,in2;
output reg[15:0] out1;

always @ (*)
out1 =in1+in2;
endmodule
