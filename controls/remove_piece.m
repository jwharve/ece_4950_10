function [] = remove_piece(ang1,dist1)
global bot;

movein = 0;

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
else
    if bot.out_steps < 300
        bot.step_out(300);
    end
end

% rotate arm to graveyard
bot.arm_pos(0);
% wait to stop moving
bot.stepper_done;
bot.arm_done;


% drop piece
bot.claw(opened);

end