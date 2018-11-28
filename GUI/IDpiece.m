function ret = IDpiece(id)
if id == king(us)
    ret = "User King";
elseif id == queen(us)
    ret = "User Queen";
elseif id == bishop(us)
    ret = "User Bishop";
elseif id == knight(us)
    ret ="User Bishop";
elseif id == rook(us)
    ret = "User Rook";
elseif id ==  pawn(us)
    ret = "User Pawn";
elseif id ==  king(them)
    ret = "Opponent King";
elseif id == queen(them)
    ret = "Opponent Queen";
elseif id == bishop(them)
    ret = "Opponent Bishop";
elseif id ==  knight(them)
    "Opponent Knight";
elseif id == rook(them)
    ret = "Opponent Rook";
elseif id == pawn(them)
    ret = "Opponent Pawn";
end    