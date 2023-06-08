module tff_m(t,rst,clk,q,qbar);

input t,rst,clk;

output reg q,qbar;

always@ (posedge clk)

begin

if (rst==1)

begin q=1'b0; qbar=1'b1; end

else if (t==1)

begin q=~q; qbar=~qbar; end

end
endmodule