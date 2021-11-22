
module FSM(clock,reset,play,comp,wrong_move,filled,win,cp,pp);    //implementation of state machine, controls the overall gameplay
     input clock,reset,play,comp,wrong_move,filled,win;
     output reg cp,pp;
     
parameter REST=2'b00;       //rest state
parameter COMPUTER=2'b10;   //computer's turn
parameter PLAYER=2'b01;     //player's turn
parameter OVER=2'b11;       //game is over/finished
reg[1:0] old,new;           //previous and next states

always @(posedge clock or posedge reset) 
begin 
 if(reset)
  old<=REST;
 else 
  old<=new;
end 
 
always @(*)
 begin
 case(old)
 REST: 
 begin 
  if(reset==1'b0 && play == 1'b1)
   new<= PLAYER; // player's turn 
  else 
   new<= REST;
  pp <= 1'b0;
  cp <= 1'b0;
 end 

 COMPUTER:
 begin 
  pp<= 1'b0;
  if(comp==1'b0) begin 
   new <= COMPUTER;
   cp<= 1'b0;
  end
  else if(filled == 1 || win ==1'b1)
  begin 
   new<=OVER;     //game over
   cp<= 1'b1;   //cp=1 gives turn to computer
  end 
  else if(win==1'b0 && filled== 1'b0)
  begin 
   new <= REST;
   cp <= 1'b1;     //cp=1 gives turn to computer
  end 
 
 end 

PLAYER:
begin 
  pp <= 1'b1;
  cp <= 1'b0;
  if(wrong_move==1'b0)
   new <= COMPUTER; // computer's turn
  else 
   new <= REST;
 end 
 
 OVER:
 begin      // game over
  pp <= 1'b0;
  cp <= 1'b0; 
  if(reset==1'b1) 
   new <= REST;  // return to REST 
  else 
   new <=OVER;  
 end 
 default:new <=REST; 

 endcase

 end
 
endmodule 
