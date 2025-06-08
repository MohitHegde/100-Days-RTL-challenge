module decoder_2to4 (
    input [1:0]a,
    input en,
    output [3:0]d
);

assign d[0]=en&(~a[0]&~a[1]);
assign d[1]=en&(~a[1]&a[0]);
assign d[2]=en&(a[1]&~a[0]);
assign d[3]=en&(a[1]&a[0]);

endmodule