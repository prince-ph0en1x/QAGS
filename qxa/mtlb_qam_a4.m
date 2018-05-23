% Reference: Quantum Associative Memory - D. Ventura, T. Martinez (arXiv preprint quant-ph/9807053)
% \author: Aritra Sarkar (prince-ph0en1x)
% \project: Quantum-accelerated Genome-sequencing
% \repo: https://gitlab.com/prince-ph0en1x/QaGs

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
function mtlb_qam_a4()
	close all
	clear all
	clc
	
	AS = {'0','1'};				% Alphabet set {0,1,2,3} := {A,C,G,T} for DNA Nucleotide bases
	A = size(AS,2);				% Alphabet size
	N = 10;						% Reference Genome size
 	[w,~] = randStr(A,N);		% Reference Genome 	(e.g. w = "0001110100")
	w = '0001110100'
	M = 3;						% Short Read size
	tst_idx = 2;				% Known answer for testing (solution index starts at 0)
	p = w(tst_idx+1:tst_idx+M);	% Short Read
% 	p = strrep(p,'2','?')		% Insert wildcard for approximate matching
	
	% Initialise the database
	cdb = prepCdb(w,M);			% Prepare classical database
	ucdb = unique(cdb,'rows');	% Remove duplicate memories
 	v = ones(1,size(ucdb,1));	% values to encode (optional)
 	qdb = prepQdb(ucdb,v);		% Prepare quantum database
 	state = rednDimn(qdb,M);	% Remove uncomputed ancillas
% 	dispState(state,0)

	plot(state,'-g')
	hold on
	state = runSrch(p,state);	% Run Quantum search operation
% 	dispState(state,0)
	plot(state,'-b')		
	axis([1 2^M -1 1])
	psr = remWC(p);
	plot([psr'+1; psr'+1], [-1; 1]','-r')
	[maxV,maxP] = max(state);
	plot([1; 2^M], [maxV; maxV]','-m')
	set(gca,'XTickLabels',0:2^M-1)	
end

%% Generates a random string of length 'sz' over the alphabet of size 'szA' in decimal and binary

function [rs,rb] = randStr(szA,sz)
	ranges = linspace(0,1,szA+1);		% assumes equal probablility (add bias here)
	rs = '';
	rb = '';
	for i = 1:sz
		rn = rand();
		for j = 2:szA+1
			if rn < ranges(j)
				rb = strcat(rb,dec2bin(j-2,log2(szA)));
				rs = strcat(rs,num2str(j-2));
				break
			end
		end
	end
end

%% Generates a classical database from the reference genome rg with entries of size szss

function cdb = prepCdb(rg,szss)
	cdb = [];
	for i = 1:size(rg,2)-szss+1
		cdb = [num2str(cdb); num2str(rg(i:i+szss-1))];
	end
end

%% Initialises the quantum database

function state = prepQdb(db,v)
	n = size(db,2);						% Size of search patterns
	m = size(db,1);						% Number of database entries
	numq = n*2+1;						% Number of qubits required for state preparation
	state = [1; zeros(2^numq-1,1)];
	X = [0 1; 1 0];
	for p = m:-1:1						% For each pattern to be stored
		zp = db(m-p+1,:);
		% FLIP ==========================================
		for j = 1:n
			zp1 = '';
			if p == m
				zp1 = num2str(dec2bin(0,n));
			else
				zp1 = db(m-p,:);
			end
			if zp(j) ~= zp1(j)
				 state = U1(X,0,state);
				 state = U_CX(0,numq-j,state);
				 state = U1(X,0,state);
			end       
		end
		state = U1(X,0,state);
		state = U_CX(0,1,state);    
		state = U1(X,0,state);
		% end FLIP ======================================
		state = U_Ssp(v(m-p+1),p,1,0,state);
		% AND ===========================================
		if(zp(2) == '0' && zp(1) == '0')
			state = U1(X,numq-1,state);
			state = U1(X,numq-2,state);
			state = U_Tf(numq-1,numq-2,numq-n-1,state);
			state = U1(X,numq-2,state);
			state = U1(X,numq-1,state);
		elseif(zp(2) == '0' && zp(1) == '1')
			state = U1(X,numq-2,state);
			state = U_Tf(numq-1,numq-2,numq-n-1,state);
			state = U1(X,numq-2,state);
		elseif(zp(2) == '1' && zp(1) == '0')
			state = U1(X,numq-1,state);
			state = U_Tf(numq-1,numq-2,numq-n-1,state);
			state = U1(X,numq-1,state);
		else
			state = U_Tf(numq-1,numq-2,numq-n-1,state);
		end
		for k = 3:n
			if(zp(k) == '0')
				state = U1(X,numq-k,state);
				state = U_Tf(numq-k,numq-1-n-(k-3),numq-1-n-(k-3)-1,state);
				state = U1(X,numq-k,state);
			else
				state = U_Tf(numq-k,numq-1-n-(k-3),numq-1-n-(k-3)-1,state);
			end
		end
		% end AND =======================================
		state = U_CX(2,1,state);          
        % AND+ ==========================================
		for k = n:-1:3
			if(zp(k) == '0')
				state = U1(X,numq-k,state);
				state = U_Tf(numq-k,numq-1-n-(k-3),numq-1-n-(k-3)-1,state);
				state = U1(X,numq-k,state);
			else
				state = U_Tf(numq-k,numq-1-n-(k-3),numq-1-n-(k-3)-1,state);
			end
		end
		if(zp(2) == '0' && zp(1) == '0')
			state = U1(X,numq-1,state);
			state = U1(X,numq-2,state);
			state = U_Tf(numq-1,numq-2,numq-n-1,state);
			state = U1(X,numq-2,state);
			state = U1(X,numq-1,state);
		elseif(zp(2) == '0' && zp(1) == '1')
			state = U1(X,numq-2,state);
			state = U_Tf(numq-1,numq-2,numq-n-1,state);
			state = U1(X,numq-2,state);
		elseif(zp(2) == '1' && zp(1) == '0')
			state = U1(X,numq-1,state);
			state = U_Tf(numq-1,numq-2,numq-n-1,state);
			state = U1(X,numq-1,state);
		else
			state = U_Tf(numq-1,numq-2,numq-n-1,state);
		end
		% end AND+ ======================================
	end
	state = U1(X,0,state);				% Uncompute ancilla states
end

%% Single qubit arbitrary unitary U applied on qubit pos of state vector

function state = U1(U,pos,state)
	spc = ceil(log2(size(state,1)));
	U = kron(eye(2^(spc-1-pos)),kron(U,eye(2^(pos))));
	state = U*state;
end

%% CNOT gate with posc as the control qubit and post as the target qubit of state vector

function state = U_CX(posc,post,state)
	spc = ceil(log2(size(state,1)));
	prec = 10^5;
	X = [0 1; 1 0];
	H = 1/sqrt(2)*[1 1;1 -1];
	if (posc > post)
		I = eye(2^(posc-post));
		O = zeros(2^(posc-post));
		br = kron(eye(2^(posc-post-1)),X);
		CX = [I O;O br];
		U = kron(eye(2^(spc-posc-1)),kron(CX,eye(2^post)));
		state = U*state;  
	else
		state = U1(H,posc,state);		% Dress with H to flip control
		state = U1(H,post,state);
		I = eye(2^(post-posc));
		O = zeros(2^(post-posc));
		br = kron(eye(2^(post-posc-1)),X);
		CX = [I O;O br];
		U = kron(eye(2^(spc-post-1)),kron(CX,eye(2^posc)));
		state = U*state;    
		state = U1(H,post,state);
		state = U1(H,posc,state);
	end
	state = round(prec*state)/prec;
end

%% Toffoli gate with posc1, posc2 as the control qubits and post as the target qubit of state vector

function state = U_Tf(posc1,posc2,post,state)
	if(posc1 > posc2)
		poscm = posc1;
		poscl = posc2;
	else
		poscm = posc2;
		poscl = posc1;
	end
	spc = ceil(log2(size(state,1)));
	prec = 10^5;
	X = [0 1; 1 0];
	Tf = [eye(6) zeros(6,2); zeros(2,6) X];
	sv = [0 0 0 0];						% Make poscl, poscm, post consequetive by SWAP
	if post > poscm
		state = U_CX(poscm,post,state);
		state = U_CX(post,poscm,state);
		state = U_CX(poscm,post,state);
		tmp = post;
		post = poscm;
		poscm = tmp;
		sv(1) = 1;
	end
	if post > poscl 
		state = U_CX(poscl,post,state);
		state = U_CX(post,poscl,state);
		state = U_CX(poscl,post,state);
		tmp = post;
		post = poscl;
		poscl = tmp;
		sv(2) = 1;
	end	
	if poscl-post > 1
		state = U_CX(poscl-1,post,state);
		state = U_CX(post,poscl-1,state);
		state = U_CX(poscl-1,post,state);
		swpidx3 = post;
		post = poscl-1;
		sv(3) = 1;
	end
	if poscm-poscl > 1
		state = U_CX(poscl+1,poscm,state);
		state = U_CX(poscm,poscl+1,state);
		state = U_CX(poscl+1,poscm,state);
		swpidx4 = poscm;
		poscm = poscl+1;
		sv(4) = 1;
	end
	U = kron(eye(2^(spc-(poscl+1)-1)),kron(Tf,eye(2^(poscl-1))));
	state = U*state;
	if sv(4) == 1
		state = U_CX(poscl+1,swpidx4,state);
		state = U_CX(swpidx4,poscl+1,state);
		state = U_CX(poscl+1,swpidx4,state);
		poscm = swpidx4;
	end
	if sv(3) == 1
		state = U_CX(poscl-1,swpidx3,state);
		state = U_CX(swpidx3,poscl-1,state);
		state = U_CX(poscl-1,swpidx3,state);
		post = swpidx3;
	end
	if sv(2) == 1
		state = U_CX(poscl,post,state);
		state = U_CX(post,poscl,state);
		state = U_CX(poscl,post,state);
		tmp = post;
		post = poscl;
		poscl = tmp;
	end	
	if sv(1) == 1
		state = U_CX(poscm,post,state);
		state = U_CX(post,poscm,state);
		state = U_CX(poscm,post,state);
		tmp = post;
		post = poscm;
		poscm = tmp;
	end		
	state = round(prec*state)/prec;
end

%% Custom Unitary for storage of pattern

function state = U_Ssp(s,p,posc,post,state)
	spc = ceil(log2(size(state,1)));
	prec = 10^5;
	c = 1/sqrt(p);
	p1 = sqrt(p-1);
	p2 = -s;
	Ryt = c*[p1 p2; -p2 p1];
	% Ryt = [cos(asin(-1/sqrt(p))) sin(asin(-1/sqrt(p))); -sin(asin(-1/sqrt(p))) cos(asin(-1/sqrt(p)))]  
	CRyt = [eye(2) zeros(2); zeros(2) Ryt];        
	if (posc > post)
		U = kron(eye(2^(spc-posc-1)),kron(CRyt,eye(2^post)));
		state = U*state;
	else
		U = kron(eye(2^(spc-post-1)),kron(CRyt,eye(2^posc)));
		state = U_CX(posc,post,state);	% Swap control and target
		state = U_CX(post,posc,state);
		state = U_CX(posc,post,state);
		state = U*state;
		state = U_CX(posc,post,state);
		state = U_CX(post,posc,state);
		state = U_CX(posc,post,state);
	end
	state = round(prec*state)/prec;  
end

%% Remove uncomputed ancilla from state space to reduce dimension

function newstate = rednDimn(state,nd)
	newstate = zeros(2^nd,1);
	j = size(state,1)/(2^nd);
	for i = 1:2^nd
		newstate(i) = sum(state((i-1)*j+1:i*j));
	end   
end

%% Use non-unitary search operator for searching the pattern

function state = runSrch(ss,state)
	state = fliplr(state')';
	prec = 10^5;     
	dim = 2^size(ss,2);
	Rs = zeros(dim);					% Create Non-Unitary Search Operator
	for i = 1:dim
		for j = 1:dim
			if i == j & distHmngWC(j-1,ss) >= 1
				Rs(dim-i+1,dim-j+1) = 1;
			elseif distHmngWC(j-1,ss) > distHmngWC(i-1,ss) & distHmngWC(i-1,ss) >= 1
				Rs(dim-i+1,dim-j+1) = -1;
			end
		end
	end
	state = Rs*state;
	state = state/sqrt(sum(state.^2));	% Re-normalize after non-unitary opration
	state = round(prec*state)/prec;
end

%% Calculate Hamming distance (with wildcards)

function hdw = distHmngWC(s1,y)
    s = '';
	hdw = 0;
    x = dec2bin(s1,size(y,2));
    for i = 1:size(x,2)
        if x(i) == '?' | y(i) == '?'	% Wildcard character
            s = strcat(s,'0');			% Don't care matches everything
		else
			n1 = uint64(x(i));
			n2 = uint64(y(i));
			z = bitxor(n1, n2);
			hd = 0;
			for j = 1:64
				hd = hd + bitget(z,j);
			end
			hdw = hdw+hd;
            s = strcat(s,num2str(hd));
        end
	end
	
end

%% Create superposition of solution considering wildcards

function srn = remWC(srWC)
    locWC = strfind(srWC,'?');
	nWC = size(locWC,2);
    if nWC == 0
        srn = bin2dec(srWC);
        return  
    end 
    sr = [];
    for i = 1:2^nWC
        sr = [num2str(sr); srWC];
        WC = dec2bin(i-1,nWC);
        for j = 1:nWC
            sr(i,locWC(j)) = WC(j);
        end
    end
    srn = bin2dec(sr);
end

%% Displays the quantum state

function dispState(state,format)
	i = size(state,1);
	spc = ceil(log2(i));
	for a = 0:i-1
		if format == 0
			fprintf(strcat(num2str(state(a+1),'%+f'),'\t|',dec2bin(a,spc),'>\n'))
		elseif format == 1
			fprintf(strcat(num2str(state(a+1)),'_'))
		end
	end
	fprintf('\n')
end