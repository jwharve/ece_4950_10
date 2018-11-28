function ret = IDpiece(X,Y)
global board;
team = board(X,Y).team;
type = board(X,Y).type;
if team == us && type == king 
    ret = "User King";
elseif team == us && type == queen
    ret = "User Queen";
elseif team == us && type == bishop
    ret = "User Bishop";
elseif team == us && type == knight
    ret ="User Bishop";
elseif team == us && type == rook
    ret = "User Rook";
elseif team == us && type == pawn
    ret = "User Pawn";
elseif team == them && type == king
    ret = "Opponent King";
elseif team == them && type == queen
    ret = "Opponent Queen";
elseif team == them && type == bishop
    ret = "Opponent Bishop";
elseif team == them && type == knight
    "Opponent Knight";
elseif team == them && type == rook
    ret = "Opponent Rook";
elseif team == them && type == pawn
    ret = "Opponent Pawn";
else 
    ret = "";
end    