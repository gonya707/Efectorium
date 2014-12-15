function r = genericFilter(x, fs, f, n, mode)
% function r = genericFilter(x, fs, f, n)
%
%   Filters the input signal  frequency.
%
%   Input parameters:
%       x -> Original signal
%       fs -> Sampling frequency
%       f -> filter's cuttoff frequency
%       n -> filter's order
%       mode -> Filter's mode. Possible values are 'LowPass' or 'HighPass'

    if(n ~= round(n) || n <= 0 || 1 ~= numel(n))
        error('Filter order (4th parameter) must be a natural, non-zero number.');
    end

end

