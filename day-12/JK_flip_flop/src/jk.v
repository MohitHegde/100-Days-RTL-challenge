module jk (
    input j,k,clk,rst,
    output reg Q,Qbar
);

always @(posedge clk ) begin
    if (rst) begin
        Q <= 0;
        Qbar <= 1;
    end
    else begin
        case ({j,k})
        2'b00: begin
            Q <= Q;
            Qbar <= Qbar;
        end  

        2'b01: begin
            Q <= 0;
            Qbar <= 1;
        end

        2'b10: begin
            Q <= 1;
            Qbar <= 0;
        end

        2'b11: begin
            Q <= ~Q;
            Qbar <= ~Qbar;
        end
        endcase
    end
end
    
endmodule