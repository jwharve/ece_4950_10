%% Setup
% 8 squares
clearvars; close all; clc;
addpath('./constants')

numPieces = 6;
numSquares = 8;

square = struct('piece',struct('us',NaN,'them',NaN),'possible',struct('us',nan(numPieces,1),'them',nan(numPieces,1)));

%%




%% Cleanup
rmpath('./constants')