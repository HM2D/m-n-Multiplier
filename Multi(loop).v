module Multi_loop(Reg_a,Reg_2s,Reg_input,Reg_output);
input [64:0] Reg_2s,Reg_a,Reg_input;
output wire [64:0] Reg_output;
wire [64:0] Reg_shift1,Reg_shift2;
wire x_or;
wire [64:0] W1,W2,W3,W4;
wire [64:0] plus,minus;
wire s1,s2;
   xor(x_or,Reg_input[0],Reg_input[1]);
   assign s1 = x_or? 1:0;
    assign s2 = Reg_input[1]? 1:0;   

FullAdder65 loop1_1(Reg_input,65'b00000000000000000000000000000000000000000000000000000000000000000,Reg_shift1);
   assign W2 = {Reg_shift1[64],Reg_shift1[64:1]};

FullAdder65 loop1_2(Reg_input,65'b00000000000000000000000000000000000000000000000000000000000000000,Reg_shift2);
   assign W4 = {Reg_shift2[64],Reg_shift2[64:1]};
   
   FullAdder65 loop1_3(Reg_input,Reg_a,plus);
   assign W3 = {plus[64],plus[64:1]};
   
   FullAdder65 loop1_4(Reg_input,Reg_2s,minus);
   assign W1 = {minus[64],minus[64:1]};
   
   Mux4to1 loop1_5(W1,W2,W3,W4,s1,s2,Reg_output);
   

endmodule
