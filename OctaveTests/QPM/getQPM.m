function getQPM()
	
	%% TBD: call from testQPM with 'w' and 'p' for exhaustive testing
	% of percentage correct out of 2^(|w|+|p|) cases
	
	close all, clear all, clc
	
	qasm = 0;
	E = 2
	w = [0 0 0 0 1 1 1 1] %[0 0 0 1 1 0 1 0]
	p = [0 1] %[1 1]
	
	H = 1/sqrt(2)*[1 1;1 -1];
	X = [0 1;1 0];	
	N = size(w,2);
	M = size(p,2);
	s = ceil(log2(N-M));
	qb = s*M;
	
	% number of total qubits required is
	% Init		qb1 = s*M
	% Oracle		qb2 = qb1
		% C-Oracle	qb2 = qb1 + N
	% Grover		qb3 = 2*qb1-2
	
	
	% Encode consequetive states only
	psi = [1;zeros(2^qb-1,1)];
	for r = qb-1:-1:qb-s
		if qasm == 1 fprintf("\nh q%d",r); end
		psi = U1(H,r,psi);
	end
	for tmp = 0:M-2
		for r = qb-1-tmp*s:-1:qb-s-tmp*s
			if qasm == 1 fprintf("\nckx q%d,q%d",r,r-s); end
			psi = U_CkX(r,r-s,psi);
		end
		for r = qb-s-tmp*s:qb-1-tmp*s
			if qasm == 1 fprintf("\nx q%d",r); end
			psi = U1(X,r,psi);
			ck = r:-1:qb-s-tmp*s;
			for t = qb-2*s-tmp*s:r-s
				if qasm == 1 fprintf("\nckx q%s,q%d",sprintf("%d",ck),t); end
				psi = U_CkX(ck,t,psi);
			end		
			if qasm == 1 fprintf("\nx q%d",r); end
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
		if qasm == 1 fprintf("\nQ%d q%s",p(k+1),sprintf("%d",[qb-k*s-1:-1:qb-(k+1)*s])); end
		Q = kron(eye(2^(s*k)),kron(Qf(:,:,p(k+1)+1),eye(2^(s*(M-1-k)))));
		psi = Q*psi;	
		% Grover Amplitude Amplification Gate : Inversion about Mean := {psi = mean(psi) - psi;}
		for r = 0:qb-1
			if qasm == 1 fprintf("\nh q%d",r); end
			psi = U1(H,r,psi);
			if qasm == 1 fprintf("\nx q%d",r); end
			psi = U1(X,r,psi);
		end
		if qasm == 1 fprintf("\nh q%d",0); end
		psi = U1(H,0,psi);
		if qasm == 1 fprintf("\nckx q%s,q%d",sprintf("%d",[qb-1:-1:1]),0); end
		psi = U_CkX([qb-1:-1:1],0,psi);
		if qasm == 1 fprintf("\nh q%d",0); end
		psi = U1(H,0,psi);
		for r = qb-1:-1:0
			if qasm == 1 fprintf("\nx q%d",r); end
			psi = U1(X,r,psi);
			if qasm == 1 fprintf("\nh q%d",r); end
			psi = U1(H,r,psi);
		end
	end
	plot(psi,'.b');
	
	% Measure first component
	figure(2)
	hold on
	if qasm == 1 fprintf("\n"); end
	amp = psi.^2;
	plot(amp,'.b');
	i = find(amp == max(amp));
	floor(i/(2^s))'
	plot([i'; i'], [0; 1]','-k')
	
endfunction