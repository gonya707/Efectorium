function r = ampdB(x, dB)
% function r = ampdB(x, dB)
%
% Amplifies the input signal.
%
% Input parameters:
%   x -> original signal.
%   dB -> decibels
%
% Output parameters: 
%   r -> result. Aplified signal.

		factor = pow(10, db / 20);
		r = factor * x;

end