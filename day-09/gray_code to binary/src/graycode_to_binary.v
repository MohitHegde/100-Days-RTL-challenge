module graycode_to_binary #(
    parameter N=4
) (
    input [N-1:0] gray,
    output [N-1:0] binary
);

assign binary[N-1]=gray[N-1];
genvar i;
generate
    for (i = 1; i<N ; i=i+1 ) begin
        assign binary[N-1-i] = gray[N-1-i]^binary[N-i];
    end
endgenerate
    
endmodule