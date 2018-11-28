function improc(gui)
global board;
global bot;

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

%% setup

connected = 0; % set to 0 if not connected to Q4 board

boardWidth = 365;
squareWidth = boardWidth/numSquares;

new = 0; % 1 means new picture

if new == 1 % if you want to take a new picture
    % check to make sure that the webcam is plugged in
    if isempty(find(strcmpi(webcamlist,'HP USB Webcam'),1))
        fprintf('HP USB Webcam not connected');
        return;
    end

    % load up the webcam if it doesn't already exist
    if ~exist('cam')
        cam =  webcam('HP USB Webcam');
    end

    % open preview
    preview(cam);
    
    % capture image without pieces
    menu('Image without pieces','capture');
    without = snapshot(cam);
    
    % capture image with pieces
    menu('Image with pieces','capture');
    with = snapshot(cam);
    
    % close preview
    closePreview(cam);
    
    % save the pictures
    t = clock;
    name = sprintf('pics_%02.0f_%02.0f_%02.0f_%02.0f',t(2:5));
    save(['saved_pics/' name],'with','without');
else % if you want to use previous pictures
    % load the last picture by timestamp
    pics = ls('saved_pics/pics_*.mat');
    load(['saved_pics/' pics(end,:)],'with','without');
end

%% subtraction
x = bot.corner_loc(2);
y = bot.corner_loc(1);
withc = with(x:x+boardWidth,y:y+boardWidth,:);

withsv = rgb2hsv(withc);

h = withsv(:,:,1);
s = withsv(:,:,2);
v = withsv(:,:,3);

hl = ~im2bw(h,0.25);
hh = im2bw(h,0.85);

vl = ~im2bw(v,0.6);

sh = im2bw(s,0.25);
sh = imdilate(sh,se3);
% imshow(sh);

pic = (hl | hh | vl) & sh;

orig = pic;
img = pic;
imshow(pic)
pause(2);
img = imdilate(img,di3);
img = imerode(img,di3);
img = imdilate(img,di2);
imshow(img);
keyboard
%% erode/dilate


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
    if props(ii).Area > 30
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
        
        x = pieces(numPieces).centroid(1) - bot.corner_loc(1);
        y = pieces(numPieces).centroid(2) - bot.corner_loc(2);
        xInd = floor(x/squareWidth) + 1;
        yInd = floor(y/squareWidth) + 1;
        
        if (xInd > numSquares || yInd > numSquares)
            fprintf('Piece off of side of board');
            continue;
        end
        
        if color == 'r' && marker == '^'
            ind = strcmpi(gui.encodedPieces(:,1),'Red Triangle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'r' && marker == 's'
            ind = strcmpi(gui.encodedPieces(:,1),'Red Square');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'r' && marker == 'o'
            ind = strcmpi(gui.encodedPieces(:,1),'Red Circle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'g' && marker == '^'
            ind = strcmpi(gui.encodedPieces(:,1),'Green Triangle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'g' && marker == 's'
            ind = strcmpi(gui.encodedPieces(:,1),'Green Square');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'g' && marker == 'o'
            ind = strcmpi(gui.encodedPieces(:,1),'Green Circle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'b' && marker == '^'
            ind = strcmpi(gui.encodedPieces(:,1),'Blue Triangle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'b' && marker == 's'
            ind = strcmpi(gui.encodedPieces(:,1),'Blue Square');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'b' && marker == 'o'
            ind = strcmpi(gui.encodedPieces(:,1),'Blue Circle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'y' && marker == '^'
            ind = strcmpi(gui.encodedPieces(:,1),'Yellow Triangle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'y' && marker == 's'
            ind = strcmpi(gui.encodedPieces(:,1),'Yellow Square');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'y' && marker == 'o'
            ind = strcmpi(gui.encodedPieces(:,1),'Yellow Circle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        end
        
        board(xInd,yInd).type = type;
        board(xInd,yInd).type = team;
        
        xa = bot.motor_loc(1)-pieces(sel).centroid(1);
        ya = pieces(sel).centroid(2)-bot.motor_loc(2);
        
        % calculate angle
        angle = atand(xa/ya);
        board(xInd,yInd).angle = angle;
        
        % calculate distance
        dist = sqrt(xa^2+ya^2);
        board(xInd,yInd).dist = dist;
    end
end

fprintf('Detected %0.0f pieces\n',numPieces);

board_ret = board;
end