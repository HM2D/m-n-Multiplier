module Div_init(A,B,R,Q);
input [31:0] A,B;
output wire [31:0] R,Q;
   wire [63:0] Reg_b1,Reg_2s,Reg_input,Reg_input2,temp,temp2;
    wire [63:0] temp3;
   wire [2047:0] Reg_output;
   wire [31:0] Reg_bbar,Reg_b2s,Reg_a1,Reg_b;
   assign Reg_a1 = A;
   assign Reg_b = B;
   assign Reg_input = {32'b00000000000000000000000000000000,Reg_a1};
   not32 a1(Reg_bbar,Reg_b);
   assign temp3 = {32'b00000000000000000000000000000000,Reg_bbar};
   FullAdder64 A2(temp3,64'b0000000000000000000000000000000000000000000000000000000000000001,temp2);
   assign Reg_2s = {temp2[31:0],32'b00000000000000000000000000000000};
   assign Reg_b1 = {Reg_b,32'b00000000000000000000000000000000};
   assign Reg_input2 = {Reg_input[63:1],1'b0};
   
   
   Div_loop   stage1(Reg_b1,Reg_2s,Reg_input2,Reg_output[63:0]);
   Div_loop   stage2(Reg_b1,Reg_2s,Reg_output[63:0],Reg_output[127:64]);
   Div_loop   stage3(Reg_b1,Reg_2s,Reg_output[127:64],Reg_output[191:128]);   
   Div_loop   stage4(Reg_b1,Reg_2s,Reg_output[191:128],Reg_output[255:192]);
   Div_loop   stage5(Reg_b1,Reg_2s,Reg_output[255:192],Reg_output[319:256]);   
   Div_loop   stage6(Reg_b1,Reg_2s,Reg_output[319:256],Reg_output[383:320]);
   Div_loop   stage7(Reg_b1,Reg_2s,Reg_output[383:320],Reg_output[447:384]);   
   Div_loop   stage8(Reg_b1,Reg_2s,Reg_output[447:384],Reg_output[511:448]);
   Div_loop   stage9(Reg_b1,Reg_2s,Reg_output[511:448],Reg_output[575:512]);   
   Div_loop   stage10(Reg_b1,Reg_2s,Reg_output[575:512],Reg_output[639:576]);
   Div_loop   stage11(Reg_b1,Reg_2s,Reg_output[639:576],Reg_output[703:640]);   
   Div_loop   stage12(Reg_b1,Reg_2s,Reg_output[703:640],Reg_output[767:704]);
   Div_loop   stage13(Reg_b1,Reg_2s,Reg_output[767:704],Reg_output[831:768]);   
   Div_loop   stage14(Reg_b1,Reg_2s,Reg_output[831:768],Reg_output[895:832]);
   Div_loop   stage15(Reg_b1,Reg_2s,Reg_output[895:832],Reg_output[959:896]);   
   Div_loop   stage16(Reg_b1,Reg_2s,Reg_output[959:896],Reg_output[1023:960]);
   Div_loop   stage17(Reg_b1,Reg_2s,Reg_output[1023:960],Reg_output[1087:1024]);   
   Div_loop   stage18(Reg_b1,Reg_2s,Reg_output[1087:1024],Reg_output[1151:1088]);
   Div_loop   stage19(Reg_b1,Reg_2s,Reg_output[1151:1088],Reg_output[1215:1152]);   
   Div_loop   stage20(Reg_b1,Reg_2s,Reg_output[1215:1152],Reg_output[1279:1216]);
   Div_loop   stage21(Reg_b1,Reg_2s,Reg_output[1279:1216],Reg_output[1343:1280]);   
   Div_loop   stage22(Reg_b1,Reg_2s,Reg_output[1343:1280],Reg_output[1407:1344]);
   Div_loop   stage23(Reg_b1,Reg_2s,Reg_output[1407:1344],Reg_output[1471:1408]);   
   Div_loop   stage24(Reg_b1,Reg_2s,Reg_output[1471:1408],Reg_output[1535:1472]);
   Div_loop   stage25(Reg_b1,Reg_2s,Reg_output[1535:1472],Reg_output[1599:1536]);
   Div_loop   stage26(Reg_b1,Reg_2s,Reg_output[1599:1536],Reg_output[1663:1600]);
   Div_loop   stage27(Reg_b1,Reg_2s,Reg_output[1663:1600],Reg_output[1727:1664]);
   Div_loop   stage28(Reg_b1,Reg_2s,Reg_output[1727:1664],Reg_output[1791:1728]);
   Div_loop   stage29(Reg_b1,Reg_2s,Reg_output[1791:1728],Reg_output[1855:1792]);
   Div_loop   stage30(Reg_b1,Reg_2s,Reg_output[1855:1792],Reg_output[1919:1856]);
   Div_loop   stage31(Reg_b1,Reg_2s,Reg_output[1919:1856],Reg_output[1983:1920]);
   Div_loop   stage32(Reg_b1,Reg_2s,Reg_output[1983:1920],Reg_output[2047:1984]);
   assign R = {1'b0,Reg_output[2047:2016]};
   assign Q = Reg_output[2015:1984];
   
endmodule   
   
