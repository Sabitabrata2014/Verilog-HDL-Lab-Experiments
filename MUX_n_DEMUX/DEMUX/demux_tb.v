module demux_tb;

reg i;

reg [1:0]sel; 

wire y3,y2,y1,y0; 

demux DUT (i,sel,y3,y2,y1,y0);
 
initial begin 

$monitor (i,sel,y3,y2,y1,y0);

i = 1; #100;
sel=	00;#100;
sel = 01;#100;
sel = 10;#100;
sel = 11;#100;

 end 
 endmodule