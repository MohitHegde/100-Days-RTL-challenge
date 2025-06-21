module clk_div (
    input clk,rst,
    output reg clk_1Hz
);

parameter DIVISOR = 25000000;

reg [31:0] counter;

always @(posedge clk or posedge rst) begin
    if(rst)begin
        clk_1Hz <= 0;
        counter <= 0;
    end
    else begin
       if(counter == DIVISOR - 1)  begin
        counter <= 0;
        clk_1Hz <= ~clk_1Hz;
       end 
       else counter <= counter + 1;
    end
end
    
endmodule