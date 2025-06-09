module tb;

reg [7:0] d;
wire [2:0] y;

priority_enc_8to3 m1(d,y);

initial begin
    repeat(10)
    begin
        d=$random;
        #10;
    end
    $finish;
end

endmodule