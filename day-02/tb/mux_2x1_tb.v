module tb;
reg s,a0,a1;
wire y;
mux_2x1 m1(s,a0,a1,y);

integer i;
initial begin
    for (i =0 ;i<8 ;i=i+1 ) begin
        {s,a0,a1}=i;
        #10;
        $display("%4t | %b %b %b | %b",$time,a0,a1,s,y);
    end
    $finish;
end
endmodule