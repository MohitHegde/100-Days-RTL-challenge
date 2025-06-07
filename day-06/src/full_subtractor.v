module full_subtractor (
    input a,b,din,
    output d, dout
);
    assign d= a^b^din;
    assign dout= (~a&din)|(~a&b)|(b&din);
endmodule