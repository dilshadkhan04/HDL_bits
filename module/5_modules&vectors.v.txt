module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0]w1,w2,w3;
    my_dff8 df1 (clk, d, w1 );
    my_dff8 df2 (clk, w1, w2 );
    my_dff8 df3 (clk, w2, w3 );
    always@(*)
        begin
            if(sel==2'b00)
              q = d;
            else if(sel==2'b01)
              q = w1;
            else if(sel==2'b10)
              q = w2;
            else if(sel==2'b11)
              q = w3;
      
        end
    
endmodule