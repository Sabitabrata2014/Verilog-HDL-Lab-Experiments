module alu16(a,b,en,op,alu);

input [15:0] a,b;
input en;
input [3:0] op;

output reg [31:0] alu;

always @(a,b,en,op)

begin

if (en==1'b1)

case (op)
4'b0001:alu=a+b;
4'b0010:alu=a-b;
4'b0011:alu=~a;
4'b0100:alu=a*b;
4'b0101:alu=a&b;
4'b0110:alu=a|b;
4'b0111:alu=~(a&b);
4'b1000:alu=a^b;
default:alu=32'b0;
endcase

else alu=32'bZ;

end
endmodule