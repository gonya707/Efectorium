function r = makeStereo(x, y, fx, fy)
% function r = makeStereo(x, y, fx, fy)
%
%		Mix two signals into a single stereo matrix. 
%
% Input parameters:
%   x -> audio signal. This one will be assigned to L (left channel).
%   y -> audio signal. R (right channel).
%   fx -> Left channel amplitude matrix. This one must have the same length as 'x'.
%   fy -> Right channel amplitude matrix. Same length as 'y'
% Output parameters
%   r -> result. It will be trimmed to fit the shortest of the input signals.

	Lx = length(x);
	Ly = length(y);
	
	if (Lx ~= length(fx) || Ly ~= length(fy))
		error('Audio input and amplitude matrixes must be the same length.');
	end
	
	r = zeros(min([Lx Ly]), 2);
	
	r(:, 1) = x .* fx;
	r(:, 2) = y .* fy;
	
end