module Mux4to1(W1,W2,W3,W4,S1,S2,o);
input [64:0] W1,W2,W3,W4;
input S1,S2;
wire [64:0] wire1,wire2;
output [64:0] o;


Mux2to1_MULTI s1(W1,W2,S1,wire1);
Mux2to1_MULTI s2(W3,W4,S1,wire2);
Mux2to1_MULTI s3(wire1,wire2,S2,o);

endmodule
