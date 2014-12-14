function r = ampdB(x, dBel)
% function r = ampdB(x, dBel)
%
% Amplifies the input signal.
%
% Input parameters:
%   x -> original signal.
%   dBel -> decibels
%
% Output parameters: 
%   r -> result. Aplified signal.

    if(1 ~= numel(dBel))
       error('dBel (2nd input parameter) must be a single number.');
    end

	factor = power(10, dBel / 20);
	r = factor .* x;

end