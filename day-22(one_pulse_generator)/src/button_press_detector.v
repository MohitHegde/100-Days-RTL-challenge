module btn_prs_det (
    input clk,rst,button,
    output reg pulse
);

reg prev_button;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        pulse <= 0;
        prev_button <= 0;
    end
    else begin
    prev_button <= button;
    pulse <= button & ~prev_button;
    end
end
    
endmodule