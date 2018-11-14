function [] = stepper(tg,num,num_steps,dir)

if num == 1
    text1 = 'Stepper1_Dir';
    text2 = 'Stepper1_Step';
else
    text1 = 'Stepper2_Dir';
    text2 = 'Stepper2_Step';
end

tg.setparam(tg.getparamid(text1,'Value'),dir)

for ii = 1:num_steps
    tg.setparam(tg.getparamid(text2,'Value'),1)
    tg.setparam(tg.getparamid(text2,'Value'),0)
end

end