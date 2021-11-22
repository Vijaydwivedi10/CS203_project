module who_wins3(input [1:0] pos0,pos1,pos2, output wire won, output wire [1:0]winner);  //used in previous module, checks the 3 positions filled of a side/diagonal

wire [1:0] wd0,wd1,wd2;
wire wd3;


assign wd0[0] = !(pos0[0]^pos1[0]);
assign wd0[1] = !(pos0[1]^pos1[1]);
assign wd1[0] = !(pos1[0]^pos2[0]);
assign wd1[1] = !(pos1[1]^pos2[1]);
assign wd2[1] = wd0[1] & wd1[1];
assign wd2[0] = wd0[0] & wd1[0];
assign wd3 = pos0[1] | pos0[0];
 
assign won = wd2[0]&wd2[1]&wd3 ;  //when the 3 positions in a side/diagonal are by the same player

assign winner[0] = pos0[0]&won;
assign winner[1] = pos0[1]&won;

endmodule
