module tb;

reg clk,rst;
wire clk_1Hz;

clk_div m1(clk,rst,clk_1Hz);

initial begin
    clk = 0;
    forever begin
        #10 clk = ~clk;
    end
end

initial begin
    rst = 1;
    #50 rst = 0;
    #100000000;
end

endmodule