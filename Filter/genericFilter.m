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
%       mode -> Filter's mode. Possible values are 'LowPass' or 'HighPass'.
%			Output parameters:
%					r -> Result. Filtered signal.
%

    if(fs <= 0)
        error('Signal sampling frequency (2nd parameter) must be a positive number.');
    end
    
    if(f <= 0 || f > fs)
        error('Filter cuttoff frequency (3rd parameter) must be a positive number higher than the signal sampling frequency (2nd parameter).');
    end

    if(n ~= round(n) || n <= 0 || 1 ~= numel(n))
        error('Filter order (4th parameter) must be a natural, non-zero number.');
    end
    
    wn = f / fs;
    
    switch mode
        case 'LowPass'
            B = fir1(n, wn, 'low');
        case 'HigPass'
            B = fir1(n, wn, 'high');
        otherwise
            error('Mode (5th parameter) must be a string containing LowPass or HighPass.');        
    end
    
    r = filter(B, 1, x);   

end

