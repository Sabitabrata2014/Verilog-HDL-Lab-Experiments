module jkff_m (jk,rst,clk,q,qbar);

input [1:0]jk;
input rst,clk;

output reg q,qbar;

always@ (posedge clk)

begin

if (rst==1)
begin q=1'b0; qbar=1'b1; end

else
case (jk)
2'b00 : begin q=q;qbar=qbar; end
2'b01 : begin q=1'b0; qbar=1'b1; end
2'b10 : begin q=1'b1; qbar=1'b0; end
2'b11 : begin q=~ q; qbar=~ qbar; end
default : begin q=1'b0; qbar=1'b1; end
endcase
end
endmodule