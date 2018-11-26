function remChecks
global numSquares;
global numPieces;
global board;

idx_us = find(~isnan(board.possible(:,:,king(us))) & any(floor((board.possible(:,:,:)-1)/numPieces)+1 == them,3));
[a, b] = ind2sub([numSquares numSquares],idx_us);
board.possible(a,b,king(us)) = NaN;

idx_them = find(~isnan(board.possible(:,:,king(them))) & any(floor((board.possible(:,:,:)-1)/numPieces)+1 == us,3));
[a, b] = ind2sub([numSquares numSquares],idx_them);
board.possible(a,b,king(them)) = NaN;

end