module gcd_datapath(gt,lt,eq,lda,ldb,sel1,sel2,sel_in,data_in,clk);

input lda,ldb,sel1,sel2,sel_in,clk;
input [15:0] data_in;
output gt,lt,eq;
wire [15:0] aout,bout,x,y,bus,subout;

PIPO A(aout,bus,lda,clk);
PIPO B(bout,bus,ldb,clk);
MUX mux_in1(x,aout,bout,sel1);
MUX mux_in2(y,aout,bout,sel2);
MUX mux_load(bus,subout,data_in,sel_in);
SUB SB(subout,x,y);
COMPARE comp(lt,gt,eq,aout,bout);

endmodule
