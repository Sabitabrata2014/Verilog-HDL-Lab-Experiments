module ha(x,y,sm,cy);

input x,y;
output sm,cy;

assign sm=x^y;
assign cy=x&y;

endmodule
