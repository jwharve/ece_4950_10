% takes the board.possible 8x8 matrix and
% returns a list of coordinates (X,Y)
function ret = possibleCoord(GB)
k=1;
for i=1:8
    for j=1:8
        if ~isnan(GB(i,j))  
            ret(k,1)= i;
            ret(k,2)= j;
            k=k+1;
        end
    end
end