`timescale 1ns / 1ps

module jkff_m_tb; 

reg [1:0]jk; 
reg rst;
reg clk;

wire q;
wire qbar; 

jkff_m DUT(jk,rst,clk,q,qbar); 

always begin
#20 clk=~clk;
end

initial begin 

clk  = 1'b0;
jk=2'b00;
rst=1'b1;#100;

rst=1'b0;

jk=2'b00;#100;
jk=2'b01;#100;
jk=2'b10;#80;
jk=2'b11;#100;

end 
endmodule 