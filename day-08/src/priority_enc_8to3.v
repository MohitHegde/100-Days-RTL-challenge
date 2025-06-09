module priority_enc_8to3 (
    input [7:0] d,
    output [2:0] y
);

wire [1:0]lwr;
wire [1:0]upr;
wire uval;
wire lval;

priority_enc_4to2 p1(d[3:0],lwr);
priority_enc_4to2 p2(d[7:4],upr);

assign uval=|d[7:4];
assign lval=|d[3:0];

assign y[2]=uval;
assign y[1:0]=uval?upr:lwr;
    
endmodule