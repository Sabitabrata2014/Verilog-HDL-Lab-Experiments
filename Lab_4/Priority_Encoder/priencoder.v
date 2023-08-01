module priencoder(en,i,y);

input en;

input [7:0]i;

output [2:0]y;
reg[2:0]y;

always @(i,en)

begin

if(en==1)

begin
if(i[7]==1) y=3'b111;
else if(i[6]==1) y=3'b110;
else if(i[5]==1) y=3'b101;
else if(i[4]==1) y=3'b100;
else if(i[3]==1) y=3'b011;
else if(i[2]==1) y=3'b010;
else if(i[1]==1) y=3'b001;
else if(i[0]==1) y=3'b000;
else y=3'bXXX;
end
else
y=3'bXXX;
end
endmodule