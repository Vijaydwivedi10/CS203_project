module re_block (pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, c_enable, p_enable, wrong_move); //checks for wrong moves=if already played moves are played again
    input [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9;
   input [8:0] c_enable, p_enable;

   output wire wrong_move;

wire rb1,rb2,rb3,rb4,rb5,rb6,rb7,rb8,rb9,rb11,rb12,rb13,rb14,rb15,rb16,rb17,rb18,rb19,rb21,rb22;
   
assign rb1 = (pos1[0] | pos1[1]) & p_enable[0];  //player makes the wrong move
assign rb2 = (pos2[0] | pos2[1]) & p_enable[1];
assign rb3 = (pos3[0] | pos3[1]) & p_enable[2];
assign rb4 = (pos4[0] | pos4[1]) & p_enable[3];
assign rb5 = (pos5[0] | pos5[1]) & p_enable[4];
assign rb6 = (pos6[0] | pos6[1]) & p_enable[5];
assign rb7 = (pos7[0] | pos7[1]) & p_enable[6];
assign rb8 = (pos8[0] | pos8[1]) & p_enable[7];
assign rb9 = (pos9[0] | pos9[1]) & p_enable[8];

assign rb11 = (pos1[0] | pos1[1]) & c_enable[0];    //computer makes the wrong move
assign rb11 = (pos1[0] | pos1[1]) & c_enable[0];    
assign rb12 = (pos2[0] | pos2[1]) & c_enable[1];
assign rb13 = (pos3[0] | pos3[1]) & c_enable[2];
assign rb14 = (pos4[0] | pos4[1]) & c_enable[3];
assign rb15 = (pos5[0] | pos5[1]) & c_enable[4];
assign rb16 = (pos6[0] | pos6[1]) & c_enable[5];
assign rb17 = (pos7[0] | pos7[1]) & c_enable[6];
assign rb18 = (pos8[0] | pos8[1]) & c_enable[7];
assign rb19 = (pos9[0] | pos9[1]) & c_enable[8];

assign rb21 =((((((((rb11|rb12)|rb13)|rb14)|rb15)|rb16)|rb17)|rb18)|rb19);   //computer makes the wrong move
assign rb22 =((((((((rb1|rb2)|rb3)|rb4)|rb5)|rb6)|rb7)|rb8)|rb9);   //player makes the wrong move


assign wrong_move = rb21|rb22 ;  //overall wrong move by any of player

endmodule 
