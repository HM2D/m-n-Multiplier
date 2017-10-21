module Mux2to1_MULTI(A,B,S,out);
input [64:0] A,B;
input S;
output [64:0] out;
assign out = S?A:B;  
endmodule
 
