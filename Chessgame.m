%% Chess


%% The Game

% Board Setup
board = setup_board;
game = start_game;
turn = white_starts;
turn_color = white_color_starts;
disp_board(board);
 
while game == 0
     
    %Checks if the piece has a matching color to player color
    piece = '0';
    while piece(1) ~= turn_color
        alpha_num = ask_which_piece(turn);
        fromr = coordinate_to_row(alpha_num);
        fromc = coordinate_to_column(alpha_num);
        piece = convertStringsToChars(board(fromr,fromc));
    end
    piece = convertCharsToStrings(piece);

    % Ensures Legality
    legality = false;
    while legality ~= true
        alpha_num = ask_destination(turn);
        tor = coordinate_to_row(alpha_num);
        toc = coordinate_to_column(alpha_num);
        legality = checkLegal(board,fromr,fromc,tor,toc,turn_color);
    end

    % Move piece and change turn
    board = movePiece(board,piece,fromr,fromc,tor,toc);
    turn = changeTurn(turn);
    turn_color = changeTurnColor(turn_color);

    % Clear workspace and display updated board
    clc;
    disp_board(board);


    %game = false;
end


