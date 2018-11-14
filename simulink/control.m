clearvars -except tg; close all; clc;

if ~exist('tg','var') % check to see if the target is already built
        rtwbuild('model');
end
tg.load('model');
tg.start;

keyboard;

tg.stop;
