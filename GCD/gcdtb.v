module GCD_test;
reg [15:0] data_in;
reg clk,start;
wire done;
reg [15:0] a,b;

gcd_datapath DP(gt,lt,eq,lda,ldb,sel1,sel2,sel_in,data_in,clk);
contoller CON (lda,ldb,sel1,sel2,sel_in,done,clk,lt,gt,eq,start);

initial 
begin
clk=1'b0;
#3 start=1'b1;
#1000 $finish;
end 
always #5 clk= ~clk;
initial begin
#12 data_in=26;
#10 data_in=39;
end

initial begin
$monitor ($time , "%d %b", DP.aout,done);
$dumpfile ("gcd_datapath.vcd");
$dumpvars(0,GCD_test);
end


endmodule
