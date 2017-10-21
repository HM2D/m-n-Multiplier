module not32(out,a);
input [31:0] a;
output wire [31:0] out;

assign out = ~a;

endmodule

