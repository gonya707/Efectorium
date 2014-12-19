function r = centerBias(x)
% function r = centerBias(x)
%
%   Set the mean value to zero. This is useful for bad microphone
%   recordings, with a non zero offset level
%
% Input parameters:
%   x -> the original signal.
% Output parameters
%   r -> result.

    r = x = mean(x);


end