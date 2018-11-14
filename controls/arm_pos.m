function [] = arm_pos(position)

tg.setparam(tg.getparamid('Position','Value'),position)

end