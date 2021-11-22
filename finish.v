
module finish(pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, filled);    //if no more positions are left
   input [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9;
   output wire filled;                                                        //all positions filled

wire f1,f2,f3,f4,f5,f6,f7,f8,f9;

//f's check out the spaces mentioned in their RHS are filled or not     
assign f1 = (pos1[0] | pos1[1]);        
assign f2 = (pos2[0] | pos2[1]);
assign f3 = (pos3[0] | pos3[1]);
assign f4 = (pos4[0] | pos4[1]);
assign f5 = (pos5[0] | pos5[1]);
assign f6 = (pos6[0] | pos6[1]);
assign f7 = (pos7[0] | pos7[1]);
assign f8 = (pos8[0] | pos8[1]);
assign f9 = (pos9[0] | pos9[1]);

assign filled =((((((((f1 & f2) & f3) & f4) & f5) & f6) & f7) & f8) & f9);
endmodule 
