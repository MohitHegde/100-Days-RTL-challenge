module tb;

reg t,clk,rst;
wire Q,Qbar;

t_ff m1(t,clk,rst,Q,Qbar);

initial clk=0;  
always #5 clk=~clk;

initial begin
    rst=1;
    repeat(10) begin
        t=0;
        #10 rst=0;
        t=1;
        #10;
    end
    $finish;
end

endmodule