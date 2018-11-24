function [] = stepper_done(tg,num,num_steps)

if num == 1
    name = 'stepper_out';
else
    name = 'stepper_down';
end

while (getsignal(tg,[name '/Sum']) < num_steps); end

end