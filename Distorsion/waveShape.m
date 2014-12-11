%function r = waveShape(x, ranges, factor)
	
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