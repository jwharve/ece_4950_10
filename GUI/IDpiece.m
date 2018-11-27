function ret = IDpiece(str)
if str == "User King"
    ret = king(us);
elseif str == "User Queen"
    ret = queen(us);
elseif str == "User Bishop"
    ret = bishop(us);
elseif str == "User Knight"
    ret = knight(us);
elseif str == "User Rook"
    ret = rook(us);
elseif str == "User Pawn"
    ret = pawn(us);
elseif str == "Opponent King"
    ret = king(them);
elseif str == "Opponent Queen"
    ret = queen(them);
elseif str == "Opponent Bishop"
    ret = bishop(them);
elseif str == "Opponent Knight"
    ret = knight(them);
elseif str == "Opponent Rook"
    ret = rook(them);
elseif str == "Opponent Pawn"
    ret = pawn(them);
end    