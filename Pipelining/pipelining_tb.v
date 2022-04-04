`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:40:55 03/19/2022
// Design Name:   ex1
// Module Name:   D:/xilinx_college/pipelining_1/ex1_tb.v
// Project Name:  pipelining_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ex1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ex1_tb;

	// Inputs
	reg [9:0] A;
	reg [9:0] B;
	reg [9:0] C;
	reg [9:0] D;
	reg clk;

	// Outputs
	wire [9:0] F;

	// Instantiate the Unit Under Test (UUT)
	ex1 uut (
		.F(F), 
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.clk(clk)
	);
	
	initial clk=0;
   always #10 clk=~clk;
	initial begin
		// Initialize Inputs
		#5
		A = 10;
		B = 12;
		C = 6;
		D = 3;
		
		#20
      A = 10;
		B = 10;
		C = 5;
		D = 3;
		
		#20
      A = 20;
		B = 11;
		C = 1;
		D = 4;
		
		
        
		// Add stimulus here

	end
      
	initial
      begin
		$dumpfile("ex1.vcd");
		$dumpvars(0,ex1_tb);
		$monitor($time, " F = %d", F );
		#300 $finish;
	   end
		
endmodule

