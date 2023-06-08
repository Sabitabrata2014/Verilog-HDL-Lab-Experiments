`timescale 1ns / 1ps

module SR_ff_tb;
 
reg clk;
reg reset;
reg s,r;
 
wire q;
wire qb;
 
SR_ff srflipflop( .clk(clk), .reset(reset), .s(s), .r(r), .q(q), .q_bar(qb) );
 
initial begin

 
s = 1'b0;
r = 1'b0;
reset = 1;
clk=1;
 
#10
reset=0;
s=1'b1;
r=1'b0;
 
#100
reset=0;
s=1'b0;
r=1'b1;
 
#100
reset=0;
s=1'b1;
r=1'b1;
 
#100
reset=0;
s=1'b0;
r=1'b0;
 
#100
reset=1;
s=1'b1;
r=1'b0;
 
end
always #25 clk <= ~clk;
 
endmodule