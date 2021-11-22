
module TB();

 reg clock,reset,play,comp;
 reg [3:0] computer,player;

 wire [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,winner;

 Tic_Tac_Toe Tic_Tac_Toe(.clock(clock),.reset(reset),.play(play),.comp(comp),.computer(computer),.player(player),.pos1(pos1),.pos2(pos2),.pos3(pos3),.pos4(pos4),.pos5(pos5),.pos6(pos6),.pos7(pos7),.pos8(pos8),.pos9(pos9),.winner(winner));
 
 initial
  begin
 clock=0;
 for(integer i=0;i<500;i=i+1)
  #2 clock= ~clock;
 end

 initial
  begin

  play = 0;
  reset = 1;
  computer = 0;         //reset=1 so game hasn't started
  player = 0;         
  comp= 0;
  #10;
  reset = 0;            //game starts
  #10;
  play = 1;
  comp= 0;
  computer= 3;          // computer at 4
  player= 0;            // player at 1
  #5;
  comp= 1;
  play = 0;
  #10;
  reset = 0;
  play = 1;
  comp= 0;
  computer= 7;           //computer at 8
  player= 4;             // player at 1 
  #5;
  comp= 1;
  play = 0;  
  #10;
  reset = 0;
  play = 1;
  comp= 0;
  computer= 5;      //computer at 6
  player= 8;        //player at 9 and wins so game ends and winner is declared
  #5;
  comp= 1;
  play = 0; 
  #5
  comp= 0;
  play = 0;   
  end

  initial
  begin
      $dumpfile("design.vcd");
      $dumpvars;
  end
      
endmodule