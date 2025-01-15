function board = setup_board
% Purpose: Sets up a fresh board at the beginning of the game
% Usage:
%   board: a 9x9 string array of the board along with the numbered/lettered
%           squares


board = ["br" "bn" "bb" "bq" "bk" "bb" "bn" "br";
         "bp" "bp" "bp" "bp" "bp" "bp" "bp" "bp";
         "0" "0" "0" "0" "0" "0" "0" "0";
         "0" "0" "0" "0" "0" "0" "0" "0";
         "0" "0" "0" "0" "0" "0" "0" "0";
         "0" "0" "0" "0" "0" "0" "0" "0";
         "wp" "wp" "wp" "wp" "wp" "wp" "wp" "wp";
         "wr" "wn" "wb" "wq" "wk" "wb" "wn" "wr"];