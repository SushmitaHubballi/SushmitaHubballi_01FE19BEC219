`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:02:10 03/10/2022 
// Design Name: 
// Module Name:    parking_system 
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
module parking_system(enter,exit,load,clk,gate,datain,wpo);
input wire enter,exit,load;
input clk;
input [3:0] datain;
output gate,wpo;
wire [3:0] password;

enterpassword EP(password,enter,load,clk,datain);
checkpassword CP(gate,wpo,password,enter,exit,clk);

endmodule
