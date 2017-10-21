module Mux2_1_div(A,B,S,out);
input [63:0] A,B;
input S;
output [63:0]out;
assign out = S? A:B;
  
endmodule
 