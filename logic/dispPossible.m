function dispPossible
global numSquares;
global numPieces;
global board;

square_size = ceil(sqrt(numPieces));

figure(1); grid on; hold on;

% plot lines
for ii = 0:numSquares
    plot([ii ii]*square_size+1,[0 numSquares*square_size]+1,'k');
end
for ii = 0:numSquares
    plot([0 numSquares*square_size]+1,[ii ii]*square_size+1,'k');
end

% make ticks
ax = gca;
ticks = 1+square_size/2:square_size:1+square_size*(numSquares)+square_size/2;
ticks = [ticks-square_size/6 ticks+square_size/6];
ticks = sort(ticks);
ax.XTick = ticks;
ax.YTick = ticks;

% plot possibles
for ii = 1:numSquares
    for jj = 1:numSquares
        base = square_size*([ii jj]-1) + [1 1];
        poss = find(~isnan(board.possible(ii,jj,:)));
        for kk = 1:size(poss,1)
            p = mod(poss(kk)-1,numPieces)+1;
            x = mod(p-1,square_size)+1;
            y = floor((p-1)/square_size)+1;
            point = base + [x y] - [0.5 0.5];
            scatter(point(1),point(2),'k.');
        end
    end
end

end