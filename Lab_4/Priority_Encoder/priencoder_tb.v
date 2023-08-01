module priencoder_tb; 

reg en;

reg [7:0]i;

wire [2:0]y;
 
priencoder DUT (en,i,y);

initial begin 
 
$monitor (en,i,y);

en=1;i=8'b00000001; #100;
en=1;i=8'b00000010; #100;
en=1;i=8'b11000010; #100;
en=1;i=8'b00001000; #100;
en=1;i=8'b00010000; #100;
en=1;i=8'b00100110; #100;
en=1;i=8'b01000000; #100;
en=1;i=8'b10011000; #100;

end 
endmodule