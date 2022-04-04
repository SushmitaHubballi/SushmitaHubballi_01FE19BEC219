`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:40:17 03/14/2022
// Design Name:   ram_3
// Module Name:   D:/xilinx_college/Ram3/ram3_tb.v
// Project Name:  Ram3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram3_tb;

	// Inputs
	reg [7:0] data_in;
	reg [9:0] addr;
	reg wr;
	reg cs;
   integer k,myseed;
	// Outputs
	wire [7:0] data_out;
	// Instantiate the Unit Under Test (UUT)
	ram_3 RAM (
		data_out,data_in,addr,wr,cs
	);

	initial begin
		// Initialize Inputs
		for(k=0;k<=1023;k=k+1)
		begin
		data_in = (k+k)%256;
		wr = 1;
		cs = 1;
      #2 addr = k;
		wr=0;
		cs=0;
		//$display ("Address : %5d, Data : %4d", addr,data_in);
		end
        
	    
    	repeat(5)
		begin 
		#2 addr=$random(myseed) % 1024;
		wr=0; cs=0;
		$display ("Address : %5d, Data : %4d", addr,data_in);
      end
	end
 initial myseed=35;
endmodule

