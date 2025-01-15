function board = movePiece(board,piece,fromr,fromc,tor,toc)
% Purpose: move the selected piece to the destination and make the original
% space empty
% Usage:
%   board   : the board will update after the piece has moved
%   piece   : a string of the piece being moved
%   fromr   : orignal row
%   fromc   : original column
%   tor     : destination row
%   toc     : destination column


board(tor,toc) = piece;
board(fromr,fromc) = "0";
            
end

