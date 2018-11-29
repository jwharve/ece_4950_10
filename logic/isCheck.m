function [ret] = isCheck(team)
global board;


search = reshape([board.type],numSquares,numSquares);
[locX, locY] = find(~isnan(search));
clearPossible;
for ii = 1:size(locX,1)
    genPossible(locX(ii),locY(ii));
end


ki = find([board.type] == king & [board.team] == team);

ret = 0;

for piece = ki % cylce through kings
    for ii = 1:numSquares % cycle through squares
        for jj = 1:numSquares
            if board(ii,jj).team ~= board(piece).team % if the piece is on the other team than the team we are checking
                if ~isnan(board(ii,jj).possible(piece)) % if the piece is on the other team and can move to the king's location
                    ret = 1; % this team is in check
                    return;
                end
            end
        end
    end
end



end