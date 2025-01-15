function column = coordinate_to_column(alpha_num)
% Purpose   : Convert the coordinate notation to row column d5 to [4,4]
% Usage:
%   alpha_num   : number and a letter coordinate
%   alpha       : letter denoting column
%   column      : actual column value


% Separates coordinate notation
alpha = alpha_num(1);

% Converts letter name of column into a number of the column
if alpha == 'a'
    column = 1;
elseif alpha == 'b'
    column = 2;
elseif alpha == 'c'
    column = 3;
elseif alpha == 'd'
    column = 4;
elseif alpha == 'e'
    column = 5;
elseif alpha == 'f'
    column = 6;
elseif alpha == 'g'
    column = 7;
elseif alpha == 'h'
    column = 8;
end

