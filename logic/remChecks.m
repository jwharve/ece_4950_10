function remChecks
global board
backup = board;

[idx, idy] = find(~isnan(reshape([board.type],numSquares,numSquares)) & reshape([board.team],numSquares,numSquares) == us);

if isempty(idx)
    x1 = NaN;
    y1 = NaN;
    x2 = NaN;
    y2 = NaN;
    board = backup;
    return;
end

good = 0;

for ii = 1:size(idx,1) % cycle through pieces
    board = backup;
    pos = board(idx(ii),idy(ii)).possible;
    
    [mx, my] = find(~isnan(pos));
    
    type = board(idx(ii),idy(ii)).type;
    team = board(idx(ii),idy(ii)).team;
    
    if isempty(mx)
        continue;
    end
    
    for jj = 1:size(mx,1) % cycle through moves
        board = backup;
        board(idx(ii),idy(ii)).type = NaN;
        board(idx(ii),idy(ii)).team = NaN;
        board(mx(jj),my(jj)).type = type;
        board(mx(jj),my(jj)).team = team;
        
        if isCheck(us) == 1
            board = backup;
            board(idx(ii),idy(ii)).possible(mx(jj),my(jj)) = NaN;
            backup = board;
        end
    end
end


board = backup;
end














% function remChecks
% global board;
% 
% ki = find([board.type] == king);
% 
% if isempty(ki)
%     return;
% end
% 
% mat = zeros(numSquares,numSquares);
% 
% for piece = ki
%     base = zeros(numSquares,numSquares);
%     for ii = 1:numSquares
%         for jj = 1:numSquares
%             if board(ii,jj).team ~= board(piece).team
%                 mat = board(ii,jj).possible;
%                 mat(isnan(mat)) = 0;
%                 base = or(base,mat);
%             end
%         end
%     end
%     mat2 = board(piece).possible;
%     mat2(isnan(mat2)) = 0;
%     idx = and(mat,mat2);
%     board(piece).possible(idx) = NaN;
% end
% 
% 
% % idx_us = find(~isnan(board.possible(:,:,king(us))) & any(floor((board.possible(:,:,:)-1)/numPieces)+1 == them,3));
% % [a, b] = ind2sub([numSquares numSquares],idx_us);
% % board.possible(a,b,king(us)) = NaN;
% % 
% % idx_them = find(~isnan(board.possible(:,:,king(them))) & any(floor((board.possible(:,:,:)-1)/numPieces)+1 == us,3));
% % [a, b] = ind2sub([numSquares numSquares],idx_them);
% % board.possible(a,b,king(them)) = NaN;
% 
% end