cc;
global numSquares
global board
global bot

bot.corner_loc = [0 0];
bot.motor_loc = [0 0];


numSquares = 8;
numPieces = 6;

board = struct('piece',nan(numSquares,numSquares),'angle',nan(numSquares,numSquares),'dist',nan(numSquares,numSquares),'possible',nan(numSquares,numSquares,numPieces*2));% us then them


gui.encodedPieces = {
'User bishop'       bishop(us)
'Opponent bishop'   bishop(them)
'User king'         king(us)
'Opponent king'     king(them)
'User knight'       knight(us)
'Opponent knight'   knight(them)
'User pawn'         pawn(us)
'Opponent pawn'     pawn(them)
'User queen'        queen(us)
'Opponent queen'    queen(them)
'User rook'         rook(us)
'Opponent rook'     rook(them)
};

improc(gui);