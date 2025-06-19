module tb;

reg clk, rst;
reg [1:0] s;
reg [3:0] load;
wire [3:0] out;

usr m1(clk,rst,s,load,out);

initial begin
    rst =0;
    clk = 0;
    forever begin
        #5 clk = ~clk;
    end
end

initial begin
    repeat(20) begin
        s = $random%4;
        load = $random%16;
        #10;
    end
    $finish;
end

endmodule