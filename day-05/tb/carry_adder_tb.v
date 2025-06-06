module tb;
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;
carry_adder m1(a,b,cin,sum,cout);

initial begin
    for(integer i=0;i<2**9;i=i+1)begin
        {a,b,cin}=i;
        #10;
    end  
    $finish;  
end


endmodule