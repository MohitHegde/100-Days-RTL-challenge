module subtractor #(
    parameter WIDTH=4
) (
    input [WIDTH-1:0]a,[WIDTH-1:0]b,
    input din,
    output [WIDTH-1:0]d,
    output dout
);
    wire [WIDTH:0] dd;
    assign dd[0]=din;
    assign dout=dd[WIDTH];
    
    genvar i;
    generate
        for (i=0 ;i<WIDTH ;i=i+1 ) begin:fs_inst
        full_subtractor fs(a[i],b[i],dd[i],d[i],dd[i+1]);          
        end
    endgenerate
endmodule