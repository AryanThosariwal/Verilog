module mux4_1_behav_tb;
reg [3:0] a;
reg [1:0] s;
wire o;
mux4_1_behav uut(s,a,o);
initial 
begin
#10 a=4'b1010;
#10 s=2'b00;
#10 s=2'b01;
#10 s=2'b10;
#10 s=2'b11;
#10 $stop;
end
endmodule 