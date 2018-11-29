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

squareWidth = bot.boardWidth/numSquares;

new = 1; % 1 means new picture

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
%     preview(cam);
    
    % capture image without pieces
%     menu('Image without pieces','capture');
%     without = snapshot(cam);
    
    % capture image with pieces
%     menu('Image with pieces','capture');
    with = snapshot(cam);
    
    % close preview
%     closePreview(cam);
    
    % save the pictures
    t = clock;
    name = sprintf('pics_%02.0f_%02.0f_%02.0f_%02.0f',t(2:5));
%     save(['saved_pics/' name],'with','without');
    save(['saved_pics/' name],'with');
else % if you want to use previous pictures
    % load the last picture by timestamp
    pics = ls('saved_pics/pics_*.mat');
    load(['saved_pics/' pics(end,:)],'with','without');
end

%% subtraction
x = bot.corner_loc(2);
y = bot.corner_loc(1);
withc = with(x:x+bot.boardWidth,y:y+bot.boardWidth,:);

withsv = rgb2hsv(withc);

h = withsv(:,:,1);
s = withsv(:,:,2);
v = withsv(:,:,3);

hl = ~im2bw(h,0.25);
hh = im2bw(h,0.85);

vl = ~im2bw(v,0.6);

sh = im2bw(s,0.20);
sh = imdilate(sh,se2);
sh = imerode(sh,di2);
sh = imdilate(sh,se2);

% imshow(sh);

vh = ~im2bw(v,0.52);

pic = ((hl | hh | vl) & sh) | vh;
pic = ((hl | hh | vl) & sh);

orig = pic;
img = pic;
imshow(pic)
pause(2);

%% erode/dilate

img = imdilate(img,se1);
imshow(img)
pause(1);
img = imerode(img,di2);
imshow(img)
pause(1);
% img = imdilate(img,se2);
% imshow(img)
% pause(1);



% img = imdilate(img,se1);
% imshow(img)
% pause(1);
% img = imdilate(img,se2);
% imshow(img)
% pause(1);
% img = imerode(img,di3);
% imshow(img)
% pause(1);
% img = imdilate(img,se2);
% imshow(img)
% pause(1);

% display the original and processed
imshowpair(withc,img,'montage');

%% recognize
bwconn = bwconncomp(img);
props = regionprops(bwconn);

hold on;
numPieces = 0;
for ii = 1:size(props,1)        
    if props(ii).Area > 60
        numPieces = numPieces + 1;
        center = props(ii).Centroid;

        ba = props(ii).BoundingBox(3)*props(ii).BoundingBox(4);
        
        p = props(ii).Area/ba;
        
        %get shape
        if props(ii).Area < 260
            stype = 'Triangle';
            marker = '^';
        elseif props(ii).Area < 475
            stype = 'Square';
            marker = 's';
        else
            stype = 'Circle';
            marker = 'o';
        end
        
        
        % get color
        a = round(props(ii).Centroid);
        row = a(1);
        col = a(2);
        try
            r = mean(mean(withc(col-5:col+5, row-5:row+5,1)));
            g = mean(mean(withc(col-5:col+5, row-5:row+5,2)));
            b = mean(mean(withc(col-5:col+5, row-5:row+5,3)));
        catch error
            continue;
        end
        
        if r > 150 && r < 210 && g > 150 && g < 210 && b > 85 && b < 150
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
        
        
        % update pieces
        pieces(numPieces).name = {[colorName ' ' stype]};
        pieces(numPieces).centroid = round(props(ii).Centroid);
        
        x = pieces(numPieces).centroid(1);
        y = pieces(numPieces).centroid(2);
        xInd = floor(x/squareWidth) + 1;
        yInd = floor(y/squareWidth) + 1;
        
        xInd = xInd;
        yInd = numSquares - yInd + 1;
        
        if (xInd > numSquares || yInd > numSquares)
            fprintf('Piece off of side of board');
            continue;
        end
        
        if color == 'r' && marker == '^'
            ind = strcmpi([gui.encodedPieces{:,1}],'Red Triangle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'r' && marker == 's'
            ind = strcmpi([gui.encodedPieces{:,1}],'Red Square');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'r' && marker == 'o'
            ind = strcmpi([gui.encodedPieces{:,1}],'Red Circle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'g' && marker == '^'
            ind = strcmpi([gui.encodedPieces{:,1}],'Green Triangle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'g' && marker == 's'
            ind = strcmpi([gui.encodedPieces{:,1}],'Green Square');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'g' && marker == 'o'
            ind = strcmpi([gui.encodedPieces{:,1}],'Green Circle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'b' && marker == '^'
            ind = strcmpi([gui.encodedPieces{:,1}],'Blue Triangle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'b' && marker == 's'
            ind = strcmpi([gui.encodedPieces{:,1}],'Blue Square');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'b' && marker == 'o'
            ind = strcmpi([gui.encodedPieces{:,1}],'Blue Circle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'y' && marker == '^'
            ind = strcmpi([gui.encodedPieces{:,1}],'Yellow Triangle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'y' && marker == 's'
            ind = strcmpi([gui.encodedPieces{:,1}],'Yellow Square');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        elseif color == 'y' && marker == 'o'
            ind = strcmpi([gui.encodedPieces{:,1}],'Yellow Circle');
            [type, team] = retnum(gui.encodedPieces(ind,2));
        end
        
%         fprintf('%s (%d,%d) - \t%0.0f\n',stype,xInd,yInd,props(ii).Area);
        
        fprintf('%s (%d,%d) - \tr-%0.0f\tg-%0.0f\tb-%0.0f\n',colorName,xInd,yInd,r,g,b);

        board(xInd,yInd).type = type;
        board(xInd,yInd).team = team;
        
        xa = x-bot.motor_loc(1);
        ya = y-bot.motor_loc(2);
        
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