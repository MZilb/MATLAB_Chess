function alpha_num = ask_which_piece(turn)
% Purpose: asks either black or white where to move their piece; determines
% whether it's black by looking at turn
% Usage:
%   turn        : uses this to determine if it asks black or white
%   alpha_num   : letter/number coordinate as a character variable


if turn == 1
    alpha_num = input('White, which piece would you like to move? ','s');
else
    alpha_num = input('Black, which piece would you like to move? ','s');
end

