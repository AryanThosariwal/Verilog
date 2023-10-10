module 
rand(a,b,o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,o17,o18,o19,o20,o21,o22,o23,o24,o25,o26,o27,o28,o29,o30);
input [3:0] a,b;
output reg [3:0] 
o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,o17,o18,o19,o20,o21,o22,o23,o24,o25,o26,o27,o28,o29,o30;
assign a=4'b0101;
assign b=4'b1001;
always@(*)
begin
o0=a&&b;
o1=a||b;
o2=!a;
o3=a&b;
o4=a|b;
o5=~a;
o6=a^b;
o7=a~^b;
o8=&a;
o9=|a;
o10=~&a;
o11=~|a;
o12=^a;
o13=~^a;
o14=a<<b;
o15=a>>b;
o16=a>>>b;
o17=a<<<b;
o18=a>b;
o19=(a>=b);
o20=(a<b);
o21=(a<=b);
o22=(a==b);
o23=(a!=b);
o24=(a===b);
o25=(a!==b);
o26=a+b;
o27=a-b;
o28=a*b;
o29=a/b;
o30=a%b;
end
endmodule
