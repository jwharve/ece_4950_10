%% Setup
% 8 squares
clearvars; close all; clc;

global board;
global improc_done;
global bot;

improc_done = 0;

connected = 0;

piece = struct('type',NaN,'team',NaN,'num',NaN,'angle',NaN,'dist',NaN,'possible',nan(numPieces,numPieces));

board = repmat(piece,numSquares,numSquares);

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

board(3,3).type = king;
board(3,3).team = us;
board(3,3).num = 1;

[locX, locY] = find(~isnan(board.piece));

for ii = 1:size(locX,1)
    genPossible(locX(ii),locY(ii));
end
remChecks;

improc_done = 1;

while improc_done == 0
     
end

dispPossible;

%% Cleanup

