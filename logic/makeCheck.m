function [x, y] = makeCheck(ix,iy)
global board
backup = board;

[mx, my] = find(~isnan(board(ix,iy).possible));

if isempty(mx)
    x = NaN;
    y = NaN;
    board = backup;
    return;
end

type = board(ix,iy).type;
team = board(ix,iy).team;

if team == us
    other = them;
else
    other = us;
end

good = 0;

for ii = 1:size(mx,1) % go through all possible moves
    board = backup;
    
    board(ix,iy).type = NaN;
    board(ix,iy).team = NaN;
    board(mx(ii),my(ii)).type = type;
    board(mx(ii),my(ii)).team = team;
    if isCheck(other) == 1 && isCheck(us) == 0
        good = 1;
        board = backup;
        break;
    end
end

if good == 1
    x = mx(ii);
    y = my(ii);
else
    x = NaN;
    y = NaN;
end

board = backup;
end