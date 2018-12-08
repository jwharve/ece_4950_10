locations(1,8,:) = [45      37.35];
locations(1,7,:) = [75      31.75];
locations(1,6,:) = [125     25.65];
locations(1,5,:) = [155     21.2];
locations(1,4,:) = [190     18.3];
locations(1,3,:) = [220     17.3];
locations(1,2,:) = [265     14.6];
locations(1,1,:) = [315     13.05];

locations(2,8,:) = [70      46.35];
locations(2,7,:) = [100     39.60];
locations(2,6,:) = [130     33.75];
locations(2,5,:) = [165     28.35];
locations(2,4,:) = [205     26.10];
locations(2,3,:) = [240     23.85];
locations(2,2,:) = [280     20.9];
locations(2,1,:) = [330     19.2];

locations(3,8,:) = [110     53.33];
locations(3,7,:) = [135     45.45];
locations(3,6,:) = [165     39.60];
locations(3,5,:) = [210     35.4];
locations(3,4,:) = [220     31.8];
locations(3,3,:) = [260     29.48];
locations(3,2,:) = [300     26.40];
locations(3,1,:) = [340     25.1];

locations(4,8,:) = [150     56.93];
locations(4,7,:) = [170     51.30];
locations(4,6,:) = [195     45.68];
locations(4,5,:) = [220     40.27];
locations(4,4,:) = [255     36.90];
locations(4,3,:) = [285     33.75];
locations(4,2,:) = [325     31.0];
locations(4,1,:) = [360     27.6];

locations(5,8,:) = [185     61.43];
locations(5,7,:) = [205     54.90];
locations(5,6,:) = [230     50.18];
locations(5,5,:) = [255     45.98];
locations(5,4,:) = [285     41.60];
locations(5,3,:) = [315     38.70];
locations(5,2,:) = [350     35.55];
locations(5,1,:) = [385     32.05];

locations(6,8,:) = [220     64.03];
locations(6,7,:) = [235     58.60];
locations(6,6,:) = [255     53.58];
locations(6,5,:) = [285     49.3];
locations(6,4,:) = [310     44.65];
locations(6,3,:) = [340     41.3];
locations(6,2,:) = [375     38.95];
locations(6,1,:) = [415     35.1];

locations(7,8,:) = [255     67.95];
locations(7,7,:) = [275     62.10];
locations(7,6,:) = [300     58.1];
locations(7,5,:) = [320     53.80];
locations(7,4,:) = [345     49.0];
locations(7,3,:) = [375     45.5];
locations(7,2,:) = [400     42.3];
locations(7,1,:) = [430     39.80];

locations(8,8,:) = [310     70.4];
locations(8,7,:) = [325     66.1];
locations(8,6,:) = [340     61.8];
locations(8,5,:) = [365     56.80];
locations(8,4,:) = [390     52.20];
locations(8,3,:) = [415     50.40];
locations(8,2,:) = [445     46.13];
locations(8,1,:) = [460     42.43];

locations(:,:,1) = locations(:,:,1) - 10;

locations(7:8,1) = locations(7:8,1) + 20;


bot.step_down(up);
bot.step_out(-5);
bot.out_steps = 0;
bot.step_out(50);
bot.stepper_done;
bot.step_down(down);

for ii = 1:numSquares
    for jj = 1:numSquares
        bot.step_out(locations(ii,jj,1));
        bot.arm_pos(locations(ii,jj,2));
        keyboard
    end
end