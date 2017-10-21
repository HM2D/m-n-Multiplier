module Booth_multi(out,clk,load,a,b);
   
   input clk,load;
   input [31:0] a;
   input [31:0] b;
   output reg [63:0]out;
   integer i;
   
   reg lsb=1'b0;
   reg [64:0] Reg_a,Reg_2s,Reg_output;
   reg [31:0]     Reg_abar,Reg_a2s,Reg_a1,Reg_b;
   
	
  always @(posedge clk)
    begin
       if(load)                  
     begin
        Reg_a1=a;
        Reg_b=b;
        out = 16'hzzzzzzzzzzzzzzzz;
        i = 16'hzzzzzzzzzzzzzzzz;
        Reg_a =16'hzzzzzzzzzzzzzzzz;
        Reg_2s = 16'hzzzzzzzzzzzzzzzz;
        Reg_output=16'hzzzzzzzzzzzzzzzz;
        Reg_abar= 16'hzzzzzzzzzzzzzzzz;
        Reg_a2s=16'hzzzzzzzzzzzzzzzz;
        
		
     end
    end
   
   always @ (posedge clk)
      begin
       if(~load)
         begin
        Reg_abar= ~Reg_a1;
        Reg_a2s = (Reg_abar + 1);    
        Reg_a={Reg_a1,33'b000000000000000000000000000000000};
        Reg_2s={Reg_a2s,33'b000000000000000000000000000000000};
        Reg_output={32'b00000000000000000000000000000000,Reg_b,lsb};
        
        for(i=0;i<32;i=i+1)
          begin
             case(Reg_output[1:0])

               2'b00 : 
			Reg_output = {Reg_output[64],Reg_output[64:1]};

               2'b01 :
											begin 
	                            Reg_output=Reg_output + Reg_a;
                              	Reg_output = {Reg_output[64],Reg_output[64:1]};
                  	  end

               2'b10 : 				
											begin 	
			                  Reg_output = Reg_output + Reg_2s;
                              Reg_output = {Reg_output[64],Reg_output[64:1]};
                      end

               2'b11 :
					Reg_output = {Reg_output[64],Reg_output[64:1]};
               default: Reg_output = 64'bx;
             endcase 
          end 
          out <= Reg_output[64:1];
              
         end  
       end 
endmodule 

