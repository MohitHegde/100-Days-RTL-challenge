module tb;
reg clk,rst,d;
wire Q, Qbar;

D_flip_flop m1(d,clk,rst,Q,Qbar);
initial clk=0;
always #5 clk=~clk;
initial begin
        rst = 1;
        d = 1;
        #10 rst = 0;
        d = 0;
        #10;
        $finish;
end
endmodule