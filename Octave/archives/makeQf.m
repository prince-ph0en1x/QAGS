function Qf = makeQf(f)
	fd = size(f,2);
	Qf = zeros(fd*2,fd*2);
	I = eye(2);
	X = [0 1; 1 0];
	for i = 0:fd-1
		ii = i*2+1;
		if f(i+1) == 0
			Qf(ii:ii+1,ii:ii+1) = I;
		else
			Qf(ii:ii+1,ii:ii+1) = X;
		end		
	end
endfunction