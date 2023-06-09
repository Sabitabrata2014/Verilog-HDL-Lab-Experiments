module abc_m(clk,rst,count);

input clk,rst;

output reg [3:0] count;

always @(posedge rst, posedge clk)

begin

if (rst)

count=4'b0000;

else if (clk)

count=count+1;

end
endmodule