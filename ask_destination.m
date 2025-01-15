function alpha_num = ask_destination(turn)
% Purpose: ask where the piece should be moved
% Usage:
%   turn        : depending on who's turn, it asks black or white
%   alpha_num   : the coordinate is a letter followed by a number (d5)


if turn == 1
    alpha_num = input('White, where do you want to move it? ','s');
else
    alpha_num = input('Black, where do you want to move it? ','s');
end

