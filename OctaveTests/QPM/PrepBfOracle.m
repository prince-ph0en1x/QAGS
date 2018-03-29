function U = PrepBfOracle(Bf,s)
	
	N = size(Bf,2);
	prec = 10^1;
	H = 1/sqrt(2)*[1 1;1 -1];
	X = [0 1;1 0];
	I = [1 0; 0 1];
	CX = [1 0 0 0; 0 1 0 0; 0 0 0 1; 0 0 1 0];
	Tf = [eye(6) zeros(6,2); zeros(2,6) X];	
	
	U = eye(2^s);		% tbd, 2^ceil(log(size(bf,2)))
	for j = 0:N-1
		if Bf(j+1) == 1
			bs = dec2bin(N-j-1,s);
			A = [1];
			B = [1];
			C = [1];
			for k = 1:s
				if bs(k) == '1'
					A = kron(A,X);
%					s-k
				else
					A = kron(A,I);
				end
				if k != s
					B = kron(B,I);
				else
					B = kron(B,H);
				end
			end
			C = Tf;	% tbd, to CkX
			U = A*B*C*B*A*U;
		end
	end
	
	U = round(prec*U)/prec;	
	
endfunction