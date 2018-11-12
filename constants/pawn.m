function ret = pawn(varargin)
us = 7;
them = 8;

if nargin ~= 1
    ret = [us; them];
else
    if varargin{1} == 1
        ret = us;
    else
        ret = them;
    end
end

end