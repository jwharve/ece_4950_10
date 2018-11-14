function [] = stepper(num_steps,dir)

tg.setparam(tg.getparamid('Stepper_Dir','Value'),dir)

for ii = 1:num_steps
    tg.setparam(tg.getparamid('Stepper_Sttep','Value'),1)
    puase(0.01);
    tg.setparam(tg.getparamid('Stepper_Sttep','Value'),1)
    delay(0.01);
end

end