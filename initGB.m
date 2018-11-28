function initGB
clear;
global board;
piece = struct('type',NaN,'team',NaN,'num',NaN,'angle',NaN,'dist',NaN,'possible',nan(numSquares,numSquares));
board = repmat(piece,numSquares,numSquares);
end

