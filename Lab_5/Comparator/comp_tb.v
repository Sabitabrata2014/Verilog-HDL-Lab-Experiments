module comp_tb; 

reg [3:0] a;
reg [3:0] b; 

wire altb,aeqb,agtb;

comp DUT (a,b,altb,aeqb,agtb);

initial begin 
 
$monitor(a,b,altb,aeqb,agtb);

a=4'b1011;b=4'b1100; #100;
a=4'b1101;b=4'b1101; #100;
a=4'b1111;b=4'b1001; #100;
a=4'b1010;b=4'b1110; #100;

end 
endmodule 