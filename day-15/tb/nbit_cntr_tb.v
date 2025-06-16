module tb;

parameter N = 4;
reg clk,rst,up,dwn;
wire [N-1:0]cntr;

nbit_cntr m1(clk,rst,up,dwn,cntr);

initial begin
    rst = 0;
    up = 1;
    dwn = 0;
    #50 up =0,dwn=1;
    #100 rst = 1;
    #150 up = 1, dmodule tb;

parameter N = 4;
reg clk,rst,up,dwn;
wire [N-1:0]cntr;

nbit_cntr m1(clk,rst,up,dwn,cntr);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
    rst = 1;
    up = 0;
    dwn = 0;
    #15 rst = 0; up = 1; dwn = 0;
    #50 up = 0; dwn = 1;    
    #30 rst = 1;
    #20 rst = 0; up = 1; dwn = 0;
    #40 up = 0; dwn = 0;
    #20 $finish;
end

endmodulewn = 0;
    $finish;
end

endmodule