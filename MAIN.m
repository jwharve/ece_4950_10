%% setup
%{
if moved:
find corner
find width
check dilation values
update motor position
%}

clearvars -except tg cam; close all; clc;

connected = 0;

corner = [103 16];
side = 440;
motorLoc = [325 -2/1.4*(side/8)];

if connected
    if ~exist('tg')
        rtwbuild('proj3');
    end
    tg.load('proj3');
    tg.start;
end

if 1
    new = menu('New Pictures?','Yes','No');
else
    new = 2;
end

if new ~= 2
    % check to make sure that the webcam is plugged in
    if isempty(find(strcmp(webcamlist,'HP USB Webcam'),1))
        fprintf('HP USB Webcam not connected');
        return;
    end

    if ~exist('cam')
        cam =  webcam('HP USB Webcam');
    end

    preview(cam);
    
    % capture image without pieces
    menu('Image without pieces','capture');
    without = snapshot(cam);
    
    % capture image with pieces
    menu('Image with pieces','capture');
    with = snapshot(cam);
    
    closePreview(cam);

        
    t = clock;
    
    name = sprintf('pics_%02.0f_%02.0f_%02.0f_%02.0f',t(2:5));
    save(name,'with','without');
else
    pics = ls('pics_*.mat');
    load(pics(end-1,:));
end

%% subtraction
redImg = without(:,:,1) - with(:,:,1);
greenImg = without(:,:,2) - with(:,:,2);
blueImg = without(:,:,3) - with(:,:,3);

thresh = 0.1;

subtractr = im2bw(redImg,thresh);
subtractg = im2bw(greenImg,thresh);
subtractb = im2bw(blueImg,thresh);

pic = zeros(size(subtractr));
for ii = 1:size(subtractr,1)
    for jj = 1:size(subtractr,2)
        if subtractr(ii,jj) == 1 || subtractg(ii,jj) == 1 || subtractb(ii,jj) == 1
            pic(ii,jj) = 1;
        end
    end
end

%% erode/dilate
% set up disks for improc
se1 = strel('disk',1);
se2 = strel('disk',2);
se3 = strel('disk',3);
se4 = strel('disk',4);
se5 = strel('disk',5);
se6 = strel('disk',6);

img = pic;
imshow(img);
pause(1);

img = imerode(img, se1);
imshow(img)
pause(1);

img = imerode(img, se3);
imshow(img)
pause(1);

img = imdilate(img, se2);
imshow(img)
pause(1);

img = imerode(img,se4);
imshow(img)
pause(1);

imshow(img);
pause(1);

imshowpair(with,img,'montage');

%% recognize
bwconn = bwconncomp(img);
props = regionprops(bwconn);

numSquares = 8;
unit_pixels = side/numSquares;

numPieces = 0;
% figure;
% imshow(with);
hold on;
for ii = 1:size(props,1)        
    if props(ii).Area > 10
        numPieces = numPieces + 1;
        center = props(ii).Centroid;
        center = center - corner;
        loc = floor(center/unit_pixels) + [1 1];
        color = 'k';
        % get shape
        if props(ii).Area < 200
            type = 'Triangle';
            marker = '^';
        elseif props(ii).Area < 500
            type = 'Square';
            marker = 's';
        else
            type = 'Circle';
            marker = 'o';
        end
        % get color
        a = round(props(ii).Centroid);
        row = a(1);
        col = a(2);
        r = mean(mean(with(col-5:col+5, row-5:row+5,1)));
        g = mean(mean(with(col-5:col+5, row-5:row+5,2)));
        b = mean(mean(with(col-5:col+5, row-5:row+5,3)));

        [r g b];
        if r > 150 && r < 210 && g > 150 && g < 210 && b > 85 && b < 130
            color = 'y';
            colorName = 'Yellow';
        elseif r < 110 && g < 130 && b > 100
            color = 'b';
            colorName = 'Blue';
        elseif r > 130 && g < 100
            color = 'r';
            colorName = 'Red';
        else
            color = 'g';
            colorName = 'Green';
        end
        plot((loc(1)-0.5)*unit_pixels+corner(1),(loc(2)-0.5)*unit_pixels+corner(2),'marker',marker,'MarkerFaceColor',color,'MarkerEdgeColor',color)
        fprintf('%s detected in square %0.0f, %0.0f\n',type,loc(1),loc(2));
        pieces(numPieces).name = {[colorName ' ' type]};
        pieces(numPieces).centroid = round(props(ii).Centroid);
    end
end

fprintf('Detected %0.0f pieces\n',numPieces);

%% Piece selection
while 1
    sel = menu('Which piece?',pieces.name,'done');
    if sel == size(pieces,2)+1
        break;
    end

    motor = [corner(1)+side, corner(2)+side]; % by pixel location

    % origin at opposite corner
    x = motorLoc(1)-pieces(sel).centroid(1);
    y = motorLoc(2)-pieces(sel).centroid(2);

    angle = -atand(x/y);
    
    fprintf('%s:\n',pieces(sel).name{1});
    fprintf('Angle = %0.2f\n\n',angle);
    
    % move motor
    if connected
        tg.setparam(tg.getparamid('myVar','Value'),angle)
    end
end

if connected
    tg.setparam(tg.getparamid('myVar','Value'),0)
end

tg.stop;