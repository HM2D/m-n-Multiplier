module Div_loop(Reg_b,Reg_2s,Reg_input,Reg_output);
input [63:0] Reg_2s,Reg_input,Reg_b;
output [63:0] Reg_output;
wire [63:0] Reminder;
wire [63:0] temp,temp2,temp3;
wire [63:0] W1,W2;
wire s;

FullAdder64 S1(Reg_input,Reg_2s,Reminder);
FullAdder64 S2(Reminder,Reg_b,temp);

assign s = (Reminder[63])? 1'b1:1'b0;
assign temp3 = Reminder;
assign temp2 = temp;
assign W1 = {temp2[63:1],1'b0};

assign W2 = {temp3[63:1],1'b1};




Mux2_1_div S3(W1,W2,s,Reg_output);

endmodule

