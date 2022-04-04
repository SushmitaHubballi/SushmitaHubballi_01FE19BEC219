`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:47:56 03/10/2022 
// Design Name: 
// Module Name:    controller 
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
module controller(start,enter,exit,load,clk,gate,wpo,datain,done);

input start,clk,gate,wpo;
input [3:0] datain;
output reg load,done,enter,exit;

reg [1:0]state;
parameter s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;

always @ (posedge clk or negedge clk)
begin
 case(state)
 s0: if (start) state <= s1;
 s1: state <= s2;
 s2: if(wpo) state<=s1; else state<=s3;
 s3: if (done) state<=s0;
 default: state<=s0;
 endcase
 end
 
always @ (posedge clk or negedge clk)
begin
 case(state)
 s0: begin  load=1; done=0; end
 s1: begin load=1; end
 s2: begin if (enter==1 && gate==1) done=1; end
 s3: begin done=1;  end
 default: begin   done=0; end
 endcase
 

end 
endmodule
