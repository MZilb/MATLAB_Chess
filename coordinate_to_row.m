function row = coordinate_to_row(alpha_num)
% Purpose   : Convert the coordinate notation to find the row
% Usage:
%   alpha_num   : number and a letter coordinate
%   num         : number denoting row
%   row         : actual row value


% Separates coordinate notation
num = str2double(alpha_num(2));

% Converts number to a row
row = 9 - num;

