module testdiv_str();
reg [31:0] b;
reg [31:0] a;
wire [31:0] R;
wire [31:0] Q;

Div_init hm2d(a,b,R,Q);

initial
begin
a=8;
b=2;

#100;
a=7;
b=-10;

#100;
a=7;
b=2;

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


