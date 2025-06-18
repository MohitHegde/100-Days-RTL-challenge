module fsm_1011_mealy (
    input din,clk,rst,
    output reg y
);

localparam A = 2'd0;
localparam B = 2'd1;
localparam C = 2'd2;
localparam D = 2'd3;

reg [1:0] cur_state, nxt_state;

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
                begin
                nxt_state = B;
                y=0;
                end
                else
                begin nxt_state = A;
                y=0;
                end
            end     
            B : begin
                if(din == 0)
                begin
                nxt_state = C;
                y=0;
                end
                else
                begin nxt_state = B;
                y=0;
                end
            end
            C : begin
                if(din == 1)
                begin
                nxt_state = D;
                y=0;
                end
                else
                begin nxt_state = A;
                y=0; 
                end
            end
            D : begin
                if( din == 1)
                begin
                nxt_state = B;
                y=1;
                end
                else
                begin nxt_state = C;
                y=0;
                end
            end
        endcase
    end
    
endmodule