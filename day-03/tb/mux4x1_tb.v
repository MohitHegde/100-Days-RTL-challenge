module tb;
reg [3:0]d;
reg [1:0]s;
wire y;
mux4x1 m1(d,s,y);

initial begin
    for(integer i=0;i<2**6;i=i+1)
    begin
        {d,s}=i;
        #10;
        end
        $finish;
end

endmodule