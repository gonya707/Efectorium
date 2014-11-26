function r = blur(x, T)
% function r = blursound(x, T)
%
% Blurs the signal. 
%
% Input parameters:
%   x -> original, un-blurred signal. This is the same effect as a low-pass
%       digital filter with 10dB between main and secondary lobes.
%   T -> Filter order
%
% Output parameters: 
%   r -> result. Blurred signal.

    f = ones(T, 1) / T;
    r = conv(x, f, 'same');
end