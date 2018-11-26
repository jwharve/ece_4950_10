%% Setup
% 8 squares
clearvars; close all; clc;

global numPieces;
global numSquares;
global board;

numPieces = 6;
numSquares = 8;

connected = 0;

board = struct('piece',nan(numSquares,numSquares),'angle',nan(numSquares,numSquares),'dist',nan(numSquares,numSquares),'possible',nan(numSquares,numSquares,numPieces*2));% us then them

gui = GUI;

if connected
    bot = Control;
end

while gui.ready == 0
    drawnow
end

%% Identify Pieces
if connected
    improc(gui);
end

%% Generate Possible Moves
% % random testing
% [x, y] = ind2sub([numSquares numSquares],randperm(numSquares^2));
% for ii = 1:randi(numSquares^2)
%     board.piece(x(ii),y(ii)) = randi(2*numPieces+1);
% end

board.piece(3,3) = king(us);

[locX, locY] = find(~isnan(board.piece));

for ii = 1:size(locX,1)
    genPossible(locX(ii),locY(ii));
end
remChecks;


dispPossible;

%% Cleanup

