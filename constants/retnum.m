function [type, team] = retnum(in)

if strcmpi(in,'User bishop')
    type = bishop;
    team = us;
elseif strcmpi(in,'Opponent bishop')
    type = bishop;
    team = them;
elseif strcmpi(in,'User king')
    type = king;
    team = us;
elseif strcmpi(in,'Opponent king')
    type = king;
    team = them;
elseif strcmpi(in,'User knight')
    type = knight;
    team = us;
elseif strcmpi(in,'Opponent knight')
    type = knight;
    team = them;
elseif strcmpi(in,'User pawn')
    type = pawn;
    team = us;
elseif strcmpi(in,'Opponent pawn')
    type = pawn;
    team = them;
elseif strcmpi(in,'User queen')
    type = queen;
    team = us;
elseif strcmpi(in,'Opponent queen')
    type = queen;
    team = them;
elseif strcmpi(in,'User rook')
    type = rook;
    team = us;
elseif strcmpi(in,'Opponent rook')
    type = rook;
    team = them;
else
    type = 1;
end

end

