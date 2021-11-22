PROJECT: Tic Tac Toe
Language: Verilog

Group members:
1. Tanish Goyal (2020CSB1133)
2. Vijay Dwivedi (2020CSB1140)

INTERMEDIATE SUBMISSION:
->Added the inputs 
->Added the tic tac toe game module
->Added the position module (detects the position of player or computer)
->Added the pos_decode module (decodes the position of player and computer from psoition bits)
->Added the finish module (checks if all the places are filled)
->Added the re_block module (throws error if the block is pressed again == illegal move)

TASKS LEFT AFTER INTERMEDIATE SUBMISSION:
->Addition of testbench
->Completing the codes of each of the written modules
->Addition of FSM module (control the tic tac toe game according to the current state)
->Addition of winner module (tells which is the winner)

NOTE:
Earlier, we were editing the Readme.md only but now we saw that we have to make a readme.txt file. So, this is new Readme.txt with the written material of Readme.md also

TASKS DONE NOW:
All

PROJECT DETAILS:
This is two player game in which we have named our 2nd player as the computer.
As what happens in conventional game, the player who would mark the 3 symbols in a diagonal or a side, at first, row wins the game.

Reset=0 is necessary to play the game
The following 2-bit values will be stored in one of the 9 positions as the gameplay occurs.
00: if neither player and computer played in that position [REST STATE]
01: represents X. If player played at that position [PLAYER STATE]
10: represents 0. If computer played at that position [COMPUTER STATE]
11:game is finished [OVER STATE]

To explain various lines of the code, we have added comments. Still for better understanding, here are some common inputs used throughput the code:
->Pp: 1 WHEN THE PLAYER PLAYS; 0 WHEN NOBODY IS PLAYING
->Cp: 1 TO SWITCH  FROM COMPUTER TO REST STATE; 0 TO REMAIN IN COMPUTER STATE
->wrong_move: 1 WHEN PLAYER/COMPUTER MAKES A WRONG MOVE AND REST STATE IS RESTORED; 0 TO SWITCH STATES BETWEEN PLAYER TO COMPUTER (Cp=1)/ COMPUTER TO PLAYER (Pp=1) WHEN EITHER OF THEM MAKES A WRONG MOVE.
->Winner: 1 WHEN WINNER IS FOUND AND GAME IS RESET AFTER FINISHING; 0 WHEN NO WINNER FOUND