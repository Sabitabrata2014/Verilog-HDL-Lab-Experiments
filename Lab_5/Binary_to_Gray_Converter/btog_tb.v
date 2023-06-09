module btog_tb; 
 
reg [3:0] b;
wire [3:0] g;
 
btog DUT(b,g);

initial begin 
 
$monitor (b,g);

b=4'b1001; #100;
b=4'b1101; #100;
b=4'b1111; #100;
b=4'b1011; #100;

end 
endmodule 