cc;
global board
global bot

bot.corner_loc = [191 92];

bot.boardWidth = 365;
squareWidth = bot.boardWidth/numSquares;
bot.motor_loc = bot.corner_loc-2.5*squareWidth;

piece = struct('type',NaN,'team',NaN,'num',NaN,'angle',NaN,'dist',NaN,'possible',nan(numSquares,numSquares));

board = repmat(piece,numSquares,numSquares);


% gui.encodedPieces = {
% 'User bishop'       bishop
% 'Opponent bishop'   bishop
% 'User king'         king
% 'Opponent king'     king
% 'User knight'       knight
% 'Opponent knight'   knight
% 'User pawn'         pawn
% 'Opponent pawn'     pawn
% 'User queen'        queen
% 'Opponent queen'    queen
% 'User rook'         rook
% 'Opponent rook'     rook
% };
gui.encodedPieces = {
'Green Circle'      'User bishop'
'Red Circle'        'Opponent bishop'
'Yellow Circle'     'User king'
'Blue Circle'       'Opponent king'
'Green Square'      'User knight'
'Red Square'        'Opponent knight'
'Yellow Square'     'User pawn'
'Blue Square'       'Opponent pawn'
'Green Triangle'    'User queen'
'Red Triangle'      'Opponent queen'
'Yellow Triangle'   'User rook'
'Blue Triangle'     'Opponent rook'
};

improc(gui);