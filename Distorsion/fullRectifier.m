function r = fullRectifier(x)
% function r = fullRectifier(x)
%
% Applies a full rectification to the input signal, i.e. Negative values
%   turn positive and positive values remains the same.
%
% Input parameters:
%   x -> original, un-rectified signal.
%
% Output parameters: 
%   r -> result. Rectified signal.

    x = abs(x);
    r = x - mean (x);
end