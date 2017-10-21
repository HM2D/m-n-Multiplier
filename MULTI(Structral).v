module Booth_Multi_str(out,a,b);
   input [31:0] a;
   input [31:0] b;
   output wire [63:0]out;
   
   integer i;
   wire x_or;
   wire [64:0] W1,W2,W3,W4;
   reg lsb=1'b0;
   wire [64:0] s0,s1;
   wire [64:0] Reg_a,Reg_2s,Reg_output,temp,temp2;
   wire [31:0]     Reg_abar,Reg_a2s,Reg_a1,Reg_b;
   wire [64:0] plus,minus;
///initialization  
  assign Reg_a1 = a;
   assign Reg_b = b;
   not32 a1(Reg_abar,Reg_a1);
   assign temp = {33'b000000000000000000000000000000000,Reg_abar};
   FullAdder65 a2(temp,65'b00000000000000000000000000000000000000000000000000000000000000001,temp2);
   assign Reg_a = {Reg_a1,33'b000000000000000000000000000000000};
  assign Reg_2s={temp2[31:0],33'b000000000000000000000000000000000};
  assign Reg_output={32'b00000000000000000000000000000000,Reg_b,lsb};
 /////for loop  
   xor(x_or,Reg_output[0],Reg_output[1]);
   assign s1 = (x_or)? 65'b1111111111111111111111111111111111111111111111111111111111111:65'b00000000000000000000000000000000000000000000000000000000000000000;
   assign s2 = Reg_output[63]? 65'b1111111111111111111111111111111111111111111111111111111111111:65'b00000000000000000000000000000000000000000000000000000000000000000; 
   assign W2 = {Reg_output[64],Reg_output[64:1]};
   
   assign W4 = {Reg_output[64],Reg_output[64:1]};
   
   FullAdder65 loop1_1(Reg_output,Reg_a,plus);
   assign W3 = {plus[64],plus[64:1]};
   
   FullAdder65 loop1_2(Reg_output,Reg_2s,minus);
   assign W1 = {minus[64],minus[64:1]};
   
   Mux4to1 loop1_3(W1,W2,W3,W4,s1,s2,Reg_output);
   
   assign out = Reg_output[64:1];
   
   endmodule
   
     
   
	
