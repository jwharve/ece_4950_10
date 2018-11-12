function ret = knight(varargin)
us = 5;
them = 6;

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