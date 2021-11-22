module pos_decode(in,en,out_enable);   //decodes the playing position, we have implemented the 4 to 16 DECODER 
      input[3:0] in ;
      input en;
      output wire [15:0] out_enable;
      reg[15:0] pd;           //decoder variable

 /* always @(*) begin
 if ((en)==(1'b1))
 assign out_enable=pd;
 else 
 assign out_enable=16'd0;
 end*/                      //this didn't work out
                    
 assign out_enable=(en==1'b1)?pd:16'd0;  //enable signal

 always @(*)
 begin

 case(in)                            //switch between cases of input
 4'd0: pd <= 16'b0000000000000001;    //d stands for decimal
 4'd1: pd <= 16'b0000000000000010; 
 4'd2: pd <= 16'b0000000000000100;
 4'd3: pd <= 16'b0000000000001000;
 4'd4: pd <= 16'b0000000000010000;
 4'd5: pd <= 16'b0000000000100000;
 4'd6: pd <= 16'b0000000001000000;
 4'd7: pd <= 16'b0000000010000000;
 4'd8: pd <= 16'b0000000100000000;
 4'd9: pd <= 16'b0000001000000000;
 4'd10: pd <= 16'b0000010000000000;
 4'd11: pd <= 16'b0000100000000000;
 4'd12: pd <= 16'b0001000000000000;
 4'd13: pd <= 16'b0010000000000000;
 4'd14: pd <= 16'b0100000000000000;
 4'd15: pd <= 16'b1000000000000000;

 default: pd<=16'b0000000000000001; 

 endcase 

end 

endmodule
