module carry_adder #(
    parameter WIDTH=4
) (
    input [WIDTH-1:0]a,[WIDTH-1:0]b,
    input cin,
    output [WIDTH-1:0]sum, 
    output cout
);
wire [WIDTH:0]carry;
assign carry[0]=cin;
assign cout=carry[WIDTH];

genvar i;
generate
    for (i=0 ;i<WIDTH ;i=i+1 ) begin:fa_inst
    full_adder fa(a[i],b[i],carry[i],sum[i],carry[i+1]);
        
    end
endgenerate

endmodule