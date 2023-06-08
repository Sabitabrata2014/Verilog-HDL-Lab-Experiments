module fa_bm_tb;
 
reg [2:0] din; 
wire [1:0] dout; 

fa_bm DUT(din,dout); 

initial begin 
 
$monitor (din,dout); 

din = 3'b001; #100;
din = 3'b010; #100;
din = 3'b011; #100;
din = 3'b100; #100;
din = 3'b101; #100;
din = 3'b110; #100;
din = 3'b111; #100;

end
 
endmodule