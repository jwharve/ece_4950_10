%return the coordinates of the closest possible capture
function ret = captureOpp(X_them,Y_them)
global board;
team = reshape([board.team],numSquares,numSquares);
[X_us, Y_us] = find(team == us);

k=1;
for i=1:size(X_us,1)
    for j=1:size(Y_us,1)
        possible = board(X_us(i),Y_us(j)).possible;
        if ~isnan(possible(X_them,Y_them))   
            origin(k,1) = X_us(i); 
            origin(k,2) = Y_us(j);
            k=k+1;
        end
    end
end
k=k-1;
if k==0 %no possible captured
    ret = 0;
else
    for i=1:k
        dist(i) = sqrt((origin(i,1)-X_them)^2 + (origin(i,2)-Y_them)^2);
    end
    [~,min_indx] = min(dist);
    ret = origin(min_indx,:);
end


