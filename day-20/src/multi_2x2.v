    module multi_2x2 (
        input [1:0]a,b,
        output [3:0]P
    );

    wire t1,t2,t3,t4;
    assign P[0] = a[0]&b[0];
    assign t1 = a[0]&b[1];
    assign t2 = a[1]&b[0];
    ha m1(t1,t2,P[1],t3);
    assign t4 = a[1]&b[1];
    ha m2(t3,t4,P[2],P[3]);
        
    endmodule