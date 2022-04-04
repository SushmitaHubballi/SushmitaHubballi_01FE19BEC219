`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:00:04 03/11/2022
// Design Name:   parking_system
// Module Name:   D:/xilinx_college/Parking/tb.v
// Project Name:  Parking
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: parking_system
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	reg [3:0] datain;
	reg clk,start,enter,exit;
	wire done;
	
parking_system PS(enter,exit,load,clk,gate,datain,wpo);
controller C(start,enter,exit,load,clk,gate,wpo,datain,done);
	
	initial 
	 begin
	
     enter=1;
     exit=0;
     datain=4'b1010;	
	  clk=1;
	  start=1;
	 
	 #50
	 	 enter=0;
       exit=1;

	 #50 
	    enter=1;
       exit=1;
	  
	 #50 
		 enter=1;
       exit=0;
       datain=4'b1100;

    #50 
 	    enter=0;
       exit=1;
       datain=4'b1010;

    #50 
	    enter=0;
		 exit=0;
	 
     #1000 $finish;
	 end
   
	always #5 clk=~clk;
    
	 
	initial 
begin
 $monitor ($time , "  %b ", PS.password);
 $dumpfile("parking_system") ;
 $dumpvars(0,tb);
 end
 
endmodule

