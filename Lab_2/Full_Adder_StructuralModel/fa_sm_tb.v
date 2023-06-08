module fa_sm_tb;
 
reg a,b,ci; 
wire s,co;
 
fa_sm DUT(a,b,ci,s,co); 

initial begin 

$monitor (a,b,ci,s,co); 

a = 0;b = 0;ci = 1; #100;
a = 0;b = 1;ci = 0; #100;
a = 0;b = 1;ci = 1; #100;
a = 1;b = 0;ci = 0; #100;
a = 1;b = 0;ci = 1; #100;
a = 1;b = 1;ci = 0; #100;
a = 1;b = 1;ci = 1; #100;

end 
endmodule 