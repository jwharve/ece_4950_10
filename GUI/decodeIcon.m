function icon = decodeIcon(list,piece)
    for i=1:size(list,1)
        if list{i,2} == piece
            charVect = char(list{i,1});
            charVect(1) = lower(charVect(1));
            icon= [charVect(find(~isspace(charVect))) '.png'];
        end
    end
end
