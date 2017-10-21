module Multi1(a,b,o);
input [15:0]a;
input [15:0]b;
reg h=1;
reg [15:0] a1;
reg [15:0] b1;
output reg[31:0] o;
integer i;
always @(a,b)begin
if(h==1)
  begin
  a1=a;
  b1=b;
  o ={a1,b1};
  h=0;
  end
for(i=0;i<32;i = i+1)
if(o[0]==1)
begin
if(i==31)
	 begin
   o= {((~a1+1)+o[31:16]),o[15:0]};
   o= o>>1;
   end 
  else begin
   o = {(a1+o[31:16]),o[15:0]};
   o= o>>1;   
   end
end
else o = o>>1;
end


endmodule

