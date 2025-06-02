module mux4x1 (
    input [3:0]d, [1:0]s,
    output y
);
    wire w1,w2,w3,w4,w5,w6;
    not n1(w1,s[0]);
    not n2(w2,s[1]);
    and a1(w3,w2,w1,d[0]);
    and a2(w4,w1,s[1],d[1]);
    and a3(w5,s[0],w2,d[2]);
    and a4(w6,s[0],s[1],d[3]);
    or o1(y,w3,w4,w5,w6);
endmodule