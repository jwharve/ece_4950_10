%% Setup
% 8 squares
clearvars; close all; clc;

global board;
global improc_done;
global bot;

improc_done = 0;

connected = 0;

piece = struct('type',NaN,'team',NaN,'num',NaN,'angle',NaN,'dist',NaN,'possible',nan(numSquares,numSquares));

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
%     board(x(ii),y(ii)).type = randi(numPieces+1);
%     board(x(ii),y(ii)).team = randi(2);
% end

board(3,3).type = king;
board(3,3).team = us;
board(3,3).num = 1;

search = reshape([board.type],numSquares,numSquares);
[locX, locY] = find(~isnan(search));
clearPossible;
for ii = 1:size(locX,1)
    genPossible(locX(ii),locY(ii));
end
remChecks;

improc_done = 1;

while improc_done == 0
     
end

%% Cleanup

