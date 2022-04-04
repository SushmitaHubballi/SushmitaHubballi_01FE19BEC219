`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:55:20 04/04/2022
// Design Name:   seq_det
// Module Name:   D:/xilinx_college/sequencedetector/seq_tb.v
// Project Name:  sequencedetector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seq_det
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seq_tb;

	// Inputs
	reg clk;
	reg rst;
	reg in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	seq_det uut (
		.clk(clk), 
		.rst(rst), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		in = 0;

	        #30 rst =1;
		#20 in=111011011;
		#40 in=1011011011;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
	initial begin
     #5 clk=~clk;
	  end
endmodule

