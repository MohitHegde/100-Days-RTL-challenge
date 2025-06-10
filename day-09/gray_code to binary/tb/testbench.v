module tb;

wire [3:0] binary;
reg [3:0] gray;

graycode_to_binary m1(gray,binary);

initial begin
    repeat(10) begin
        gray=$random;
        #10;
    end
$finish;
end

endmodule