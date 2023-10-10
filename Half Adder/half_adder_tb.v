module half_adder_tb;
reg a,b;
wire s,c;
half_adder DUT3(a,b,s,c);
initial
begin
#000 a=0; b=0;
#100 a=0; b=1;
#100 a=1; b=0;
#100 a=1; b=1;
end
initial
begin
$monitor($time,"a=%b,b=%b,s=%b,c=%b",a,b,s,c);
end
endmodule
