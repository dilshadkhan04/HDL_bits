
module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    wire [99:0] carry; 
    full_adder fa0(a[0], b[0], cin, sum[0], carry[0]);
    
    
    genvar i;
    generate
        for (i = 1; i < 100; i = i + 1) begin : adderchain
            full_adder fa_i(a[i], b[i], carry[i-1], sum[i], carry[i]);
        end
    endgenerate


    assign cout = carry;
    
endmodule

module full_adder(input a, b, cin,
                  output sum, cout);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (cin & a);
endmodule


