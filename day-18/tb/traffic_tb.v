module tb;
reg clk, rst, din;
wire MRR, MRY, MRG, SRR, SRY, SRG;

traffic m1(clk, rst, din, MRR, MRY, MRG, SRR, SRY, SRG);

initial begin
    clk = 0;
    forever begin
        #5 clk = ~clk;  
    end
end

initial begin
   rst = 1;
   din = 0;
   #20 rst = 0;
   #50 din = 1;
   #100 din = 0;
   #150 din = 1;
   $finish;
end
endmodule