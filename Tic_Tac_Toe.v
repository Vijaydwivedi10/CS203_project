module Tic_Tac_Toe(clock, reset, play, comp, computer, player, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, winner);
     input clock, reset, play, comp;
     input [3:0] computer , player;
     output wire [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;
     output wire[1:0] winner;
  
  wire [15:0] c_enable,p_enable;// enable signal for computer and the player

 wire wrong_move; //whenever wrong move is played, the program will terminate 

 wire cp; //turn of computer 
 wire pp; //turn of player 
 wire filled; 
 wire win;  

position p_reg(clock, reset, wrong_move, c_enable, p_enable, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9);  // function calling 'position'

  who_wins who_pc(pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,win,winner);   //finds out the winner
  pos_decode c_dec(computer,cp,c_enable); //returns the position of computer
  pos_decode p_dec(player,pp,p_enable); //returns the position of player
  re_block error_pc( pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,c_enable[8:0], p_enable[8:0],wrong_move);  //checks for wrong moves
   
 finish f_no_space(pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,filled);  // whenever all positions are filled
 FSM control(clock,reset,play,comp,wrong_move,filled,win,cp,pp);  
      
endmodule 
