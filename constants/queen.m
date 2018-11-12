function ret = queen(varargin)
us = 9;
them = 10;

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