module testmulti_str();
reg [31:0] a;
reg [31:0] b;
wire [63:0] out;

Multi_init  hm2d(a,b,out);

initial
begin
a=7;
b=-3;

#100;
a=7;
b=-10;

#100;
a=7;
b=-2;

#100;
a=4'b1010;
b=4'b1111;

#100;
a=4'b1111;
b=4'b1001;

#100;
a=4'b1011;
b=4'b0100;

end
endmodule


