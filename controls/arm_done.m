function [] = arm_done(tg,position)

i = 0;
thresh = 3;

prev2 = getsignal(tg,'switching logic');
prev = getsignal(tg,'switching logic');

while (abs(prev - position) < thresh && prev2 < thresh)
    i = i + 1;
    if i > 5000
        break;
    end
    prev2 = prev;
    prev = getsignal(tg,'switching logic');
end

end