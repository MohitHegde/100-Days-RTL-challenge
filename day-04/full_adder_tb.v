module tb;
reg a,b,cin;
wire sum,carry;

full_adder m1(a,b,cin,sum,carry);

initial begin
    $display("time| a b cin | sum, carry");
    for(integer i=0;i<8;i=i+1) begin
        {a,b,cin}=i;
        $display("%4t   | %b %b %b   | %b  %b",$time,a,b,cin,sum,carry);
        #10;
    end
$finish;
end


endmodule