module testbench_JK();
reg clk,rst,j,k;
wire Q,Qbar;
jk m1(j,k,clk,rst,Q,Qbar);
initial clk=0;
always #5 clk=~clk;
initial begin
rst=1;
j=1;k=0;
#10 rst=0;
#10 j=0;k=1;
#10 j=0;k=1;
#10 j=1;k=1;
#10;
$finish;
end
endmodule