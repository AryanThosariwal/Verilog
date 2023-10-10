module sr_latch(r,s,q,qb);
input s,r;
inout q,qb;
nor n1(q,r,qb);
nor n2(qb,s,q);
endmodule 