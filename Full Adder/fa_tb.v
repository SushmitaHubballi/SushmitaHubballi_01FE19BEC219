`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:11:04 04/04/2022
// Design Name:   fa
// Module Name:   D:/xilinx_college/full_adder/fa_tb.v
// Project Name:  full_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fa
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fa_tb;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	fa uut (
		.sum(sum), 
		.cout(cout), 
		.a(a), 
		.b(b), 
		.cin(cin)
	);

	initial begin
	$monitor("a =%b b =%b sum =%b cin =%b cout =%b ",a,b,sum,cin,cout);

a=0;
b=1;
cin=1;
#5
a=1;
b=0;
cin=1;
#5
a=1;
b=1;
cin=1;
	end
      
endmodule

