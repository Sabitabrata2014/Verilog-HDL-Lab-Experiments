module encoder8_3_tb; 

reg en; 
reg [7:0]a;
wire [2:0]y;
 
encoder8_3 DUT(en,a,y); 

initial begin 
 
$monitor (en,a,y); 

en=1;a=8'b00000001; #100;
en=1;a=8'b00000010; #100;
en=1;a=8'b00000100; #100;
en=0;a=8'b00000100; #100;
en=1;a=8'b00001000; #100;
en=1;a=8'b00010000; #100;
en=1;a=8'b00100000; #100;
en=1;a=8'b01000000; #100;
en=1;a=8'b10000000; #100;

 end 
 endmodule 
