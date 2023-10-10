module mux2_1 (
    input S,
    input A,
    input B,
    output Y
);

assign Y = (S & B) | (~S & A);

endmodule
