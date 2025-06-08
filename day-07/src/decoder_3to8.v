    module decoder_3to8 (
        input [2:0]a,
        input en,
        output [7:0]d
    );

    decoder_2to4 d1(a[1:0],~a[2],d[3:0]);
    decoder_2to4 d2(a[1:0],a[2],d[7:4]);
        
    endmodule