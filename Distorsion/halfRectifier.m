function r = halfRectifier(x)
% function r = halfRectifier(x)
%
% Applies a half rectification to the input signal, i.e. Negative values
%   turn to zero while positive values remains the same.
%
% Input parameters:
%   x -> original, un-rectified signal.
%
% Output parameters: 
%   r -> result. Rectified signal.

    x(x < 0) = 0;
    r = x - mean (x);
end