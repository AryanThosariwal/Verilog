module prencoder8_3_behav(in,y);
input [7:0] in;
output reg [2:0] y;
always@(*)
begin
if(in[7]==1'b1)
begin 
y=3'b111;
end
else if(in[6]==1'b1)
begin 
y=3'b110; 
end
else if(in[5]==1'b1)
begin 
y=3'b101;
end
else if(in[4]==1'b1)
begin 
y=3'b100;
end
else if(in[3]==1'b1)
begin 
y=3'b011;
end
else if(in[2]==1'b1)
begin 
y=3'b010;
end
else if(in[1]==1'b1)
begin 
y=3'b001;
end
else if(in[0]==1'b1)
begin 
y=3'b000;
end
else
begin
y=3'bzzz;
end
end
endmodule