function turn_color = changeTurnColor(turn_color)
% Purpose   : change the turn_color
% Usage:
%   turn_color  : osciallates between 'w' and 'b'
   

if turn_color == 'w'
    turn_color = 'b';
elseif turn_color == 'b'
    turn_color = 'w';
end


end

