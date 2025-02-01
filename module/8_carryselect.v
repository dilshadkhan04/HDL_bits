module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
wire w1,w2,w3;
    wire [15:0] i1,i2;
    add16 a1(a[15:0],b[15:0],0,sum[15:0],w1);
    add16 a2(a[31:16],b[31:16],0,i1,w2);
    add16 a3(a[31:16],b[31:16],1,i2,w2);
    always@(*)
        begin
            if(w1==0)
                sum[31:16] = i1;
            if(w1==1)
                sum[31:16] = i2;
                
        end
endmodule
