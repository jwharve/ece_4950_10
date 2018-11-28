function move(x1, y1, x2, y2)
global board;
global bot;

if x2 == 0 && y2 == 0
    move_piece(board(x1,y1).angle,bot.p2s(board(x1,y1).dist),5,420);
    return;
end

if ~isnan(board(x2,y2).type)
    move_piece(board(x2,y2).angle,bot.p2s(board(x2,y2).dist),5,420);
end

squareWidth = bot.boardWidth/numSquares;



xdest = (x2-1)*squareWidth-bot.motor_loc(1);
ydest = (y2-1)*squareWidth-bot.motor_loc(2);
r_dest = sqrt(xdest^2+ydest^2);
theta_dest = atand(xdest/ydest);

move_piece(board(x1,y1).angle,bot.p2s(board(x1,y1).dist),theta_dest,bot.p2s(r_dest));

end

