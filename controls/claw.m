function [] = claw(tg,state)

if state == 1
    tg.setparam(tg.getparamid('oc','Value'),1)
else
    tg.setparam(tg.getparamid('oc','Value'),0)
end

end