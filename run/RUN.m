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


%% Identify Pieces
if connected
    improc(gui);
end
%% Generate Possible Moves
refreshPoss;

improc_done = 1;
