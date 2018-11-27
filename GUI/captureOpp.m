%return the coordinates of the closest possible capture
function ret = captureOpp(board)

team = reshape([board.team],numSquares,numSquares);
[X_us, Y_us] = find(team == us);
[X_them, Y_them] = find(team == them);

k=1;
for i=1:size(X_us,1)
    for j=1:size(Y_us,1)
        possible = board(X_us(i),Y_us(j)).possible;
        [X_pos, Y_pos] = find(~isnan(possible));
        for ii=1:length(X_pos,1)
            for jj=1:length(X_them,1)
                if X_pos(ii)==X_them(jj) && Y_pos(ii)==Y_them(jj)
                        origin(k,1) = X_us(i); 
                        origin(k,2) = Y_us(j);
                        desired(k,1) = X_pos(ii);
                        desired(k,2) = Y_pos(jj);
                        k=k+1;
                end
            end
        end
    end
end
k=k-1;
if k==0 %no possible captured
    ret = 0;
else
    for i=1:k
        dist(k) = sqrt((origin(k,1)-desired(k,1))^2 + (origin(k,2)-desired(k,2))^2);
    end
    min_indx = find(disk == min(dist));
    ret = desired(min_indx,:);
end


