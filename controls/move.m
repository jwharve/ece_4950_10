function move(x1, y1, x2, y2)
global board;
global bot;

locations(1,8,:) = [45      37.35];
locations(1,7,:) = [75      31.95];
locations(1,6,:) = [115     25.65];
locations(1,5,:) = [155     20.25];
locations(1,4,:) = [190     17.3];
locations(1,3,:) = [220     15.53];
locations(1,2,:) = [265     13.05];
locations(1,1,:) = [310     11.93];

locations(2,8,:) = [70      46.35];
locations(2,7,:) = [105     39.60];
locations(2,6,:) = [130     33.75];
locations(2,5,:) = [170     28.35];
locations(2,4,:) = [210     26.10];
locations(2,3,:) = [245     23.85];
locations(2,2,:) = [280     19.35];
locations(2,1,:) = [320     18.23];

locations(3,8,:) = [110     53.33];
locations(3,7,:) = [135     45.45];
locations(3,6,:) = [165     39.60];
locations(3,5,:) = [195     34.88];
locations(3,4,:) = [230     31.28];
locations(3,3,:) = [260     29.48];
locations(3,2,:) = [300     26.10];
locations(3,1,:) = [340     23.85];

locations(4,8,:) = [150     56.93];
locations(4,7,:) = [170     51.30];
locations(4,6,:) = [195     45.68];
locations(4,5,:) = [220     40.27];
locations(4,4,:) = [255     36.90];
locations(4,3,:) = [285     33.75];
locations(4,2,:) = [325     31.50];
locations(4,1,:) = [360     27.2];

locations(5,8,:) = [185     61.43];
locations(5,7,:) = [210     54.90];
locations(5,6,:) = [230     50.18];
locations(5,5,:) = [260     45.98];
locations(5,4,:) = [285     41.60];
locations(5,3,:) = [315     38.70];
locations(5,2,:) = [350     35.55];
locations(5,1,:) = [380     32.05];

locations(6,8,:) = [185     61.43];
locations(6,7,:) = [210     54.90];
locations(6,6,:) = [230     50.18];
locations(6,5,:) = [260     45.98];
locations(6,4,:) = [285     41.60];
locations(6,3,:) = [315     38.70];
locations(6,2,:) = [350     35.55];
locations(6,1,:) = [380     32.05];

locations(7,8,:) = [260     67.28];
locations(7,7,:) = [280     62.10];
locations(7,6,:) = [300     57.15];
locations(7,5,:) = [325     53.10];
locations(7,4,:) = [350     48.68];
locations(7,3,:) = [380     44.77];
locations(7,2,:) = [405     41.85];
locations(7,1,:) = [430     39.80];

locations(8,8,:) = [300     70.4];
locations(8,7,:) = [320     66.1];
locations(8,6,:) = [340     61.8];
locations(8,5,:) = [355     56.80];
locations(8,4,:) = [380     52.20];
locations(8,3,:) = [405     48.60];
locations(8,2,:) = [430     45.68];
locations(8,1,:) = [460     43.43];

locations(:,:,1) = locations(:,:,1) - 10;

tic

if x2 == 0 && y2 == 0
    move_piece(locations(x1,y1,2),locations(x1,y1,1),5,420);
    bot.hit_load();
    bot.time;
    return;
end


if ~isnan(board(x2,y2).type)
    remove_piece(locations(x2,y2,2),locations(x2,y2,1));
end

move_piece(locations(x1,y1,2),locations(x1,y1,1),locations(x2,y2,2),locations(x2,y2,1));

bot.hit_load();

bot.time

end

