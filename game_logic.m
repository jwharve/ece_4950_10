%% Setup
% 8 squares
clearvars; close all; clc;
addpath('./constants')

global numPieces;
global numSquares;

numPieces = 6;
numSquares = 8;

board = struct('piece',nan(6,6),'possible',nan(numSquares,numSquares,numPieces*2));% us then them


%%

board.piece(3,3)= rook(us);
board.piece(3,4)= rook(them);
board.piece(3,6)= rook(them);

[locX, locY] = find(~isnan(board.piece));

for ii = 1:size(locX,1)
    board = genPossible(board,locX(ii),locY(ii));
end

dispPossible(board);

%% Cleanup
rmpath('./constants')



function board_ret = genPossible(board, i_x, i_y)
global numSquares;

piece = board.piece(i_x,i_y);

if any(piece == bishop)
    for ii = 1:i_x-1
        if (i_y-ii < 1) || ~isnan(board.piece(i_x-ii,i_y-ii))
            break;
        end
        board.possible(i_x-ii,i_y-ii,piece) = 1;
    end
    for jj = 1:numSquares-i_x
        if (i_y-ii > numSquares) || ~isnan(board.piece(i_x+ii,i_y+ii))
            break;
        end
        board.possible(i_x+ii,i_y+ii,piece) = 1;
    end
elseif any(piece == king)
    
elseif any(piece == knight)
    
elseif any(piece == pawn)
    
elseif any(piece == queen)
    
elseif any(piece == rook)
    
end

board_ret = board;
end

function [] = dispPossible(board)
global numSquares;
global numPieces;

square_size = ceil(sqrt(numPieces));

figure; grid on; hold on;

for ii = 0:numSquares
    plot([ii ii]*square_size,[0 numSquares*square_size]);
end

for ii = 0:numSquares
    plot([0 numSquares*square_size],[ii ii]*square_size);
end

for ii = 1:numSquares
    for jj = 1:numSquares
        base = square_size*([ii jj]-1) + [1 1];
        poss = find(~isnan(board.possible(ii,jj,:)));
        for kk = 1:size(poss,1)
            x = mod(poss(kk)-1,square_size);
            y = floor((poss(kk)-1)/square_size);
            plot(base + [x y])
        end
    end
end

end