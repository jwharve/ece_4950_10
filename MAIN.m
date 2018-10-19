%% setup

clearvars -except tg cam; close all; clc;

connected = 0; % set to 0 if not connected to Q4 board

motorLoc = [1 1]; % position of the motor in "pixels"

if connected
    if ~exist('tg') % check to see if the target is already built
        rtwbuild('proj3');
    end
    % load and start model
    tg.load('proj3');
    tg.start;
end

if 1 % I just added this so I could skip the menu
    new = menu('New Pictures?','Yes','No');
else
    new = 2;
end

if new ~= 2 % if you want to take a new picture
    % check to make sure that the webcam is plugged in
    if isempty(find(strcmp(webcamlist,'HP USB Webcam'),1))
        fprintf('HP USB Webcam not connected');
        return;
    end

    % load up the webcam if it doesn't already exist
    if ~exist('cam')
        cam =  webcam('HP USB Webcam');
    end

    % open preview
    preview(cam);
    
    % capture image with pieces
    menu('Image with pieces','capture');
    with = snapshot(cam);
    
    % capture image without pieces
    menu('Image without pieces','capture');
    without = snapshot(cam);
    
    % close preview
    closePreview(cam);
    
    % save the pictures
    t = clock;
    name = sprintf('pics_%02.0f_%02.0f_%02.0f_%02.0f',t(2:5));
    save(name,'with','without');
else % if you want to use previous pictures
    % load the last picture by timestamp
    pics = ls('pics_*.mat');
    load(pics(end-2,:));
end

%% subtraction
redImg = without(:,:,1) - with(:,:,1);
greenImg = without(:,:,2) - with(:,:,2);
blueImg = without(:,:,3) - with(:,:,3);

thresh = 0.2;

% threshold
subtractr = im2bw(redImg,thresh);
subtractg = im2bw(greenImg,thresh);
subtractb = im2bw(blueImg,thresh);

% overlay the images
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

di1 = strel('diamond',1);
di2 = strel('diamond',2);
di3 = strel('diamond',3);
di4 = strel('diamond',4);

% erode and dilate
img = pic;
imshow(img);
pause(0.5);

img = imerode(img, di2);
imshow(img)
pause(0.5);

img = imerode(img, di2);
img = imdilate(img, di3);
imshow(img)
pause(0.5);

imshow(img)
pause(0.5);

% display the original and processed
imshowpair(with,img,'montage');

%% recognize
bwconn = bwconncomp(img);
props = regionprops(bwconn);

hold on;
numPieces = 0;
for ii = 1:size(props,1)        
    if props(ii).Area > 20
        numPieces = numPieces + 1;
        center = props(ii).Centroid;

        %get shape
        if props(ii).Area < 210
            type = 'Triangle';
            marker = '^';
        elseif props(ii).Area < 530
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
        
        if r > 150 && r < 210 && g > 150 && g < 210 && b > 85 && b < 130
            color = 'y';
            colorName = 'Yellow';
        elseif r < 110 && g < 130 && b > 120
            color = 'b';
            colorName = 'Blue';
        elseif r > 130 && g < 100
            color = 'r';
            colorName = 'Red';
        else
            color = 'g';
            colorName = 'Green';
        end
        
        % plot and print
        plot(center(1),center(2),'marker',marker,'MarkerFaceColor',color,'MarkerEdgeColor',color)
        fprintf('%s detected at pixel %0.0f, %0.0f\n',type,center(1),center(2));
        
        % update pieces
        pieces(numPieces).name = {[colorName ' ' type]};
        pieces(numPieces).centroid = round(props(ii).Centroid);
    end
end

fprintf('Detected %0.0f pieces\n',numPieces);

%% Piece selection
while 1
    sel = menu('Which piece?',pieces.name,'done');
    if sel == size(pieces,2)+1 % if they choose 'none', exit
        break;
    end

    % get distances for angle
    x = motorLoc(1)-pieces(sel).centroid(1);
    y = motorLoc(2)-pieces(sel).centroid(2);

    % calculate angle
    angle = -atand(x/y);
    
    % print selection and angle
    fprintf('%s:\n',pieces(sel).name{1});
    fprintf('Angle = %0.2f\n\n',angle);
    
    % move motor
    if connected
        tg.setparam(tg.getparamid('myVar','Value'),angle)
    end
end

% move back to 0, then stop
if connected
    tg.setparam(tg.getparamid('myVar','Value'),0)
    pause(1);
    tg.stop;
end