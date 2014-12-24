function r = delay(x, nTimes, magnitude)
% function r = delay(x, nTimes, magnitude)
%
% 
%
% Input parameters:
%   x -> the original signal
%   nTimes -> number of delayed replicas
%   magnitude -> amplitude factor. A magnitude 100 would mean the amplitude of the replica 1 second after is 100 times smaller than the original, being 1 same amplitude as the input signal.
% Output parameters
%   r -> result. This signal will be larger...[...]

	if(1 ~= numel(nTimes))
			error('nTimes must be a single number.');
	end

	if(1 ~= numel(magnitude))
			error('magnitude must be a single number.');
	end
	
	L = length(x);
	rep = zeros(nTimes, L)

	

end