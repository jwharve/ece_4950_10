function ret = rook(varargin)
us = 6;
them = 12;

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