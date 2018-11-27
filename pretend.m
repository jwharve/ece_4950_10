cc;
global board
global bot

bot.corner_loc = [0 0];
bot.motor_loc = [0 0];



piece = struct('type',NaN,'team',NaN,'num',NaN,'angle',NaN,'dist',NaN,'possible',nan(numSquares,numSquares));

board = repmat(piece,numSquares,numSquares);


gui.encodedPieces = {
'User bishop'       bishop
'Opponent bishop'   bishop
'User king'         king
'Opponent king'     king
'User knight'       knight
'Opponent knight'   knight
'User pawn'         pawn
'Opponent pawn'     pawn
'User queen'        queen
'Opponent queen'    queen
'User rook'         rook
'Opponent rook'     rook
};

improc(gui);