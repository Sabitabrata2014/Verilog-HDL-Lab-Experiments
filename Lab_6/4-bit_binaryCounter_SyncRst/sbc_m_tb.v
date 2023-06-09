`timescale 1ns / 1ps

module sbc_m_tb; 

reg clk;
reg rst;

wire [3:0] count;

sbc_m DUT(clk,rst,count);

always begin
#20 clk=~clk;
end

initial begin 

clk  = 1'b0;

rst=1'b1;#100;

rst=1'b0;

end 
endmodule 