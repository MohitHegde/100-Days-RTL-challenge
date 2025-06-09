module priority_enc_4to2 (
    input [3:0]d,
    output [1:0]y
);

assign y[0] = d[3] | (d[1] & ~d[2]);
assign y[1] = d[3] | d[2];
    
endmodule