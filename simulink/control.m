clearvars -except tg; close all; clc;

if ~exist('tg','var') % check to see if the target is already built
        rtwbuild('motor_param_test');
end
tg.load('motor_param_test');
tg.start;

tg.setparam(tg.getparamid('Switch','Value'),sim)

keyboard;

tg.stop;
