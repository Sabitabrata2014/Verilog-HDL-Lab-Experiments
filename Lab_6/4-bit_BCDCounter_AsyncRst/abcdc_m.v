module abcdc_m(clk,rst,count);

input clk,rst;

output reg [3:0] count;

always @(posedge rst, posedge clk)

begin

if (rst)

count=4'b0000;

else if (clk) begin

if (count==4'b1001)

count=4'b0000;

else

count=count+1;

end

end
endmodule