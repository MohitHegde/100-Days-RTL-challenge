module tb;

reg clk,rst,en;
wire [3:0]cntr;

upcntr m1(clk,rst,en,cntr);

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