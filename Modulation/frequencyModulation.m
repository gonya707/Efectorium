function r = frequencyModulation(x, fc, carrier)
% function r = frequencyModulation(x, fc, carrier)
%
% Frequency-modulates the given signal 
%
% Input parameters:
%   x -> the original signal
%   fc -> carrier frequency
%   carrier -> carrier waveform. Standard values 'sine', 'saw', 'ramp', 'triangle' and 'square'. Arbitrary waveforms (one cycle) can be given on this parameter.
% Output parameters
%   r -> result. Modulated signal.

		if (1 ~= numel(fc))
				error('Carrier frequency (2nd parameter) must be a single number.');
		end

		L = length(x);

		if (ischar(carrier) )
				if(carrier ~= 'sine' && carrier ~= 'saw' && carrier ~= 'square' && carrier ~= 'triangle' && carrier ~= 'ramp')
						error('Carrier (3rd parameter) must be a string containing one of the supported waveforms: sine, square, saw, ramp or triangle.');
				else
						switch (carrier)
								case 'sine'
																
								case 'square'
								
								case 'saw'
								
								case 'ramp'
								
								case 'triangle'
						
						
						
						
						end
				end
		
		else
				%arbitrary waveform
		
		end

		
		
end
end