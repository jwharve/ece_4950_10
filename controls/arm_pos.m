function [] = arm_pos(tg,position)

tg.setparam(tg.getparamid('Position','Value'),position)

end