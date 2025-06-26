module pulse_width_det (
    input clk, rst, pulse_in,
    output reg pulse_out,
    output reg [15:0] pulse_width
);

    reg[15:0] cnt;
    reg prev_in;
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            cnt <= 0;
            pulse_out <= 0;
        end
        else begin
            prev_in <= pulse_in;
            if(pulse_in) begin
                cnt <= cnt + 1;
                if(cnt > 1) begin
                    pulse_out <= 1;
                end
            end
        end
        if(prev_in && ~pulse_in) begin
            pulse_width <= cnt;
            cnt <= 0;
        end
    end
    
endmodule