function [x, y] = makeCheck(ix,iy)
global board
backup = board;

[idx, idy] = find(~isnan(board(ix,iy).possible));

if isempty(idx)
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

for ii = 1:size(idx,1)
    board = backup;
    board(ix,iy).type = NaN;
    board(idx(ii),idy(ii)).type = type;
    if isCheck(other) == 1
        good = 1;
        board = backup;
        break;
    end
end

if good == 1
    x = idx(ii);
    y = idy(ii);
else
    x = NaN;
    y = NaN;
end

board = backup;
end