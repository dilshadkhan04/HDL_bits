module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    supply0 zero;
    wire cout,cout1;
    wire[15:0] a1,b1;
    wire [15:0] a2,b2;
    wire w1;
    wire [15:0] w2,w3;
    assign a1 = a[15:0];
    assign b1 = b[15:0];
    assign a2 = a[31:16];
    assign b2 = b[31:16];
    add16 ad1 ( a1, b1, zero ,w2,cout);
    add16 ad2 ( a2, b2,cout,w3,cout1);
    assign sum = {w3,w2};
endmodule
