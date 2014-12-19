function r = deleteNoise(x, treshold, window)
% function r = deleteNoise(x, treshold)
%
%   Delete all the signal sections with adjacent samples bellow a given
%   threshold. centerBias() should be used before call this function.
%
% Input parameters:
%   x -> the original signal.
%   treshold -> the minimal signal value to be considered noise.
%   window -> the number of adjacent samples of noise.
% Output parameters
%   r -> result.

x = data;
treshold = 0.03;
window = 5;

L = length(x);
r = zeros(L, 1);

% TODO needs optimization
for i = 1 : L - window
    if (sum( abs(x(i : i + window)) > treshold) ~= 0)
        r(i) = x(i);
    end
end

end