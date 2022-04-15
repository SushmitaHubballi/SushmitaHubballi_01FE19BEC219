`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:35:40 04/11/2022
// Design Name:   d_clock
// Module Name:   D:/xilinx_college/clock/sectb.v
// Project Name:  clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: d_clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sectb;

	// Inputs
	reg clk_1;
	reg rst;
   reg [20:0] register;
	// Outputs
	wire [3:0] sec_1;
	wire [2:0] sec_2;
	wire [3:0] min_1;
	wire [2:0] min_2;
	wire [2:0] hour_1;
	wire [1:0] hour_2;

	// Instantiate the Unit Under Test (UUT)
	d_clock uut (
		.sec_1(sec_1), 
		.sec_2(sec_2), 
		.min_1(min_1), 
		.min_2(min_2), 
		.hour_1(hour_1), 
		.hour_2(hour_2), 
		.clk_1(clk_1), 
		.rst(rst),
		.register(register)
	);

	initial begin
		// Initialize Inputs
		clk_1 = 1;
		rst = 1;
      #10 rst=0;
		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
     always #50000000 clk_1=~clk_1;
	 
//	 repeat(5)
//	 begin
//	 $display("%d",register); 
//	 end
	 
endmodule

