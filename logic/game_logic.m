%% Setup
% 8 squares
clearvars; close all; clc;
addpath('./constants')

global numPieces;
global numSquares;

numPieces = 6;
numSquares = 8;

board = struct('piece',nan(numSquares,numSquares),'possible',nan(numSquares,numSquares,numPieces*2));% us then them


%%
% % random testing
% [x, y] = ind2sub([numSquares numSquares],randperm(numSquares^2));
% for ii = 1:randi(numSquares^2)
%     board.piece(x(ii),y(ii)) = randi(2*numPieces+1);
% end

board.piece(5,5) = king(us);
board.piece(7,5) = knight(them);


[locX, locY] = find(~isnan(board.piece));

for ii = 1:size(locX,1)
    board = genPossible(board,locX(ii),locY(ii));
end
board = remChecks(board);


dispPossible(board);

%% Cleanup
% rmpath('./constants')






