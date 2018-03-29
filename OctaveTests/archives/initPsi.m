function psi0 = initPsi(N,M)
	s = log2(N);
	qb = s*M;
	psi0 = zeros(2^qb,1);
	for i = 0:N-1
		jj = "";
		for j = 0:M-1
			if i+j > N-1
				jj = strcat(jj,dec2bin(N-1,s));
			else
				jj = strcat(jj,dec2bin(i+j,s));
			end
		end
		psi0(bin2dec(jj)+1) = 1/sqrt(N);
	end
%	psi0 = kron(psi0,[1 0]');			% if |b> = |0>
	psi0 = kron(psi0,1/sqrt(2)*[1 -1]');	% if |b> = |->
endfunction