module mux4_1_tb;

reg i0,i1,i2,i3;

reg [1:0] sel;

wire y;
 

mux4_1 DUT (i0,i1,i2,i3,sel,y);

initial begin 

$monitor (i0,i1,i2,i3,sel,y);

sel=2'b00;i3 = 0;i2 = 0;i1 = 1;i0 = 0; #100;
sel=2'b01;i3 = 0;i2 = 1;i1 = 0;i0 = 0; #100;
sel=2'b10;i3 = 1;i2 = 0;i1 = 0;i0 = 0; #100;
sel=2'b11;i3 = 0;i2 = 0;i1 = 0;i0 = 1; #100;
sel=2'b00;i3 = 0;i2 = 1;i1 = 0;i0 = 1; #100;

end 

endmodule