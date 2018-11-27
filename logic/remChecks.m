function remChecks
global board;

ki = find([board.type] == king);

for piece = ki
    base = zeros(numSquares,numSquares);
    for ii = 1:numSquares
        for jj = 1:numSquares
            if board(ii,jj).team == board(piece).team
                mat = board(ii,jj).possible;
                mat(isnan(mat)) = 0;
                base = or(base,mat);
            end
        end
    end
    mat2 = board(piece).possible;
    mat2(isnan(mat2)) = 0;
    idx = and(mat,mat2);
    board(piece).possible(idx) = NaN;
end


% idx_us = find(~isnan(board.possible(:,:,king(us))) & any(floor((board.possible(:,:,:)-1)/numPieces)+1 == them,3));
% [a, b] = ind2sub([numSquares numSquares],idx_us);
% board.possible(a,b,king(us)) = NaN;
% 
% idx_them = find(~isnan(board.possible(:,:,king(them))) & any(floor((board.possible(:,:,:)-1)/numPieces)+1 == us,3));
% [a, b] = ind2sub([numSquares numSquares],idx_them);
% board.possible(a,b,king(them)) = NaN;

end