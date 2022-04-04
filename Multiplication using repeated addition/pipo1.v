`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:37:10 02/05/2022 
// Design Name: 
// Module Name:    PIPO1 
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
module PIPO1(dout,din,ld,clk);

input ld,clk;
input[15:0] din;
output reg [15:0] dout;

always @ (posedge clk)
 if(ld) dout<=din;

endmodule
