`timescale 1ns / 1ps

module dff_m_tb; 

reg d,rst,clk;
wire q,qbar;

dff_m DUT(d,rst,clk,q,qbar);


always begin
#20 clk=~clk;
end

initial begin 

clk  = 1'b0;
d=1'b0;
rst=1'b1;#100;

rst=1'b0;

d=1'b1; #100;
d=1'b0; #100;
d=1'b1; #120;
d=1'b0; #100;

end 
endmodule 