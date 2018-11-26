function [] = move_piece(bot,ang1,dist1,ang2,dist2)

% move arm in
bot.step_out(0);
% rotate arm to position
bot.arm_pos(ang1);
% wait to stop moving
bot.stepper_done;
bot.arm_done;

% move arm out to position
bot.step_out(round(dist1*bot.dist2steps));
bot.stepper_done;

% pick up piece
bot.claw(open);
bot.step_down(down);
bot.claw(closed);
bot.step_down(up);


% move arm in
bot.step_out(0);
% rotate arm to position
bot.arm_pos(ang2);
% wait to stop moving
bot.stepper_done;
bot.arm_done;

% move arm out to position
bot.step_out(round(dist2*bot.dist2steps));
bot.stepper_done;

% put down piece
bot.step_down(down);
bot.claw(open);
bot.step_down(up);
end