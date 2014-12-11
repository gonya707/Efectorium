%function r = waveShape(x, ranges, factor)
% function r = waveShape(x, ranges, factor)
%
% Transform some sections of the input wave by mutiplying factors to the original values
%
% Input parameters:
%   x -> original, unmodified signal.
%   ranges -> specifies the sections of the wave being altered. For example a ranges matrix like [0.1 0.4] will change only x values between 0.1 and 0.4, and all the other values will remain unaltered. Succesive rows of ranges will need aditional values on the factor matrix.
%		 factor -> factor of change on the values specified on the ranges matrix. The factor matrix must have the sae length as the number of ranges rows. 
%
% Output parameters: 
%   r -> result. Modified signal.
	
	%DEBUG
	ranges = [[0, 0.2]; [0.2, 0.5]; [-1, -0,5]];
	factor = [0.5, -0.8, -0.5];
	
	
	
	%%%%%%%
	
	[Ms Ns] = size(ranges);
	if (Ms == 2 || Ns == 2)
		if(Ns ~= 2)
			ranges = ranges';
		end
	else
		error('Malformed ranges matrix. It should be Mx2 or 2xN, being M or N any natural number.');
	end
	
	if (Ms ~= numel(factor))
		error('Factor matrix lenght must be the same as ranges matrix rows');
	end
	
	r = x;
	
	for (i = 1 : Ns)
		r = r(r > ranges(i,1) && r < ranges(i,2)) = factor(i) * r(r > ranges(i,1) && r < ranges(i,2)); 
	end

%end