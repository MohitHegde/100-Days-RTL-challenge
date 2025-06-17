module testbench();
reg clk,rst,din;
wire y;
fsm_1011_moore m1(din,clk,rst,y);
initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
rst=1;
#10 rst=0;
repeat(50)
begin
din=$random();
#10;
end
$finish;
end
endmodule