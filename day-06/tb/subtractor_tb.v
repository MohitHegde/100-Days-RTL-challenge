module tb;
reg [3:0] a;
reg [3:0] b;
reg din;
wire [3:0] d;
wire dout;
subtractor m1(a,b,din,d,dout);

initial begin
    for(integer i=0;i<2**9;i=i+1)begin
        {a,b,din}=i;
        #10;
    end  
    $finish;  
end


endmodule