function genPossible(i_x, i_y)
global board;

type = board(i_x,i_y).type;
team = board(i_x,i_y).team;

if any(type == bishop)
    % to the left and down
    for ii = 1:i_x-1
        % if you run off the bottom
        if (i_y-ii < 1)
            break;
        end
        % if you run into a piece
        if ~isnan(board(i_x-ii,i_y-ii).type)
            if team ~= board(i_x-ii,i_y-ii).team % if opposing
                board(i_x,i_y).possible(i_x-ii,i_y-ii) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(i_x-ii,i_y-ii) = 1;
    end
    % to the right and down
    for ii = 1:numSquares - i_x
        % if you run off the bottom
        if (i_y-ii < 1)
            break;
        end
        % if you run into a piece
        if ~isnan(board(i_x+ii,i_y-ii).type)
            if team ~= board(i_x+ii,i_y-ii).team % if opposing
                board(i_x,i_y).possible(i_x+ii,i_y-ii) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(i_x+ii,i_y-ii) = 1;
    end
    % to the left and up
    for ii = 1:i_x-1
        % if you run off the top
        if (i_y+ii > numSquares)
            break;
        end
        % if you run into a piece
        if ~isnan(board(i_x-ii,i_y+ii).type)
            if team ~= board(i_x-ii,i_y+ii).team % if opposing
                board(i_x,i_y).possible(i_x-ii,i_y+ii) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(i_x-ii,i_y+ii) = 1;
    end
    % to the right and up
    for ii = 1:numSquares-i_x
        % if you run off the top
        if (i_y+ii > numSquares)
            break;
        end
        % if you run into a piece
        if ~isnan(board(i_x+ii,i_y+ii).type)
            if team ~= board(i_x+ii,i_y+ii).team % if opposing
                board(i_x,i_y).possible(i_x+ii,i_y+ii) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(i_x+ii,i_y+ii) = 1;
    end
elseif any(type == king)
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
            if team == board(i_x+ii,i_y+jj).team
                continue;
            end
            board(i_x,i_y).possible(i_x+ii,i_y+jj) = 1;
        end
    end
elseif any(type == knight)
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
        if team == board(i_x+ii,i_y+jj).team
            continue;
        end
        board(i_x,i_y).possible(i_x+ii,i_y+jj) = 1;
    end
elseif any(type == pawn)
    % if it can move up
    if team == us
        if i_y+1 <= numSquares && isnan(board(i_x,i_y+1).type)
            board(i_x,i_y).possible(i_x,i_y+1) = 1;
        end
        % check diagonals
        for ii = [-1 1]
            % if it's off the board
            if i_x+ii < 1 || i_x+ii > numSquares || i_y+1 > numSquares
                continue;
            end
            % if there's an opposing piece, it's valid
            if ~isnan(board(i_x+ii,i_y+1).type)
                if team ~= board(i_x+ii,i_y+1).team
                    board(i_x,i_y).possible(i_x+ii,i_y+1) = 1;
                end
            end
        end
    else
        if i_y-1 > 0
            if isnan(board(i_x,i_y-1).type)
                board(i_x,i_y).possible(i_x,i_y-1) = 1;
            end
        end
        % check diagonals
        for ii = [-1 1]
            % if it's off the board
            if i_x+ii < 1 || i_x+ii > numSquares || i_y-1 > numSquares
                continue;
            end
            % if there's an opposing piece, it's valid
            if ~isnan(board(i_x+ii,i_y-1).type)
                if team ~= board(i_x+ii,i_y-1).team
                    board(i_x,i_y).possible(i_x+ii,i_y-1) = 1;
                end
            end
        end
    end
elseif any(type == queen)
    % to the left and down
    for ii = 1:i_x-1
        % if you run off the bottom
        if (i_y-ii < 1)
            break;
        end
        % if you run into a piece
        if ~isnan(board(i_x-ii,i_y-ii).type)
            if team ~= board(i_x-ii,i_y-ii).team % if opposing
                board(i_x,i_y).possible(i_x-ii,i_y-ii) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(i_x-ii,i_y-ii) = 1;
    end
    % to the right and down
    for ii = 1:numSquares - i_x
        % if you run off the bottom
        if (i_y-ii < 1)
            break;
        end
        % if you run into a piece
        if ~isnan(board(i_x+ii,i_y-ii).type)
            if team ~= board(i_x+ii,i_y-ii).team % if opposing
                board(i_x,i_y).possible(i_x+ii,i_y-ii) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(i_x+ii,i_y-ii) = 1;
    end
    % to the left and up
    for ii = 1:i_x-1
        % if you run off the top
        if (i_y+ii > numSquares)
            break;
        end
        % if you run into a piece
        if ~isnan(board(i_x-ii,i_y+ii).type)
            if team ~= board(i_x-ii,i_y+ii).team % if opposing
                board(i_x,i_y).possible(i_x-ii,i_y+ii) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(i_x-ii,i_y+ii) = 1;
    end
    % to the right and up
    for ii = 1:numSquares-i_x
        % if you run off the top
        if (i_y+ii > numSquares)
            break;
        end
        % if you run into a piece
        if ~isnan(board(i_x+ii,i_y+ii).type)
            if team ~= board(i_x+ii,i_y+ii).team % if opposing
                board(i_x,i_y).possible(i_x+ii,i_y+ii) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(i_x+ii,i_y+ii) = 1;
    end
    % vertical to bottom
    for ii = fliplr(1:i_y-1)
        % if you run into an opposing piece
        if ~isnan(board(i_x,ii).type)
            if team ~= board(i_x,ii).team
                board(i_x,i_y).possible(i_x,ii) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(i_x,ii) = 1;
    end
    % vertical to top
    for ii = i_y+1:numSquares
        % if you run into an opposing piece
        if ~isnan(board(i_x,ii).type)
            if team ~= board(i_x,ii).team
                board(i_x,i_y).possible(i_x,ii) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(i_x,ii) = 1;
    end
    % horizontal to left
    for ii = fliplr(1:i_x-1)
        % if you run into an opposing piece
        if ~isnan(board(ii,i_y).type)
            if team ~= board(ii,i_y).team
                board(i_x,i_y).possible(ii,i_y) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(ii,i_y) = 1;
    end
    % horizontal to right
    for ii = i_x+1:numSquares
        % if you run into an opposing piece
        if ~isnan(board(ii,i_y).type)
            if team ~= board(ii,i_y).team
                board(i_x,i_y).possible(ii,i_y) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(ii,i_y) = 1;
    end
elseif any(type == rook)
    % vertical to bottom
    for ii = fliplr(1:i_y-1)
        % if you run into an opposing piece
        if ~isnan(board(i_x,ii).type)
            if team ~= board(i_x,ii).team
                board(i_x,i_y).possible(i_x,ii) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(i_x,ii) = 1;
    end
    % vertical to top
    for ii = i_y+1:numSquares
        % if you run into an opposing piece
        if ~isnan(board(i_x,ii).type)
            if team ~= board(i_x,ii).team
                board(i_x,i_y).possible(i_x,ii) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(i_x,ii) = 1;
    end
    % horizontal to left
    for ii = fliplr(1:i_x-1)
        % if you run into an opposing piece
        if ~isnan(board(ii,i_y).type)
            if team ~= board(ii,i_y).team
                board(i_x,i_y).possible(ii,i_y) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(ii,i_y) = 1;
    end
    % horizontal to right
    for ii = i_x+1:numSquares
        % if you run into an opposing piece
        if ~isnan(board(ii,i_y).type)
            if team ~= board(ii,i_y).team
                board(i_x,i_y).possible(ii,i_y) = 1;
            end
            break;
        end
        board(i_x,i_y).possible(ii,i_y) = 1;
    end
end
end