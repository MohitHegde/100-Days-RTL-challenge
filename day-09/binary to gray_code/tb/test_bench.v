module tb;

reg [3:0] binary;
wire [3:0] gray;

binary_to_graycode m1(binary,gray);

initial begin
    repeat(10) begin
        binary=$random;
        #10;
    end
$finish;
end

endmodule