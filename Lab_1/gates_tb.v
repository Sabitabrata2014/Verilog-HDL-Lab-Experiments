module gates_tb; 

reg a,b; 
wire c_not,d_or,e_nor,f_and,g_nand,h_xor,i_xnor;
 
gates DUT(a,b,c_not,d_or,e_nor,f_and,g_nand,h_xor,i_xnor);

initial begin 
 
$monitor(a,b,c_not,d_or,e_nor,f_and,g_nand,h_xor,i_xnor);

a = 1'b0;b = 1'b1; #100;
a = 1'b1;b = 1'b0; #100;
a = 1'b1;b = 1'b1; #100;
a = 1'b0;b = 1'b0; #100;

end 
endmodule 