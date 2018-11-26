function [num] = retnum(in)

if strcmpi(in,'User bishop')
    num = bishop(us);
elseif strcmpi(in,'Opponent bishop')
    num = bishop(them);
elseif strcmpi(in,'User king')
    num = king(us);
elseif strcmpi(in,'Opponent king')
    num = king(them);
elseif strcmpi(in,'User knight')
    num = knight(us);
elseif strcmpi(in,'Opponent knight')
    num = knight(them);
elseif strcmpi(in,'User pawn')
    num = pawn(us);
elseif strcmpi(in,'Opponent pawn')
    num = pawn(them);
elseif strcmpi(in,'User queen')
    num = queen(us);
elseif strcmpi(in,'Opponent queen')
    num = queen(them);
elseif strcmpi(in,'User rook')
    num = rook(us);
elseif strcmpi(in,'Opponent rook')
    num = rook(them);
else
    num = 1;
end

end

