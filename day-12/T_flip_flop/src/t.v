module t_ff (
    input t,clk,rst,
    output reg Q,Qbar
);

always @(posedge clk ) begin
    if(rst) begin
        Q<=0;
        Qbar<=1;
    end else
    begin
        Q=~Q;
        Qbar=~Qbar;
    end
end
    
endmodule