function r = medianFilter(x, T)
% function r = medianFilter(x, T)
%
% Applies a median value filter to the signal 
%
% Input parameters:
%   x -> Original unfiltered signal.
%   T -> Filter order
%
% Output parameters: 
%   r -> result. Filtered signal.

    L = length(x);
    r = zeros(L, 1);
    
    if (rem(round(T), 2) ~= 1)
        T = round(T) + 1;
    end
    
    marco = floor(T / 2);
    x = [zeros(1, marco) x' zeros(1, marco)]';
    
    first = marco + 1;
    last  = marco + S;
  
    for i = first : last
        segment = x(i - marco : i + marco);
        r(i - marco) = median(segment); 
    end
end