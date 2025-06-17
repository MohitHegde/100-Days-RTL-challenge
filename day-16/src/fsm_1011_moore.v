module fsm_1011_moore (
    input din,clk,rst,
    output reg y
);

localparam A = 3'd0;
localparam B = 3'd1;
localparam C = 3'd2;
localparam D = 3'd3;
localparam E = 3'd4;

reg [2:0] cur_state, nxt_state;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        cur_state <= A;
    end
    else cur_state <= nxt_state;
    end

    always @(*) begin
        case (cur_state)
            A : begin
                if(din == 1)
                nxt_state = B;
                else nxt_state = A;
            end     
            B : begin
                if(din == 0)
                nxt_state = C;
                else nxt_state = B;
            end
            C : begin
                if(din == 1)
                nxt_state = D;
                else nxt_state = A; 
            end
            D : begin
                if( din == 1)
                nxt_state = E;
                else nxt_state = C;
            end
            E : begin
                if(din == 1)
                nxt_state = B;
                else nxt_state = C;
            end
        endcase
    end

    always @(*) begin
        case (cur_state)
            A : y = 0;
            B : y = 0;
            C : y = 0;
            D : y = 0;
            E : y = 1;
        endcase
    end
    
endmodule