function [] = move_piece(ang1,dist1,ang2,dist2)
global bot;

movein = 1;

% move arm in
if movein
    bot.step_out(0);
end
% rotate arm to position
bot.arm_pos(ang1);
% wait to stop moving
bot.stepper_done;
bot.arm_done;

% move arm out to position
bot.step_out(round(dist1));
bot.stepper_done;

% pick up piece
bot.claw(opened);
bot.step_down(down);
bot.claw(closed);
bot.step_down(up);


% move arm in
if movein
    bot.step_out(0);
end
% rotate arm to position
bot.arm_pos(ang2);
% wait to stop moving
bot.stepper_done;
bot.arm_done;

% move arm out to position
bot.step_out(round(dist2));
bot.stepper_done;

% put down piece
bot.step_down(down);
bot.claw(opened);
bot.step_down(up);
end