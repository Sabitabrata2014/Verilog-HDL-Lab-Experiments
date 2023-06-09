module asc_m(clk,rst,count);

input clk,rst;
output reg [3:0] count;

always @(posedge clk)

begin

if(rst) count= 4'b0000;

else

case (count)

4'b0000 : count = 4'b1000;
4'b1000 : count = 4'b0101;
4'b0101 : count = 4'b1101;
4'b1101 : count = 4'b0111;
4'b0111 : count = 4'b0000;

endcase

end
endmodule
