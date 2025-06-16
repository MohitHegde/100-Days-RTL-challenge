module nbit_cntr #(
    parameter N=4
) (
    input clk,rst,up,dwn,
    output reg [N-1:0]cntr
);

always @(posedge clk ) begin
    if (rst) begin
        cntr <= 0;
    end else if(up) begin
        cntr <= cntr + 1;
    end else if(dwn) begin
        cntr <= cntr-1;
    end
end
    
endmodule
