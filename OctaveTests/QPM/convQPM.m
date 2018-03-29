function convQPM()
	
	close all, clear all, clc
	
	qasm = 0;
	E = 2
	w = [0 0 0 0 0 1 1 1]
	p = [0 1]
	
	H = 1/sqrt(2)*[1 1;1 -1];
	X = [0 1;1 0];	
	N = size(w,2);
	M = size(p,2);
	s = ceil(log2(N-M));
	qb = 2*s*M-2;
	anc = s*M;
	
	% Encode consequetive states only
	psi = [1;zeros(2^qb-1,1)];
	for r = 0:s-1
		if qasm == 1 fprintf("\nh q%d",r); end
		psi = U1(H,r,psi);
	end
	for Mi = 0:M-2
		for si = 0:s-1
			psi = U_CkX(Mi*s+si,Mi*s+s+si,anc,psi,qasm);
		end
		for si = 0:s-1
			if qasm == 1 fprintf("\nx q%d",Mi*s+s-1-si); end
			psi = U1(X,Mi*s+s-1-si,psi);
			ck = Mi*s+s-1:-1:Mi*s+s-1-si-1+1;
			for t = Mi*s+s+s-1:-1:Mi*s+s+s-1-si-1+1
				psi = U_CkX(ck,t,anc,psi,qasm);
			end	
			if qasm == 1 fprintf("\nx q%d",Mi*s+s-1-si); end
			psi = U1(X,Mi*s+s-1-si,psi);
		end
	end

	Qf = zeros(N,N,E);	
	for sgma = 0:E-1
		Qf(:,:,sgma+1) = PrepBfOracle(w == sgma,s);
	end

	plot(psi,'.b');
	axis([1 2^(s*M) -1 1])
	hold on
	fprintf("\n\n\n")
%	for i = 1:size(psi,1)
%		if psi(i) > 0.001
%			dec2bin(i-1,10)
%		end
%	end
	
	for k = 0:M-1
		% Conditional Oracle Call
%		if qasm == 1 fprintf("\nQ%d q%s",p(k+1),sprintf("%d",[k*s:(k+1)*s-1])); end
%		Qf(:,:,p(k+1)+1)
%		Q = kron(eye(2^(qb-(k+1)*s)),kron(Qf(:,:,p(k+1)+1),eye(2^(k*s))));
%		psi = Q*psi;	
		
		if k == 0
			% 000
			psi = U1(X,2,psi);
			psi = U1(X,1,psi);
			psi = U1(X,0,psi);
			psi = U1(H,2,psi);
			psi = U_CkX([0 1],2,anc,psi,qasm);
			psi = U1(H,2,psi);
			psi = U1(X,0,psi);
			psi = U1(X,1,psi);
			psi = U1(X,2,psi);
			% 100
			psi = U1(X,0,psi);
			psi = U1(X,1,psi);
			psi = U1(H,2,psi);
			psi = U_CkX([0 1],2,anc,psi,qasm);
			psi = U1(H,2,psi);
			psi = U1(X,1,psi);
			psi = U1(X,0,psi);
			% 010
			psi = U1(X,0,psi);
			psi = U1(X,2,psi);
			psi = U1(H,2,psi);
			psi = U_CkX([0 1],2,anc,psi,qasm);
			psi = U1(H,2,psi);
			psi = U1(X,0,psi);
			psi = U1(X,2,psi);
			% 110
			psi = U1(X,0,psi);
			psi = U1(H,2,psi);
			psi = U_CkX([0 1],2,anc,psi,qasm);
			psi = U1(H,2,psi);
			psi = U1(X,0,psi);
			% 001
			psi = U1(X,1,psi);
			psi = U1(X,2,psi);
			psi = U1(H,2,psi);
			psi = U_CkX([0 1],2,anc,psi,qasm);
			psi = U1(H,2,psi);
			psi = U1(X,2,psi);
			psi = U1(X,1,psi);
		end
		
		if k == 1
			% 101
			psi = U1(X,4,psi);
			psi = U1(H,5,psi);
			psi = U_CkX([3 4],5,anc,psi,qasm);
			psi = U1(H,5,psi);
			psi = U1(X,4,psi);
			% 011
			psi = U1(X,5,psi);
			psi = U1(H,5,psi);
			psi = U_CkX([3 4],5,anc,psi,qasm);
			psi = U1(H,5,psi);
			psi = U1(X,5,psi);
			% 111
			psi = U1(H,5,psi);
			psi = U_CkX([3 4],5,anc,psi,qasm);
			psi = U1(H,5,psi);
		end
		
		% Grover Amplitude Amplification Gate : Inversion about Mean := {psi = mean(psi) - psi;}
		for r = 0:s*M-1
			if qasm == 1 fprintf("\nh q%d",r); end
			psi = U1(H,r,psi);
			if qasm == 1 fprintf("\nx q%d",r); end
			psi = U1(X,r,psi);
		end
		if qasm == 1 fprintf("\nh q%d",s*M-1); end
		psi = U1(H,s*M-1,psi);
		if qasm == 1 fprintf("\nckx q%s,q%d",sprintf("%d",[0:s*M-2]),s*M-1); end
		psi = U_CkX([0:s*M-2],s*M-1,anc,psi,qasm);
		if qasm == 1 fprintf("\nh q%d",s*M-1); end
		psi = U1(H,s*M-1,psi);
		for r =s*M-1:-1:0
			if qasm == 1 fprintf("\nx q%d",r); end
			psi = U1(X,r,psi);
			if qasm == 1 fprintf("\nh q%d",r); end
			psi = U1(H,r,psi);
		end
	end

	plot(psi,'or');
	axis([1 2^(s*M) -1 1])
	hold on
	
	% Measure first component
	figure(2)
	hold on
	if qasm == 1 fprintf("\n"); end
	amp = psi(1:2^(s*M)).^2;
	plot(amp,'.b');
	i = find(amp == max(amp));
	floor(i/(2^s)-1)'
	plot([i'; i'], [0; 1]','-k')
	
endfunction