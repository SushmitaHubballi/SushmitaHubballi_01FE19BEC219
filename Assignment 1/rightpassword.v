`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:31:18 03/10/2022 
// Design Name: 
// Module Name:    rightpassword 
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
module checkpassword(gate,wpo,password,enter,exit,clk);

input [3:0] password;
input enter,exit,clk;
output reg gate,wpo;
parameter [3:0]cp=4'b1010;

always @ (*) begin
   
if(enter==1 && exit==0)begin	
  if(password==cp) begin
  gate=1;
  wpo=0;
  end
  
  else if(password!=cp)begin
  gate=0;
  wpo=1;
  end
  
else if((enter==1) && (exit==1))
 gate=0;
end

else if (exit) begin
 gate=0; 
  end
end
endmodule
