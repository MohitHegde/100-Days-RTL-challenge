module tb;

reg clk,rst;
wire [3:0]cntr;

dwn_cntrcntr m1(clk,rst,cntr);

initial begin
    clk=0;
    forever begin
        #10 clk=~clk;
    end
end

initial begin
    rst=0;
    en=1;
    #10;
    rst=1;
    #50 rst = 0;
    #200 en=1;
    #400 en=0;
    $finish;
end

endmodule