module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    supply0 zero;
    wire w1,w2;
    wire [15:0] a1,a2,b1,b2;
    assign a1 = a[15:0];
    assign a2 = a[31:16];
    assign b1 = b[15:0];
    assign b2 = b[31:16];
    add16 inst1 (a1,b1,zero,sum[15:0],w1);
    add16 inst2 (a2,b2,w1,sum[31:16],w2);

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
assign sum = a^b^cin;
    assign cout = a&b | cin&(a^b);

endmodule
