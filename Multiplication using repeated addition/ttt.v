`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:26:51 02/06/2022
// Design Name:   controller
// Module Name:   D:/xilinx_college/example1/ttt.v
// Project Name:  example1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ttt;

	reg [15:0] data_in;
  reg clk, start;
  wire done;
 
  MUL_datapath DP(eqz, lda, ldb, ldp, clrp, decb, data_in, clk);
  controller CON (lda, ldb, ldp, clrp, decb, done, clk, eqz, start);
 
  initial
    begin
 
      clk=1'b0;
      #3 start = 1'b1;
      //#500 $finish;
    end
 
  always #5 clk=~clk;
 
  initial
    begin
 
      #17 data_in = 17;
      #10 data_in = 5;
 
    end
 
  initial
    begin
 
      $monitor($time, "%d %b", DP.y, done);
      $dumpfile("mul.vcd"); $dumpvars(0, ttt);
    end
 
      
endmodule

