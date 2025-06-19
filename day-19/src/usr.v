module usr (
    input clk, rst,
    input [1:0] s,
    input [3:0] load,
    output reg [3:0] out
);

always @(posedge clk or posedge rst) begin
    if(rst)
    out <= 4'd0;
    else begin
        case (s)
            2'b00 : out <= {out}; //hold
            2'b01 : out <= {0, out[3:1]}; //right shift
            2'b10 : out <= {out[2:0], 0}; //left shift
            2'b11 : out <= {load}; //parallel load
        endcase
    end
end
    
endmodule