function r = saturationDist(x, threshold)
% function r = saturationDist(x, threshold)
%
% Applies saturation distortion to the input signal.
%
% Input parameters:
%   x -> original, un-distorted signal.
%   threshold -> Threshold value for the distorted section of the signal.
%       All the result signal values will remain between -threshold and 
%       threshold.
%
% Output parameters: 
%   r -> result. Distorted signal.

    x(x > threshold) = threshold;
    x(x < -threshold) = -threshold;
    r = x;
end