module binary_to_graycode #(
    parameter N=4
) (
    input [N-1:0] binary,
    output [N-1:0] gray
);
    assign gray[N-1]=binary[N-1];
    genvar i;
    generate
        for (i = 0 ; i < N-1 ; i=i+1) begin
            assign gray[i]=binary[i+1]^binary[i];
        end
    endgenerate
    
endmodule