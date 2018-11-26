function genPossible(i_x, i_y)
global numSquares;
global numPieces;
global board;

piece = board.piece(i_x,i_y);

if any(piece == bishop)
    % to the left and down
    for ii = 1:i_x-1
        % if you run off the bottom
        if (i_y-ii < 1)
            break;
        end
        % if you run into an opposing piece
        if ~isnan(board.piece(i_x-ii,i_y-ii))
            if floor(piece-1)/numPieces ~= floor((board.piece(i_x-ii,i_y-ii)-1)/numPieces)
                board.possible(i_x-ii,i_y-ii,piece) = piece;
            end
            break;
        end
        board.possible(i_x-ii,i_y-ii,piece) = piece;
    end
    % to the right and up
    for ii = 1:numSquares-i_x
        % if you run off the top
        if (i_y+ii > numSquares)
            break;
        end
        % if you run into an opposing piece
        if ~isnan(board.piece(i_x+ii,i_y+ii))
            if floor(piece-1)/numPieces ~= floor((board.piece(i_x+ii,i_y+ii)-1)/numPieces)
                board.possible(i_x+ii,i_y+ii,piece) = piece;
            end
            break;
        end
        board.possible(i_x+ii,i_y+ii,piece) = piece;
    end
elseif any(piece == king)
    % one step in any direction
    for ii = -1:1
        for jj = -1:1
            % skip current  location
            if ii == 0 && jj == 0
                continue;
            end
            % if it's off the board
            if i_x+ii < 1 || i_x+ii > numSquares || i_y+jj < 1 || i_y+jj > numSquares
                continue;
            end
            % if it's a piece on the same team
            if floor(piece-1)/numPieces == floor((board.piece(i_x+ii,i_y+jj)-1)/numPieces)
                continue;
            end
            board.possible(i_x+ii,i_y+jj,piece) = piece;
        end
    end
elseif any(piece == knight)
    % all 8 combinations
    ii_big = [-2 -1 1 2 -2 -1 1 2];
    jj_big = [1 2 2 1 -1 -2 -2 -1];
    for kk = 1:size(ii_big,2)
        ii = ii_big(kk);
        jj = jj_big(kk);
        % if it's off the board
        if i_x+ii < 1 || i_x+ii > numSquares || i_y+jj < 1 || i_y+jj > numSquares
            continue;
        end
        % if it's a piece on the same team
        if floor(piece-1)/numPieces == floor((board.piece(i_x+ii,i_y+jj)-1)/numPieces)
            continue;
        end
        board.possible(i_x+ii,i_y+jj,piece) = piece;
    end
elseif any(piece == pawn)
    % if it can move up
    if i_y+1 <= numSquares && isnan(board.piece(i_x,i_y+1))
        board.possible(i_x,i_y+1,piece) = piece;
    end
    % check diagonals
    for ii = [-1 1]
        % if it's off the board
        if i_x+ii < 1 || i_x+ii > numSquares || i_y+1 > numSquares
            continue;
        end
        % if there's an opposing piece, it's valid
        if ~isnan(board.piece(i_x+ii,i_y+1))
            if floor(piece-1)/numPieces ~= floor(board.piece(i_x+ii,i_y+1)-1)/numPieces
                board.possible(i_x+ii,i_y+1,piece) = piece;
            end
        end
    end
elseif any(piece == queen)
    % to the left and down
    for ii = 1:i_x-1
        % if you run off the bottom
        if (i_y-ii < 1)
            break;
        end
        % if you run into an opposing piece
        if ~isnan(board.piece(i_x-ii,i_y-ii))
            if floor(piece-1)/numPieces ~= floor((board.piece(i_x-ii,i_y-ii)-1)/numPieces)
                board.possible(i_x-ii,i_y-ii,piece) = piece;
            end
            break;
        end
        board.possible(i_x-ii,i_y-ii,piece) = piece;
    end
    % to the right and up
    for ii = 1:numSquares-i_x
        % if you run off the top
        if (i_y+ii > numSquares)
            break;
        end
        % if you run into an opposing piece
        if ~isnan(board.piece(i_x+ii,i_y+ii))
            if floor(piece-1)/numPieces ~= floor((board.piece(i_x+ii,i_y+ii)-1)/numPieces)
                board.possible(i_x+ii,i_y+ii,piece) = piece;
            end
            break;
        end
        board.possible(i_x+ii,i_y+ii,piece) = piece;
    end
    % vertical to bottom
    for ii = fliplr(1:i_y-1)
        % if you run into an opposing piece
        if ~isnan(board.piece(i_x,ii))
            if floor((piece-1)/numPieces) ~= floor((board.piece(i_x,ii)-1)/numPieces)
                board.possible(i_x,ii,piece) = piece;
            end
            break;
        end
        board.possible(i_x,ii,piece) = piece;
    end
    % vertical to top
    for ii = i_y+1:numSquares
        % if you run into an opposing piece
        if ~isnan(board.piece(i_x,ii))
            if floor((piece-1)/numPieces) ~= floor((board.piece(i_x,ii)-1)/numPieces)
                board.possible(i_x,ii,piece) = piece;
            end
            break;
        end
        board.possible(i_x,ii,piece) = piece;
    end
    % horizontal to left
    for ii = fliplr(1:i_x-1)
        % if you run into an opposing piece
        if ~isnan(board.piece(ii,i_y))
            if floor(piece-1)/numPieces ~= floor(board.piece(ii,i_y)-1)/numPieces
                board.possible(ii,i_y,piece) = piece;
            end
            break;
        end
        board.possible(ii,i_y,piece) = piece;
    end
    % horizontal to right
    for ii = i_x+1:numSquares
        % if you run into an opposing piece
        if ~isnan(board.piece(ii,i_y))
            if floor(piece-1)/numPieces ~= floor(board.piece(ii,i_y)-1)/numPieces
                board.possible(ii,i_y,piece) = piece;
            end
            break;
        end
        board.possible(ii,i_y,piece) = piece;
    end
elseif any(piece == rook)
    % vertical to bottom
    for ii = fliplr(1:i_y-1)
        % if you run into an opposing piece
        if ~isnan(board.piece(i_x,ii))
            if floor((piece-1)/numPieces) ~= floor((board.piece(i_x,ii)-1)/numPieces)
                board.possible(i_x,ii,piece) = piece;
            end
            break;
        end
        board.possible(i_x,ii,piece) = piece;
    end
    % vertical to top
    for ii = i_y+1:numSquares
        % if you run into an opposing piece
        if ~isnan(board.piece(i_x,ii))
            if floor((piece-1)/numPieces) ~= floor((board.piece(i_x,ii)-1)/numPieces)
                board.possible(i_x,ii,piece) = piece;
            end
            break;
        end
        board.possible(i_x,ii,piece) = piece;
    end
    % horizontal to left
    for ii = fliplr(1:i_x-1)
        % if you run into an opposing piece
        if ~isnan(board.piece(ii,i_y))
            if floor(piece-1)/numPieces ~= floor(board.piece(ii,i_y)-1)/numPieces
                board.possible(ii,i_y,piece) = piece;
            end
            break;
        end
        board.possible(ii,i_y,piece) = piece;
    end
    % horizontal to right
    for ii = i_x+1:numSquares
        % if you run into an opposing piece
        if ~isnan(board.piece(ii,i_y))
            if floor(piece-1)/numPieces ~= floor(board.piece(ii,i_y)-1)/numPieces
                board.possible(ii,i_y,piece) = piece;
            end
            break;
        end
        board.possible(ii,i_y,piece) = piece;
    end
end
end