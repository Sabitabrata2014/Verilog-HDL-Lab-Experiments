module alu16_tb; 
 
reg [15:0] a; 
reg [15:0] b;
reg en;
reg [3:0] op;

wire [31:0] alu;

alu16 DUT(a,b,en,op,alu); 

initial begin 
 
$monitor (a,b,en,op,alu);

a = 16'b0000000000000000111;
b = 16'b0000000000000000101; 

#50;

en = 1;op = 4'b0001; #50;
en = 1;op = 4'b0010; #50;
en = 1;op = 4'b0011; #50;
en = 1;op = 4'b0100; #50;
en = 1;op = 4'b0101; #50;
en = 1;op = 4'b0110; #50;
en = 1;op = 4'b0111; #50;
en = 1;op = 4'b1000; #50;

end 
endmodule 