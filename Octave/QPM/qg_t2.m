function getQPM()
	close all, clear all, clc
	E = 2
	w = [0 0 0 1 1 0 1 0]
	p = [1 1]
	H = 1/sqrt(2)*[1 1;1 -1];
	X = [0 1;1 0];	
	N = size(w,2);
	M = size(p,2);
	s = ceil(log2(N-M));
	qb = s*M;
	% Encode consequetive states only
	psi = [1;zeros(2^qb-1,1)];
	for r = qb-1:-1:qb-s
		psi = U1(H,r,psi);
	end
	for tmp = 0:M-2
		for r = qb-1-tmp*s:-1:qb-s-tmp*s
			psi = U_CkX(r,r-s,psi);
		end
		for r = qb-s-tmp*s:qb-1-tmp*s
			psi = U1(X,r,psi);
			ck = r:-1:qb-s-tmp*s;
			for t = qb-2*s-tmp*s:r-s
				psi = U_CkX(ck,t,psi);
			end		
			psi = U1(X,r,psi);
		end
	end
	plot(psi,'+r');
	axis([1 2^(s*M) -1 1])
	hold on
	Qf = zeros(N,N,E);	
	for sgma = 0:E-1
		Qf(:,:,sgma+1) = PrepBfOracle(w == sgma,s);
	end
	for k = 0:M-1
		% Conditional Oracle Call
		Q = kron(eye(2^(s*k)),kron(Qf(:,:,p(k+1)+1),eye(2^(s*(M-1-k)))));
		psi = Q*psi;	
		% Grover Amplitude Amplification Gate : Inversion about Mean := {psi = mean(psi) - psi;}
		for r = 0:qb-1
			psi = U1(H,r,psi);
			psi = U1(X,r,psi);
		end
		psi = U1(H,0,psi);
		psi = U_CkX([qb-1:-1:1],0,psi);
		psi = U1(H,0,psi);
		for r = qb-1:-1:0
			psi = U1(X,r,psi);
			psi = U1(H,r,psi);
		end
	end
	plot(psi,'.b');
	
	% Measure first component
	i = find(psi == max(psi));
	floor(i/(2^s))'
	plot([i'; i'], [-1; 1]','-k')
	
endfunction