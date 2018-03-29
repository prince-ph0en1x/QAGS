close all
clear all
clc



%% Grover
%
%	% Initialization
%	s = 1/sqrt(2^n)*ones(1,2^n);
%	plot([0:2^n-1],s,'-b')
%	hold on
%
%	m = 2;
%	t = 1;
%	iter = floor(pi/(4*asin(1/sqrt(2^n))))
%
%	for i = 1:iter
%		% Mark
%		s(m) = -s(m);
%		% Diffuse
%		s = -s + 2*mean(s);
%		if i == floor(iter/2)
%			plot([0:2^n-1],s,'*m')
%		end
%		if i == iter
%			plot([0:2^n-1],s,'.r')
%		end
%	end
%	axis([0 2^n-1 -1 1])

%% BBHT multiple solns
%
%	% Initialization
%	s = 1/sqrt(2^n)*ones(1,2^n);
%	plot([0:2^n-1],s,'-b')
%	hold on
%
%	m = [2 10];
%	t = size(m,2);
%	iter = floor(pi/(4*asin(sqrt(t/(2^n)))))
%
%	for i = 1:iter
%		% Mark
%		for mi = 1:t
%			s(m(mi)) = -s(m(mi));
%		end
%		% Diffuse
%		s = -s + 2*mean(s);
%		if i == floor(iter/2)
%			plot([0:2^n-1],s,'*m')
%		end
%		if i == iter
%			plot([0:2^n-1],s,'.r')
%		end
%	end
%	axis([0 2^n-1 -1 1])

%% BBHT N/4 solns
%
%	% Initialization
%	s = 1/sqrt(2^n)*ones(1,2^n);
%	plot([0:2^n-1],s,'-b')
%	hold on
%
%	m = [1:2^(n-2)];
%	t = size(m,2);
%	th = asin(sqrt(t/(2^n)));
%	iter = floor(pi/(4*th))
%	km = sin(th*((pi-2*th)/(2*th)+1))/sqrt(t)
%	lm = cos(3*th)/sqrt(2^n-t)
%
%	for i = 1:iter
%		% Mark
%		for mi = 1:t
%			s(m(mi)) = -s(m(mi));
%		end
%		% Diffuse
%		s = -s + 2*mean(s);
%		if i == floor(iter/2)
%			plot([0:2^n-1],s,'*m')
%		end
%		if i == iter
%			plot([0:2^n-1],s,'.r')
%			s(1)
%			s(2^n - 1)
%		end
%	end
%	axis([0 2^n-1 -1 1])

%% BBHT multiple unknown [1,3N/4] solns  ########### INCOMPLETE
%
%		% Initialization
%		N = 2^n
%		
%		%t = floor(rand*N + 1)
%		m = [2 10];
%		t = size(m,2);
%		
%		g = 6/5;
%		iterMax = 1;
%		
%		s = 1/sqrt(N)*ones(1,N);	% initial equal superposition
%		plot([0:N-1],s,'-b')
%		hold on
%		
%		
%		th = asin(sqrt(t/N))
%		m0 = 1/sin(2*th)
%		loopMax = ceil(log(m0)/log(g))
%		iterExpc = 
%		
%		
%		iterMax = min(g*iterMax,sqrt(N))
%		iterMax = min(g*iterMax,sqrt(N))
%		iterMax = min(g*iterMax,sqrt(N))
%		iterMax = min(g*iterMax,sqrt(N))
%		iterMax = min(g*iterMax,sqrt(N))
%		iterMax = min(g*iterMax,sqrt(N))
%		iter = floor(rand*iterMax)
%		
%	%	for i = 1:iter
%	%		% Mark
%	%		for mi = 1:t
%	%			s(m(mi)) = -s(m(mi));
%	%		end
%	%		% Diffuse
%	%		s = -s + 2*mean(s);
%	%		if i == floor(iter/2)
%	%			plot([0:2^n-1],s,'*m')
%	%		end
%	%		if i == iter
%	%			plot([0:2^n-1],s,'.r')
%	%		end
%	%	end
%		axis([0 2^n-1 -1 1])

%% Arbitrary initial amplitudes 1 soln
%
%	% Initialization
%	N = 2^n;
%	s = [ones(1,n)/sqrt(n) zeros(1,N-n)];
%	plot([0:N-1],s,'.-b')
%	hold on
%
%	r = 1
%	kavg = 1/sqrt(n)
%	lavg = (n-r)/((N-r)*sqrt(n))
%	lvar = sum((s(r+1:N) - lavg).^2)/(N-r);
%	Pmax = 1-(N-r)*lvar
%	%1-sum((s(r+1:N) - lavg).^2)
%	j = 5
%	T = ((j+0.5)*pi - atan(kavg*sqrt(r/(N-r))/lavg))/acos(1-2*r/N)
%	T = round(T);
%
%	for iter = 1:T
%		C = 2*((N-r)*lavg - r*kavg)/N;
%		%pred = [C+s(1) C-s(2:end)];
%		s(1) = -s(1);			% Mark
%		s = -s + 2*mean(s);		% Diffuse
%		%sum(abs(s-pred)) < 1e-14
%		kavg = C+kavg;
%		lavg = C-lavg;
%	end
%	disp(sprintf('\nIteration %d',T))
%	kavg
%	lavg
%	Pans = kavg^2
%	plot([0:2^n-1],s,'.-m')
%	axis([0 2^n-1 -1 1])
%
%	%	N;
%	%	M = 2;
%	%	r = 1;
%	%	iMx = N-M+1;
%	%	s = log2(iMx);
%	%	qb = s*M;
%	%	l0avg = (iMx - r)/((2^qb - r)*sqrt(iMx))
%	%	PmaxGene = 1 - (iMx - r)*(1/sqrt(iMx) - l0avg)^2 - (2^qb - iMx)*l0avg^2

%% Arbitrary initial amplitudes r solns
%
%	% Initialization
%	N = 2^n;
%	s = [ones(1,n)/sqrt(n) zeros(1,N-n)];
%	plot([0:N-1],s,'.-b')
%	hold on
%
%	r = 2
%	kavg = 1/sqrt(n)
%	lavg = (n-r)/((N-r)*sqrt(n))
%	lvar = sum((s(r+1:N) - lavg).^2)/(N-r);
%	Pmax = 1-(N-r)*lvar
%	%1-sum((s(r+1:N) - lavg).^2)
%	j = 1
%	T = ((j+0.5)*pi - atan(kavg*sqrt(r/(N-r))/lavg))/acos(1-2*r/N)
%	T = round(T);
%
%	for iter = 1:T
%		C = 2*((N-r)*lavg - r*kavg)/N;
%		%pred = [C+s(1) C-s(2:end)];
%		s(1:r) = -s(1:r);		% Mark
%		s = -s + 2*mean(s);		% Diffuse
%		%sum(abs(s-pred)) < 1e-14
%		kavg = C+kavg;
%		lavg = C-lavg;
%	end
%	disp(sprintf('\nIteration %d',T))
%	kavg
%	lavg
%	Pans = r*kavg^2
%	plot([0:2^n-1],s,'.-m')
%	axis([0 2^n-1 -1 1])

%% Hollenberg Iteration
%
%	A = 4;
%	M = 3;
%	N = 10;
%	r = 1;
%
%	iMx = N-M+1;
%	qtag = ceil(log2(iMx));
%	qb = qtag + M*ceil(log2(A));
%	sMx = 2^qb;
%
%	kavg0 = 1/sqrt(iMx);
%	lavg0 = (iMx - r)/((sMx - r)*sqrt(iMx));
%	Pmax = 1 - (sMx-iMx)*lavg0^2 - (iMx-r)*(1/sqrt(iMx) - lavg0)^2
%
%	j = [0:9]'
%	T = ((j+0.5)*pi - atan(kavg0*sqrt(r/(sMx-r))/lavg0))/acos(1-2*r/sMx)'

%% Panda Iteration
%
%	A = 2;
%	dim = 2;
%	M = 3;
%	N = 18;
%	r = 1;
%
%	iMx = (N-M+1)^dim
%	qtag = ceil(log2(iMx));
%	qb = qtag + M^dim*ceil(log2(A));
%	sMx = 2^qb;
%
%	kavg0 = 1/sqrt(iMx);
%	lavg0 = (iMx - r)/((sMx - r)*sqrt(iMx));
%	Pmax = 1 - (sMx-iMx)*lavg0^2 - (iMx-r)*(1/sqrt(iMx) - lavg0)^2
%
%	j = [0:9]'
%	T = ((j+0.5)*pi - atan(kavg0*sqrt(r/(sMx-r))/lavg0))/acos(1-2*r/sMx)'

%% QuAM Iteration 1 solution Modified Loop
%
%	% Initialization
%	n = 5;
%	r = 1;
%	N = 2^n;
%	s = [ones(1,n)/sqrt(n) zeros(1,N-n)];
%	plot([0:N-1],s,'.b')
%	hold on
%
%	s(1:r) = -s(1:r);		% Mark
%	plot([0:N-1],s,'xb')
%	s = -s + 2*mean(s);		% Diffuse
%	%plot([0:N-1],s,'*m')
%
%	s(1:n) = -s(1:n);		% Mark
%	s = -s + 2*mean(s);		% Diffuse
%	%plot([0:N-1],s,'.r')
%
%	s(1:n) = -s(1:n);		% Mark
%	s = -s + 2*mean(s);		% Diffuse
%	plot([0:N-1],s,'*m')
%
%	s(1:n) = -s(1:n);		% Mark
%	s = -s + 2*mean(s);		% Diffuse
%	plot([0:N-1],s,'.r')
%
%	axis([0 2^n-1 -1 1])

%% QuAM Iteration r solution Modified Loop

% Initialization
n = 6;
r = 2;
N = 2^n;
s = [ones(1,n)/sqrt(n) zeros(1,N-n)];
plot([0:N-1],s,'.b')
hold on

%	% Without Ip step
%	
%	kavg = 1/sqrt(n)
%	lavg = (n-r)/((N-r)*sqrt(n))
%	lvar = sum((s(r+1:N) - lavg).^2)/(N-r);
%	Pmax = 1-(N-r)*lvar
%	Pmax/r
%	%1-sum((s(r+1:N) - lavg).^2)
%	j = [0:9]';
%	T = ((j+0.5)*pi - atan(kavg*sqrt(r/(N-r))/lavg))/acos(1-2*r/N)'
%	%T = round(T);

%	% With Ip step
	
	r0 = 0;
	r1 = 2;
	p = n;
	a = 2*(p-2*r1)/N;
	b = 4*(p+r0)/N;
%	k0 = 4*a - a*b
%	k1 = 4*a - a*b + 1
%	l0 = 2*a - a*b
%	l1 = 4*a - a*b - 1
%	kavg = 4*a - a*b + r1/(r1+r0);
%	lavg = -a*b + 2*a*(N+p-r0-2*r1)/(N-r0-r1) - (p-r1)/(N-r0-r1)
%		Pmax = 1 - (N-p-r0)*(l0-lavg)^2 -  (p-r1)*(l0-lavg)^2
%		j = [0:9]';
%		T = ((j+0.5)*pi - atan(kavg*sqrt((r1+r0)/(N-r1-r0))/lavg))/acos(1-2*(r1+r0)/N)'
	%T = round(T);
	
	

s(1:r) = -s(1:r);		% Mark
s = -s + 2*mean(s);		% Diffuse
plot([0:N-1],s,'*m')

%	mean(s)
%	mean1 = (p - 2*r1)/(N*sqrt(p))
%	s(1)
%	(a+1)/sqrt(p)
%	s(r+1)
%	(a-1)/sqrt(p)
%	s(n+1)
%	a/sqrt(p)
	
	mean2 = (-(a+1)*r1 -a*r0 -(a-1)*(p-r1) + a*(N-p))/(N*sqrt(p))
	
	l0 = 2*a - a*b 
	kavg = (a+1)/sqrt(p) + 2*mean2
	lavg = ((-a/sqrt(p) + 2*mean2)*(N-p-r0) + (-1/sqrt(p) + a/sqrt(p) + 2*mean2)*(p-r1))/(N-r1)
	Pmax = 1 - (N-p-r0)*(l0-lavg)^2 -  (p-r1)*(l0-lavg)^2
	j = [0:9]';
	T = ((j+0.5)*pi - atan(kavg*sqrt((r1+r0)/(N-r1-r0))/lavg))/acos(1-2*(r1+r0)/N)'

%for iter = 1:1 %5
	%[iter s(1)]
	s(1:n) = -s(1:n);		% Mark
%	mean(s)
	%s(1:r) = -s(1:r);		% Mark
	s = -s + 2*mean(s);		% Diffuse
		
	s(1)
	s(r+1)
	s(n+1)
%end

for iter = 1:27
	%[iter s(1) s(1)^2]
	%s(1:n) = -s(1:n);		% Mark
	s(1:r) = -s(1:r);		% Mark
	s = -s + 2*mean(s);		% Diffuse
end
[iter s(1) s(1)^2]
plot([0:N-1],s,'.r')

axis([0 2^n-1 -1 1])