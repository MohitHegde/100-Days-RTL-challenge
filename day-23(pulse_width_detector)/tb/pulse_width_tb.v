module testbench;
reg clk,rst,pulse_in;
wire [15:0]pulse_width;
wire pulse_out;
pulse_width_det m1(clk,rst,pulse_in,pulse_out,pulse_width);
initial clk=0;
always #5 clk=~clk;
initial begin
rst=1;
pulse_in=0;
#5 rst=0;pulse_in=1;
#50;
pulse_in=0;
#200;
$finish;
end
endmodule