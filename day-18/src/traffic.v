`define Y2R_M_Delay 2
`define G2Y_S_Delay 3
`define R2G_M_Delay 2

module traffic (
    input clk, rst, din,
    output reg MRR, MRY, MRG, SRR, SRY, SRG 
);
    localparam A = 2'd0;
    localparam B = 2'd1;
    localparam C = 2'd2;
    localparam D = 2'd3;

reg[1:0] cur, nxt;
reg [2:0] dly;
always @(posedge clk or posedge rst) begin
    if(rst)
    cur <= A;
    else
    cur <= nxt;
end

always @(posedge clk or posedge rst) begin
    if(rst || cur != nxt)
    dly <= 0;
    else
    dly <= dly + 1;
end

always @(din,cur) begin
    case (cur)
        A : begin
            if(din == 0)
            nxt <= B;
            else 
            nxt <= A;
        end 
        B : begin
                if(dly >= `Y2R_M_Delay)
                    nxt = C;
                else
                    nxt = B;
            end
        C : begin
            if(dly >= `G2Y_S_Delay)
                nxt = D;
            else
                nxt = C;
        end
        D : begin
            if(dly >= `R2G_M_Delay)
                    nxt = A;
                else
                    nxt = D;
        end
        default : nxt <= A;     
    endcase
end

always @(cur) begin
    case (cur)
        A : {MRR, MRY, MRG, SRR, SRY, SRG} = 6'b001100; 
        B : {MRR, MRY, MRG, SRR, SRY, SRG} = 6'b010100; 
        C : {MRR, MRY, MRG, SRR, SRY, SRG} = 6'b100001; 
        D : {MRR, MRY, MRG, SRR, SRY, SRG} = 6'b100010; 
    endcase
end

endmodule