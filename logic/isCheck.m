function [ret] = isCheck(team)
global board;


search = reshape([board.type],numSquares,numSquares);
[locX, locY] = find(~isnan(search));
clearPossible;
for ii = 1:size(locX,1)
    genPossible(locX(ii),locY(ii));
end
remChecks;


ki = find([board.type] == king && [board.team] == team);

ret = 0;

for piece = ki
    for ii = 1:numSquares
        for jj = 1:numSquares
            if board(ii,jj).team ~= board(piece).team
                if ~isnan(board(ii,jj).possible(piece))
                    ret = 1;
                    return;
                end
            end
        end
    end
end



end