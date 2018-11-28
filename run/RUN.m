%% Setup
% 8 squares
clearvars; close all; clc; clear all;

global board;
global improc_done;
global bot;

improc_done = 0;

connected = 1;

piece = struct('type',NaN,'team',NaN,'num',NaN,'angle',NaN,'dist',NaN,'possible',nan(numSquares,numSquares));

board = repmat(piece,numSquares,numSquares);

gui = GUI;

if connected
    bot = Control;
end


while gui.ready == 0
    drawnow
end

while (obj.read_load < 0.9)
    
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

% board(1,1).type = king;
% board(1,1).team = us;
% board(1,1).num = 1;
% board(1,1).angle = 45;
% x = bot.motor_loc(1) + bot.corner_loc(1);
% y = bot.motor_loc(2) + bot.corner_loc(2);
% board(1,1).dist = sqrt(x^2+y^2);


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

