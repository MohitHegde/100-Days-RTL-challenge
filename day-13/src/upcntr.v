module upcntr (
    input clk,rst,en,
    output reg [3:0] cntr
);

always @(posedge clk ) begin

    if (rst) begin
        cntr<=0;
    end else if(en) begin
        cntr<=cntr+1;
    end
    
end
    
endmodule