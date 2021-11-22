
module position(clock, reset, wrong_move, c_enable, p_enable, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9);  //positions
    input [15:0] c_enable,p_enable; 
    input clock, reset, wrong_move;
      
      output reg[1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9;

//posedge checks at the edges when clock/reset changes its value
 always @(posedge clock or posedge reset)   //for the 1st position
 begin
  if(reset) 
   pos1 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    pos1<=pos1;                    // stores the old position
   else if(c_enable[0]==1'b1)
    pos1<= 2'b10;                   // stores the computer's position 
   else if(p_enable[0]==1'b1)
    pos1<= 2'b01;                     // stores the player's position 
   else 
    pos1 <= pos1;                     //stores the old position
  end 
 end 

 always @(posedge clock or posedge reset)  //for the 2nd position
 begin
  if(reset) 
   pos2 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    pos2 <= pos2;
   else if(c_enable[1]==1'b1)
    pos2 <= 2'b10; 
   else if(p_enable[1]==1'b1)
    pos2 <= 2'b01;
   else 
    pos2 <= pos2;
  end 
 end 

 always @(posedge clock or posedge reset)  //for the 3rd position
 begin
  if(reset) 
   pos3 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    pos3 <= pos3;
   else if(c_enable[2]==1'b1)
    pos3 <= 2'b10; 
   else if(p_enable[2]==1'b1)
    pos3 <= 2'b01; 
   else 
    pos3 <= pos3;
  end 
 end  
 
 always @(posedge clock or posedge reset)  //for the 4th position
 begin
  if(reset) 
   pos4 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    pos4 <= pos4;
   else if(c_enable[3]==1'b1)
    pos4 <= 2'b10; 
   else if(p_enable[3]==1'b1)
    pos4 <= 2'b01; 
   else 
    pos4 <= pos4;
  end 
 end 
 
 always @(posedge clock or posedge reset)  //for the 5th position
 begin
  if(reset) 
   pos5 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    pos5 <= pos5;
   else if(c_enable[4]==1'b1)
    pos5 <= 2'b10;
   else if(p_enable[4]==1'b1)
    pos5 <= 2'b01;
   else 
    pos5 <= pos5;
  end 
 end 
 
 always @(posedge clock or posedge reset)       // for the 6th position
 begin
  if(reset) 
   pos6 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    pos6 <= pos6;
   else if(c_enable[5]==1'b1)
    pos6 <= 2'b10;  
   else if(p_enable[5]==1'b1)
    pos6 <= 2'b01; 
   else 
    pos6 <= pos6;
  end 
 end 

 always @(posedge clock or posedge reset)       // for the 8th position
 begin
  if(reset) 
   pos7 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    pos7 <= pos7;
   else if(c_enable[6]==1'b1)
    pos7 <= 2'b10;  
   else if(p_enable[6]==1'b1)
    pos7 <= 2'b01;
   else 
    pos7 <= pos7;
  end 
 end 
 
 always @(posedge clock or posedge reset)       // for the 8th position
 begin
  if(reset) 
   pos8 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    pos8 <= pos8;
   else if(c_enable[7]==1'b1)
    pos8 <= 2'b10; 
   else if(p_enable[7]==1'b1)
    pos8 <= 2'b01;
   else 
    pos8 <= pos8;
  end 
 end 

 always @(posedge clock or posedge reset)    // for the 9th position 
 begin
  if(reset) 
   pos9 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    pos9 <= pos9;
   else if (p_enable[8]==1'b1)
    pos9 <= 2'b01;
   else if(c_enable[8]==1'b1)
    pos9 <= 2'b10; 
   else 
    pos9 <= pos9;
  end 
 end  
endmodule 
