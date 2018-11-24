function [] = move_piece(tg,ang1,dist1,ang2,dist2)
global step_count;

% move arm in
stepper(tg,1,step_count,in);
% rotate arm to position
arm_pos(tg,ang1);

% wait to stop moving
stepper_done(tg,1,step_count);
step_count = 0;
arm_done(tg,ang1);


% move arm out to position
stepper(tg,1,round(dist1*dist2step),out);
stepper_done(tg,1,round(dist1*dist2step));
step_count = round(dist1*dist2step);


% pick up piece
stepper(tg,2,pickup_steps,down);
stepper_done(tg,2,pickup_steps);
claw(tg,closed);
stepper(tg,2,pickup_steps,up);
stepper_done(tg,2,pickup_steps);


stepper(tg,1,step_count,in); % move arm in
arm_pos(tg,ang2);

end