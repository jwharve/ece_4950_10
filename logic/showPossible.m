function [ret] = showPossible(i_x, i_y)
global board;

thisPiece = board(i_x,i_y).possible;

thisPiece(isnan(thisPiece)) = 0;

ret = thisPiece;
end

