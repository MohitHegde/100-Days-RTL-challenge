module tb;
reg [2:0] a;
reg en;
wire [7:0] d;
decoder_3to8 m1(a,en,d);

initial begin
    repeat(10)
    begin
    a=$random%8;
    en=$random%2;
    #10;
    end
    $finish;
end
endmodule