module tb;

reg [1:0]a,b;
wire [3:0]P;

multi_2x2 b1(a,b,P);

initial begin
    for (integer i = 0;i < 2**4 ; i = i+1 ) begin
        {a,b} = i;
        #10;
    end
    $finish;
end

endmodule