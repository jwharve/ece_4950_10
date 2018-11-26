function [ret] = showPossible(board, i_x, i_y)
global numSquares;

thisPiece = board.piece(i_x,i_y);

ind = find(~isnan(board.possible(:,:,thisPiece)));

ret = nan(numSquares,numSquares);

for ii = 1:size(ind,1)
    ret(ind(ii)) = 1;
end

end

