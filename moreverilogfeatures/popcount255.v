module top_module( 
    input [254:0] in,
    output reg [7:0] out
);
    integer i;
    integer count;

    always @(*) begin
        count = 0; // Initialize count to zero
        for (i = 0; i < 255; i = i + 1) begin
            if (in[i] == 1'b1) begin
                count = count + 1; // Increment count if in[i] is '1'
            end
        end
        out = count[7:0]; // Assign the 8-bit value of count to the output
    end
endmodule
