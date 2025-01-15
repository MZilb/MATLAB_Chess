
function legality = checkLegal(board,fromr,fromc,tor,toc,turn_color)

piece = board(fromr,fromc);
piece_char = convertStringsToChars(piece);
piece_color = piece_char(1);
taken = board(tor,toc);
taken_char = convertStringsToChars(taken);
taken_color = taken_char(1);

    if turn_color ~= piece_color
        legality = false;
    elseif turn_color == taken_color
        legality = false;
    else
    %~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~%    
        legality = false;
        % White Pawn Move
        if piece == "wp"
            % Advance 1 up
            if (fromr-1 == tor) && (fromc == toc) && (board(tor,toc) == "0")
                legality = true;
            % Advance 2 up (only from seventh row)
            elseif (fromr-2 == tor) && (fromc == toc) && (board(tor,toc) == "0") && (fromr == 7)
                legality = true;
            % Take diagnally
            elseif (fromr-1 == tor) && (fromc-1 == toc) && (board(tor,toc) ~= "0")
                legality = true;
            % Take diagnally
            elseif (fromr-1 == tor) && (fromc+1 == toc) && (board(tor,toc) ~= "0")
                legality = true;
            else
                legality = false;
            end
        end
    
    
        % Black Pawn Move
        if piece == "bp"
            % Advance 1 up
            if (fromr+1 == tor) && (fromc == toc) && (board(tor,toc) == "0")
                legality = true;
            % Advance 2 up (only from second row)
            elseif (fromr+2 == tor) && (fromc == toc) && (board(tor,toc) == "0") && (fromr == 2)
                legality = true;
            % Take diagnally
            elseif (fromr+1 == tor) && (fromc-1 == toc) && (board(tor,toc) ~= "0")
                legality = true;
            % Take diagnally
            elseif (fromr+1 == tor) && (fromc+1 == toc) && (board(tor,toc) ~= "0")
                legality = true;
            else
                legality = false;
            end
        end
    
        
        % Knight move
        if piece == "wn" || piece == "bn"
            legality = check_knight(fromc,fromr,toc,tor);
        end


        % Rook move
        if piece == "wr" || piece == "br" 
            if toc == fromc
                legality = check_updown(fromr,tor,toc,board);
            elseif tor == fromr
                legality = check_sideside(fromc,toc,tor,board);
            else
                legality = false;
            end
        end
    

%         % Bishop Move
%         if piece == "wb" || piece == "bb"
%             if toc>fromc && tor>fromr
%                 legality = check_SE(~~~~~~);
%             elseif toc>fromc && tor<fromr
%                 legality = check_NE(~~~~~);
%             elseif toc<fromc && tor<fromr
%                 legality = check_NW(~~~~~~);
%             elseif toc<fromc && tor>fromr
%                 legality = check_SW(~~~~~);
%             else
%                 legality = false;
%             end
%         end


        % King Move
        if piece == "wk" || piece == "bk"
            legality = check_king(fromc,fromr,toc,tor);
        end
    %~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~%


    end
end




function valid_ud = check_updown(fromr,tor,toc,board)
% Purpose: check if the spaces between the orginal and destination square
% are empty for UP and DOWN movements

    valid_ud = true;

    % If piece moves up more than 1
    if tor < fromr && fromr-tor > 1
        n = fromr - tor;
        i = 1;
        while valid_ud == true && i<=(n-1)
            if board(tor + i, toc) ~= "0"
                valid_ud = false;
            end
            i = i + 1;
        end
    end

    % If piece moves down more than 1
    if fromr < tor && tor-fromr > 1
        n = tor - fromr;
        i = 1;
        while valid_ud == true &&  i<=(n-1)
            if board(tor - i,toc) ~= "0"
                valid_ud = false;
            end
            i = i + 1;
        end
    end

end




function valid_lr = check_sideside(fromc,toc,tor,board)
% Purpose: check if the spaces between the orginal and destination square
% are empty for LEFT and RIGHT movements

    valid_lr = true;

    % If piece moves left more than 1
    if toc < fromc && fromc-toc > 1
        n = fromc - toc;
        i = 1;
        while valid_lr == true && i<=(n-1)
            if board(tor,toc + i) ~= "0"
                valid_lr = false;
            end
            i = i + 1;
        end
    end

    % If piece moves right more than 1
    if fromc < toc && toc-fromc > 1
        n = toc - fromc;
        i = 1;
        while valid_lr == true &&  i<=(n-1)
            if board(tor,toc - i) ~= "0"
                valid_lr = false;
            end
            i = i + 1;
        end
    end

end




function valid_knight = check_knight(fromc,fromr,toc,tor)
% Purpose: check if the move that a knight is making is valid

delt_x = fromc-toc;
x = abs(delt_x);

delt_y = fromr-tor;
y = abs(delt_y);
    
    if (x == 1) && (y == 2)
        valid_knight = true;
    elseif (x == 2) && (y == 1)
        valid_knight = true;
    else
        valid_knight = false;
    end


end




function valid_king = check_king(fromc,fromr,toc,tor)
% Purpose: check if the move that the king is making is valid

delt_x = fromc-toc;
x = abs(delt_x);

delt_y = fromr-tor;
y = abs(delt_y);

    if (x<=1) && (y<=1)
        valid_king = true;
    else
        valid_king = false;
    end

    
end


