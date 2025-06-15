module dwn_cntr (
    input clk, rst,
    output reg[3:0] cntr 
);
    
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            cntr <= 0;
        end
        else cntr=cntr-1;
    end

endmodule