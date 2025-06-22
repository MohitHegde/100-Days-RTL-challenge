module tb;

reg clk, rst, button;
wire pulse;

btn_prs_det m1(clk, rst, button,pulse);

initial begin
    clk = 0;
    forever #10 clk = ~clk;
end

initial begin
    button = 0;
    rst=1;
    #20 rst = 0;
    button = 1;
    #50 button =0;
    #75 button = 1;
    $finish;
end
    
endmodule