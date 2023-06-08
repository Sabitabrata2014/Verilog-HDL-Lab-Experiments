module fa_sm(a,b,ci,s,co);

input a,b,ci;
output s,co;
wire t1,t2,t3;

ha i1(a,b,t1,t2);
ha i2(t1,ci,s,t3);
or_m i3(t2,t3,co);

endmodule