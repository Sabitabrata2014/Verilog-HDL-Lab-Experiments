module fa_bm(din,dout);

input [2:0] din;
output reg [1:0] dout;

always @(din)

begin

case (din)
3'b000:dout=2'b00;
3'b001:dout=2'b10;
3'b010:dout=2'b10;
3'b011:dout=2'b01;
3'b100:dout=2'b10;
3'b101:dout=2'b01;
3'b110:dout=2'b01;
3'b111:dout=2'b11;
endcase

end

endmodule