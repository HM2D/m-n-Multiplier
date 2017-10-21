module testprokh();
reg [31:0] a;
reg [31:0] b;
reg load,clk;
wire [63:0] out;
Booth_multi p (out,clk,load,a,b);

initial
begin
clk=1'b1;
forever #50 clk=~clk;
end

initial
begin
//rst_a=1'b1;
a=4'b1010;
b=4'b0010;
load=1'b1;

#100;
//rst_a=1'b0;
a=4'b1110;
b=4'b0101;
load=1'b0;

#100;
a=4'b1000;
b=4'b0101;
load=1'b1;
//rst_a=1'b0;
#100;
load=1'b0;
//rst_a=1'b0;
#100;
a=4'b1111;
b=4'b1001;
load=1'b1;
//rst_a=1'b0;

#100;
a=4'b1011;
b=4'b0100;
load=1'b0;
//rst_a=1'b0;

end
endmodule
