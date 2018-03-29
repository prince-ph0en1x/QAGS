function testQPM()
	
	close all
	clear all
	clc
	
	w = [0 1 1 0];
	N = 4;
	M = 2;
	p = [1 1];
	
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
	
	psi = kron(psi0,1/sqrt(2)*[1 -1]');	% if |b> = |->
	plot(psi,'g')
	hold on
	
	f0_125 = 1 - kron(w,ones(1,4));
	f0_345 = 1 - kron(ones(1,4),w);
	f1_125 = kron(w,ones(1,4));
	f1_345 = kron(ones(1,4),w);
	
	Q0_125 = makeQf(f0_125);
	Q0_345 = makeQf(f0_345);
	Q1_125 = makeQf(f1_125);
	Q1_345 = makeQf(f1_345);
	
	D = -0.5*[1 -1 -1 -1; -1 1 -1 -1; -1 -1 1 -1; -1 -1 -1 1];
	D_12 = kron(D,eye(8));
	D_34 = kron(eye(4),kron(D,eye(2)));
	
	if p(1) == 0
		psi = Q0_125*psi;
	else
		psi = Q1_125*psi;
	end
	psi = D_12*psi;
	if p(2) == 0
		psi = Q0_345*psi;
	else
		psi = Q1_345*psi;
	end
%	psi = D_34*psi;
	psi = D_12*psi;
	plot(psi,'or')
	
	newstate = zeros(4,1);
	for i = 1:4
		newstate(i) = (sum(psi((i-1)*8+1:i*8).^2));
	end
	plot(kron(newstate,ones(8,1)),'-b')
	axis([1 32 -1 1])
	
endfunction