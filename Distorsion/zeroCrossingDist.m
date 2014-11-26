function r = zeroCrossingDist(x, threshold)
% function r = zeroCrossingDist(x, threshold)
%
% Applies zero crossing distortion to the input signal.
%
% Input parameters:
%   x -> original, un-distorted signal.
%   threshold -> Threshold value for the distorted section of the signal.
%       All the values above -threshold and bellow threshold will be 0 in
%       the result signal.
%
% Output parameters: 
%   r -> result. Distorted signal.

    x(abs(x) < threshold) = 0;
    r = x; 
end