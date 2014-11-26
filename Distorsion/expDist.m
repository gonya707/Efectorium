function r = expDist(x)
% function r = expDist(x)
%
% Applies exponential distortion to the input signal, similar to the V-I
% relationship in a transistor operation.
%
% Input parameters:
%   x -> original, un-distorted signal.
%
% Output parameters: 
%   r -> result. Distorted signal.

    x = exp(x);
    x = x - mean (x);
    r = x;
end