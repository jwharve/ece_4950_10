function clearPossible
global board;

for ii = 1:numSquares
    for jj = 1:numSquares
        board(ii,jj).possible = nan(numSquares,numSquares);
    end
end

end