function [ret] = present(board, piece)

ind = find(~isnan(board.possible(:,:,piece)),1);

if isempty(ind)
    ret = 0;
else
    ret = 1;
end

end

