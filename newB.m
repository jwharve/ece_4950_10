cc;
global board;
piece = struct('type',NaN,'team',NaN,'num',NaN,'angle',NaN,'dist',NaN,'possible',nan(numSquares,numSquares));
board = repmat(piece,numSquares,numSquares);

board(5,5).type = king;
board(5,5).team = us;

board(7,3).type = pawn;
board(7,3).team = us;

board(8,5).type = king;
board(8,5).team = them;

% board(8,2).type = bishop;
% board(8,2).team = them;


search = reshape([board.type],numSquares,numSquares);
[locX, locY] = find(~isnan(search));
clearPossible;
for ii = 1:size(locX,1)
    genPossible(locX(ii),locY(ii));
end
remChecks;