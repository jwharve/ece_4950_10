function [] = stepper(tg,num,num_steps,dir)

if num == 1
    name = 'stepper_out';
else
    name = 'stepper_down';
end

% disable
tg.setparam(tg.getparamid([name '/enable'],'Value'),0);

% set direction
tg.setparam(tg.getparamid([name '/my_dir'],'Value'),dir);

% set num steps
tg.setparam(tg.getparamid([name '/switch'],'Threshold'),num_steps);

% enable
tg.setparam(tg.getparamid([name '/enable'],'Value'),1);


end