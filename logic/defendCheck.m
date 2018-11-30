function [x1, y1, x2, y2] = defendCheck % NEW
global board
backup = board;

[idx, idy] = find(~isnan(reshape([board.type],numSquares,numSquares)) & reshape([board.team],numSquares,numSquares) == us);

if isempty(idx)
    x1 = NaN;
    y1 = NaN;
    x2 = NaN;
    y2 = NaN;
    board = backup;
    return;
end

good = 0;

for ii = 1:size(idx,1) % cycle through pieces
    board = backup;
    pos = board(idx(ii),idy(ii)).possible;
    
    [mx, my] = find(~isnan(pos));
    
    type = board(idx(ii),idy(ii)).type;
    team = board(idx(ii),idy(ii)).team;
    
    if isempty(mx)
        continue;
    end
    
    for jj = 1:size(mx,1) % cycle through moves
        board = backup;
        board(idx(ii),idy(ii)).type = NaN;
        board(idx(ii),idy(ii)).team = NaN;
        board(mx(jj),my(jj)).type = type;
        board(mx(jj),my(jj)).team = team;
        
        if isCheck(us) == 0
            good = 1;
            board = backup;
            break;
        end
    end
    
    if good == 1
        break;
    end
end

if good == 1
    x1 = idx(ii);
    y1 = idy(ii);
    x2 = mx(jj);
    y2 = my(jj);
else
    x1 = NaN;
    y1 = NaN;
    x2 = NaN;
    y2 = NaN;
end

board = backup;
end