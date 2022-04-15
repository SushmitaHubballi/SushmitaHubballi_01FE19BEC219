`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:22 04/11/2022 
// Design Name: 
// Module Name:    d_clock 
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
module d_clock(
    output [3:0] sec_1,
    output [2:0] sec_2,
    output [3:0] min_1,
    output [2:0] min_2,
    output [3:0] hour_1,
    output [1:0] hour_2,
    input clk_1,
    input rst,
	 output [20:0] register

    );
	 
reg [20:0] register;
reg [3:0] sec_1;
reg [2:0] sec_2;
reg [3:0] min_1;
reg [2:0] min_2;
reg [3:0] hour_1;
reg [1:0] hour_2;	 

always @ (posedge(rst))
begin
sec_1=0;
sec_2=0;
min_1=0;
min_2=0;
hour_1=0;
hour_2=0;
end

always @ (posedge(clk_1))

begin
sec_1=sec_1+1;
 if(sec_1==10)
 begin
 sec_2=sec_2+1;
 sec_1=0;
 
 if(sec_2==6 && sec_1==0)
 begin
 sec_2=0;
 min_1=min_1+1;
 if(min_1==10)
 begin
 min_2=min_2+1;
 min_1=0;
 
 if(min_2==6 && min_1==0)
 begin
 min_2=0;
 hour_1=hour_1+1;
 if(hour_1==10)
 begin
 hour_2=hour_2+1;
 hour_1=0;
 
 if(hour_2==2 && hour_1==4)
 begin
   sec_1=0;
   sec_2=0;
   min_1=0;
   min_2=0;
   hour_1=0;
   hour_2=0;
 end
 register[20:19]=hour_2;
end
end
end
end
end
end



endmodule
