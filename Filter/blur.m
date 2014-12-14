function r = blur(x, T)
% function r = blursound(x, T)
%
% Blurs the signal. This has the same effect as a low-pass
%       digital filter with 10dB between main and secondary lobes.
%
% Input parameters:
%   x -> Original, un-blurred signal. 
%   T -> Filter order
%
% Output parameters: 
%   r -> result. Blurred signal.

    if(1 ~= numel(T))
       error('Filter order (2nd input parameter) must be a single number.');
    end

    f = ones(T, 1) / T;
    r = conv(x, f, 'same');
end