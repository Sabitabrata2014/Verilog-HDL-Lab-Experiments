module demux(i,sel,y3,y2,y1,y0);

input i;

input [1:0]sel;

output y3,y2,y1,y0;

reg y0,y1,y2,y3;

always @(i,sel)

begin

case(sel)

2'b00:begin y0=i;y1=1'bX;y2=1'bX;y3=1'bX;end
2'b01:begin y0=1'bX;y1=i;y2=1'bX;y3=1'bX;end
2'b10:begin y0=1'bX;y1=1'bX;y2=i;y3=1'bX;end
2'b11:begin y0=1'bX;y1=1'bX;y2=1'bX;y3=i;end

default: begin y0=1'bX;y1=1'bX;y2=1'bX;y3=1'bX; end

endcase

end

endmodule