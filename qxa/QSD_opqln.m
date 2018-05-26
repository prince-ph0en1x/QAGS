% Reference: Quantum algorithms for pattern matching in genomic sequences - A. Sarkar
% \author: Aritra Sarkar (prince-ph0en1x)
% \project: Quantum-accelerated Genome-sequencing
% \repo: https://gitlab.com/prince-ph0en1x/QaGs

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Quantum Shannon Decomposition to OpenQL code

function Ud = QSD_opqln(U,prnt,qbsp)
	
	%% Decompose U to AB1, CS, AB2

	dim = log2(size(U,1));
	splitpt = 2^(dim-1);
	OU = zeros(splitpt,splitpt);
	I = eye(2);
	% X = AP(-pi/2)*Rx(pi);				% Decomposes to [0 1; 1 0]
	% H = AP(-pi/2)*Ry(pi/2)*Rx(pi);	% Decomposes to 1/sqrt(2)*[1 1;1 -1]
	[L0,L1,cc,ss,R0,R1] = fatCSD(U);
	
	%% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ STEP 1 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    % Decompose AB2 to V, D, W (lower dimension)
	AB2 = [R0 zeros(size(R0,1),size(R1,2)); zeros(size(R1,1),size(R0,2)) R1];

	U1 = AB2(1:splitpt,1:splitpt);
	U2 = AB2(splitpt+1:end,splitpt+1:end);
		
	if (max(max(abs(U1+U2))) < 1e-10 || max(max(abs(U1-U2))) < 1e-10)
		if (dim > 2)
			'Not supported'				% TBD: How this section behaves for dim > 2
		end
		[delta,alpha,theta,beta] = zyz(U1);
		decomposedU1 = Rz(alpha)*Ry(theta)*Rz(beta);
		if (prnt > 1)
			fprintf('k.rz(%d,%f)\n',qbsp(1),beta);
			fprintf('k.ry(%d,%f)\n',qbsp(1),theta);
			fprintf('k.rz(%d,%f)\n',qbsp(1),alpha);
		end
		if (prnt == 2)
			decomposedU1 = AP(delta)*decomposedU1;
			fprintf('ap q%d,%f\n',qbsp(1),delta);
		end
		decomposedAB2 = kron(I,decomposedU1);
		if (max(max(U1+U2)) < 1e-10)
			decomposedAB2 = kron(Rz(pi),I)*decomposedAB2;
			if (prnt > 1)
				fprintf('k.rz(%d,%f)\n',qbsp(2),pi);
			end
			if (prnt == 2)
				decomposedAB2 = kron(AP(-pi/2),I)*decomposedAB2;
				fprintf('ap q%d,%f\n',qbsp(2),-pi/2);
			end
		end
	else
		[v,d,~] = eig(U1*U2');
		V = v;
		if dim == 4
			% 1 & 2 Eigenvalues in d are repeated, thus V*V' is not I. Adjustment needed
			% https://nl.mathworks.com/matlabcentral/answers/214557-eigenvectors-are-not-orthogonal-for-some-skew-symmetric-matrices-why
			V(:,[1,2]) = orth(V(:,[1,2]));	% TBD: Automate this
		end
		D = sqrtm(d);
		W = D*V'*U2;
		decomposedAB2 = [V OU; OU V]*[D OU; OU D']*[W OU; OU W];
		
		if (size(W,1) == 2)
			decomposedW = QSD_opql2(W,prnt,qbsp);
		else
			decomposedW = QSD_opqln(W,prnt,qbsp(1:end-1));
		end

		ar = genMk(dim-1)\(2*log(diag(D))/1i);
		dd = eye(size(AB2,1));
		for i = 1:size(D,1)
			if (i == size(D,1))
				posc = dim-2;
			else
				[~,idx] = find(sprintf(dec2bin(bin2gray(i-1),dim-1)) ~= sprintf(dec2bin(bin2gray(i),dim-1)),1);
				posc = dim-2 - (idx - 1);
			end
			dd = U_CX(posc,dim-1,dim) * kron(Rz(ar(i)),eye(2^(dim-1))) * dd;
			if (prnt > 1)
				fprintf('k.rz(%d,%f)\n',qbsp(end),ar(i));
				fprintf('k.gate("cnot",[%d,%d])\n',posc+qbsp(1),dim-1+qbsp(1));
			end
		end
		decomposedD = dd;
		
		if (size(V,1) == 2)
			decomposedV = QSD_opql2(V,prnt,qbsp);
		else
			decomposedV = QSD_opqln(V,prnt,qbsp(1:end-1));
		end
		
		decomposedAB2 = kron(I,decomposedV)*decomposedD*kron(I,decomposedW);
	end

	%% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ STEP 2 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    % Decompose CS to Ry, CX	
	CS = [cc ss; -ss cc];				% Property Test: cc^2 + ss^2 = eye(size(cc,1))

	tr = genMk(dim-1)\(2*asin(diag(ss)));
	decomposedCS = eye(size(CS,1));
	for i = 1:size(ss,1)
		if (i == size(ss,1))
			posc = dim-2;
		else
			[~,idx] = find(sprintf(dec2bin(bin2gray(i-1),dim-1)) ~= sprintf(dec2bin(bin2gray(i),dim-1)),1);
			posc = dim-2 - (idx - 1);
		end		
		decomposedCS = kron(Ry(tr(i)),eye(2^(dim-1))) * decomposedCS;
		decomposedCS = U_CX(posc,dim-1,dim) * decomposedCS;				
		if (prnt > 1)
			fprintf('k.ry(%d,%f)\n',qbsp(end),tr(i));
			fprintf('k.gate("cnot",[%d,%d])\n',posc+qbsp(1),dim-1+qbsp(1));
		end
	end
	
    %% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ STEP 3 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    % Decompose AB1 to V, D, W (lower dimension)
	AB1 = [L0 zeros(size(L0,1),size(L1,2)); zeros(size(L1,1),size(L0,2)) L1];

	U1 = AB1(1:splitpt,1:splitpt);
	U2 = AB1(splitpt+1:end,splitpt+1:end);

	if (max(max(abs(U1+U2))) < 1e-10 || max(max(abs(U1-U2))) < 1e-10)
		if (dim > 2)
			'Not supported'				% TBD: How this section behaves for dim > 2
		end
		[delta,alpha,theta,beta] = zyz(U1);
		decomposedU1 = Rz(alpha)*Ry(theta)*Rz(beta);
		if (prnt > 1)
			fprintf('k.rz(%d,%f)\n',qbsp(1),beta);
			fprintf('k.ry(%d,%f)\n',qbsp(1),theta);
			fprintf('k.rz(%d,%f)\n',qbsp(1),alpha);
		end
		if (prnt == 2)
			decomposedU1 = AP(delta)*decomposedU1;
			fprintf('ap q%d,%f\n',qbsp(1),delta);
		end
		decomposedAB1 = kron(I,decomposedU1);
		if (max(max(U1+U2)) < 1e-10)
			decomposedAB1 = kron(Rz(pi),I)*decomposedAB1;
			if (prnt > 1)
				fprintf('k.rz(%d,%f)\n',qbsp(2),pi);
			end
			if (prnt == 2)
				decomposedAB1 = kron(AP(-pi/2),I)*decomposedAB1;
				fprintf('ap q%d,%f\n',qbsp(2),-pi/2);
			end
		end
	else
		[v,d,~] = eig(U1*U2');
		V = v;
		if dim == 4
			% 7 & 8 Eigenvalues in d are repeated, thus V*V' is not I. Adjustment needed
			% https://nl.mathworks.com/matlabcentral/answers/214557-eigenvectors-are-not-orthogonal-for-some-skew-symmetric-matrices-why
			V(:,[7,8]) = orth(V(:,[7,8]));	% TBD: Automate this
		end
		D = sqrtm(d);
		W = D*V'*U2;
		decomposedAB1 = [V OU; OU V]*[D OU; OU D']*[W OU; OU W];

		if (size(W,1) == 2)
			decomposedW = QSD_opql2(W,prnt,qbsp);
		else
			decomposedW = QSD_opqln(W,prnt,qbsp(1:end-1));
		end

		ar = genMk(dim-1)\(2*log(diag(D))/1i);
		dd = eye(size(AB1,1));
		for i = 1:size(D,1)
			if (i == size(D,1))
				posc = dim-2;
			else
				[~,idx] = find(sprintf(dec2bin(bin2gray(i-1),dim-1)) ~= sprintf(dec2bin(bin2gray(i),dim-1)),1);
				posc = dim-2 - (idx - 1);
			end
			dd = U_CX(posc,dim-1,dim) * kron(Rz(ar(i)),eye(2^(dim-1))) * dd;
			if (prnt > 1)
				fprintf('k.rz(%d,%f)\n',qbsp(end),ar(i));
				fprintf('k.gate("cnot",[%d,%d])\n',posc+qbsp(1),dim-1+qbsp(1));
			end
		end
		decomposedD = dd;
	
		if (size(V,1) == 2)
			decomposedV = QSD_opql2(V,prnt,qbsp);
		else
			decomposedV = QSD_opqln(V,prnt,qbsp(1:end-1));
		end
		
		decomposedAB1 = kron(I,decomposedV)*decomposedD*kron(I,decomposedW);
	end

	%% Final Decomposition Testing
	% Ud = AB1*CS*AB2;
	Ud = decomposedAB1 * decomposedCS * decomposedAB2;
end

%% Decompose 2x2 unitaries using ZYZ

function decomposedU2 = QSD_opql2(U2,prnt,qbsp)
	if (isequal(U2,eye(2)))
		decomposedU2 = eye(2);	
	else
		[delta,alpha,theta,beta] = zyz(U2);
		decomposedU2 = Rz(alpha)*Ry(theta)*Rz(beta);
		if (prnt > 1)
			fprintf('k.rz(%d,%f)\n',qbsp(1),beta);
			fprintf('k.ry(%d,%f)\n',qbsp(1),theta);
			fprintf('k.rz(%d,%f)\n',qbsp(1),alpha);
		end
		if (prnt == 2)
			decomposedU2 = AP(delta)*decomposedU2;
			fprintf('ap q%d,%f\n',qbsp(1),delta);
		end
	end
end

%% Arbitrary phase unitary operation for comparing exact matrix values

function U = AP(t)
    U = [exp(1i*t) 0; 0 exp(1i*t)]; 
end

%% Rotation about Y-axis

function U = Ry(t)
    U = [cos(t/2) sin(t/2); -sin(t/2) cos(t/2)];  
end

%% Rotation about Z-axis

function U = Rz(t)
    U = [exp(1i*t/2) 0; 0 exp(-1i*t/2)];	% TBD: Check sign of matrix for convention
end

%% Convert binary number to gray code

function num = bin2gray(num)
	num = bitxor(num,bitshift(num,-1));
end

%% ZYZ decomposition of a unitary matrix

function [delta,alpha,theta,beta] = zyz(U)
	delta = atan2(imag(det(U)),real(det(U)))/size(U,1);
	SU = U/exp(1i*delta);
	A = SU(1,1);
    B = SU(1,2);	
	cw = real(A);
	wx = imag(B);
	wy = real(B);
	wz = imag(A);
	sw = sqrt(wx^2 + wy^2 + wz^2);
	wx = wx/sw;
	wy = wy/sw;
	wz = wz/sw;
	t1 = atan2(wz*sw,cw);
	t2 = atan2(wx,wy);
	alpha = t1 + t2;
	beta = t1 - t2;
	theta = 2*atan2(sw*sqrt(wx^2 + wy^2),sqrt(cw^2 + (wz*sw)^2));	
end

%% Cosine-Sine decomposition
% Source: http://www.ar-tiste.com/m-fun/csd_qc.m

function [L0,L1,cc,ss,R0,R1] = fatCSD(U)

% This function performs a special case of fat CSD; 
% namely, the case that has been found useful in quantum computing,
% wherein the matrix U being decomposed 
% is a 2^n dimensional unitary matrix,
% and we partition U into four square matrices of the same size.
% This function calls csd() and is a trivial extension of it.
% csd() performs thin CSD. 

% U = [U00, U01] = [L0    ][ cc  ss][R0    ] 
%     [U10, U11]   [    L1][-ss  cc][    R1]
%
% Thin version of CSD (performed by csd()) gives 
% cc,ss, LO, L1 and R0, but 
% it doesn't give R1.
% This subroutine calls csd() and then calculates R1

    %ns = number of states
    %nb = number of bits
    ns = size(U,1);
    nb = 0;
    k = 1;
    while (k<ns)
        nb = nb+1;	
        k = k*2;
    end
    if (k~=ns)
        error('dimension of input matrix for csd_qc is not power of 2');
    end
    if (k==1)
        error('dimension of input matrix for csd_qc is 1');
    end

    nsh = ns/2; %ns half
    U00 = U(1:nsh, 1:nsh);
    U10 = U(nsh+1:ns, 1:nsh);

    [L0,L1,R0,cc,ss] = thinCSD(U00,U10);
    R0 = R0';
    ss = -ss;

    R1 = zeros(nsh, nsh);
    for j=1:nsh
        if abs(ss(j,j))>abs(cc(j,j))
            U01 = U(1:nsh, nsh+1:ns);
            tmp = (L0'*U01);
            R1(j,:) = tmp(j,:)/ss(j,j);
        else
            U11 = U(nsh+1:ns, nsh+1:ns);
            tmp = (L1'*U11);
            R1(j,:) = tmp(j,:)/cc(j,j);
        end
	end
end

function [u1,u2,v,c,s]=thinCSD(q1,q2)

% Given Q1 and Q2 such that Q1'* Q1 + Q2'* Q2 = I, the
% C-S Decomposition is a joint factorization of the form
%       Q1 = U1*C*V' and Q2=U2*S*V'
% where U1,U2,V are orthogonal matrices and C and S are diagonal
% matrices (not necessarily square) satisfying
%          C'* C + S'* S = I
% The diagonal entries of C and S are nonnegative and the
% diagonal elements of C are in nondecreasing order.
% The matrix Q1 cannot have more columns than rows.
% ( Submitted by S. J. Leon )

    [m,n]=size(q1);
    [p,n]=size(q2);
    [u1,c,v]=svd(q1);
    z=eye(n);z=hankel(z(:,n));
    c(1:n,:)=z*c(1:n,:)*z;u1(:,1:n)=u1(:,1:n)*z;v=v*z;
    q2=q2*v;
    k=1;
    for j=2:n
       if c(j,j)<=1/sqrt(2)
          k=j;
       end
    end
    b=q2(:,1:k);
    [u2,r]=qr(b);
    s=u2'*q2;
    t=min(p,n);tt=min(m,p);
    if k<t
       r2=s(k+1:p,k+1:t);
       [ut,ss,vt]=svd(r2);
       s(k+1:p,k+1:t)=ss;
       c(:,k+1:t)=c(:,k+1:t)*vt;
       u2(:,k+1:p)=u2(:,k+1:p)*ut;
       v(:,k+1:t)=v(:,k+1:t)*vt;
       w=c(k+1:tt,k+1:t);
       [z,r]=qr(w);
       c(k+1:tt,k+1:t)=r;
       u1(:,k+1:tt)=u1(:,k+1:tt)*z;
    end
    for j=1:n
       if c(j,j)<0
          c(j,j)=-c(j,j);
          u1(:,j)=-u1(:,j);
       end
    end
    for j=1:t
       if s(j,j)<0
          s(j,j)=-s(j,j);
          u2(:,j)=-u2(:,j);
       end
	end
end