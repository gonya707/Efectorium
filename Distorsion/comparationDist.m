function r = comparationDist(x)
% function r = comparationDist(x)
%
% Applies comparation distortion to the input signal. 
%
% Input parameters:
%   x -> original, un-distorted signal.
%
% Output parameters: 
%   r -> result. Distorted signal. The output values will stand between -1
%       and 1.

    r = double (x > 0) * 2 - 1;
end