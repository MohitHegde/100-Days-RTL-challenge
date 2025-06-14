module D_flip_flop (
    input d,clk,rst,    
    output reg Q,Qbar
);

always @(posedge clk) begin
    if(rst)begin
        Q<=0;
        Qbar<=1;
    end
    else begin
        Q<=d;
        Qbar<=~d;
    end
    
end
    
endmodule