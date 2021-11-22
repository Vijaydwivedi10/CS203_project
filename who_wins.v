module who_wins(input[1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,output wire won,output wire[1:0]winner); //finding out the winner
wire [1:0] winner1,winner2,winner3,winner4,winner5,winner6,winner7,winner8;
wire win_1,win_2,win_3,win_4,win_5,win_6,win_7,win_8;

//when the same symbol fills up a side or a diagonal
who_wins3 a1(pos1,pos2,pos3,win_1,winner1);
who_wins3 a2(pos4,pos5,pos6,win_2,winner2);
who_wins3 a3(pos7,pos8,pos9,win_3,winner3);
who_wins3 a4(pos1,pos4,pos7,win_4,winner4);
who_wins3 a5(pos2,pos5,pos8,win_5,winner5);
who_wins3 a6(pos3,pos6,pos9,win_6,winner6);
who_wins3 a7(pos1,pos5,pos9,win_7,winner7);
who_wins3 a8(pos3,pos5,pos6,win_8,winner8);

assign won = (((((((win_1|win_2) | win_3) | win_4) | win_5) | win_6) | win_7) | win_8);
assign winner = (((((((winner1 | winner2) | winner3) | winner4) | winner5) | winner6) | winner7) | winner8);

endmodule 
