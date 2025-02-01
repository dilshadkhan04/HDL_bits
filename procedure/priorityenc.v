// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always@(*)
begin
    case(in)
1,3,5,7,9,11,15 : begin 
  pos = 0;
end
        2,6,10,14:
begin
pos =1;
end
        4,12: begin
            pos =2 ;
        end
        8 : begin
            pos =3;
        end

default: pos=0;
    endcase
    
end

endmodule
