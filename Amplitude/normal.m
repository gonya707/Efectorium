function r = normal(x)
% function r = normal(x)
%
% Normalizes the signal, i.e. adjust the sample values between -1 and 1.
%
% Input parameters:
%   x -> original, un-normalized signal.
%
% Output parameters: 
%   r -> result. Normalized signal.
%
% TODO: matrix compatibility

    r = x / max(abs(x));
end