module fa_dfm(a,b,ci,s,co);

input a,b,ci;
output s,co;

assign s=a^b^ci;
assign co=(a&b)|(b&ci)|(a&ci);

endmodule