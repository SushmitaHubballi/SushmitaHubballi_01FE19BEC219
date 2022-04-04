`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:53:10 03/10/2022 
// Design Name: 
// Module Name:    enterpassword 
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
module enterpassword(password,enter,load,clk,datain);
input enter,clk,load;
input [3:0] datain;
output reg [3:0] password;

always @ (*) begin

  if(enter)
  begin
  if(load)
  password=datain;
  else password=4'b0000;
  end

end
endmodule
