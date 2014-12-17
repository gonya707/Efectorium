function r = addNoise(x, w)
% function r = addNoise(x, w)
%
%   Adds white gaussian noise to the signal.
%
% Input parameters:
%   x -> the original signal
%   w -> Noise decibel level [dBW]
% Output parameters
%   r -> result.

L = length(x);
r = x + wgn(1, L, w);

end