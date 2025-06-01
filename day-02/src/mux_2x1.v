module mux_2x1 (
    input s,a0,a1,
    output y
);

assign y = s?a1:a0;
    
endmodule