`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:12:07 04/04/2022
// Design Name:   pipelining
// Module Name:   D:/xilinx_college/assignment2/tb.v
// Project Name:  assignment2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipelining
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;


	// Inputs
	reg [3:0] rs1;
	reg [3:0] rs2;
	reg [3:0] rd;
	reg [7:0] addr;
	reg [1:0] func;
	reg clk1;
	reg clk2;

	// Outputs
	wire [15:0] z;
	integer k;

	// Instantiate the Unit Under Test (UUT)
	pipelining uut (
		.rs1(rs1), 
		.rs2(rs2), 
		.rd(rd), 
		.z(z), 
		.addr(addr), 
		.func(func), 
		.clk1(clk1), 
		.clk2(clk2)
	);
	
initial begin
#5 
rs1=5;
rs2=3;
rd=1;
func=0;
addr=125;
#20
rs1=6;
rs2=4;
rd=2;
func=1;
addr=126;
#20
rs1=7;
rs2=5;
rd=3;
func=0;
addr=127;
#20
rs1=8;
rs2=6;
rd=4;
func=1;
addr=128;
#20
rs1=9;
rs2=7;
rd=5;
func=0;
addr=129;
end


endmodule

