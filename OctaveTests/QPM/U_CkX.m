%% For convQPM

function newstate = U_CkX(posc,post,anc,state,qasm)
	
	nc = size(posc,2);
	if nc == 0
		"COMPILE ERROR"
		return
	elseif nc == 1
		if qasm == 1 fprintf("\ncnot q%d,q%d",posc(1),post); end
		newstate = U_CX(posc(1),post,state);
		return
	elseif nc == 2
		if qasm == 1 fprintf("\ntoffoli q%d,q%d,q%d",posc(2),posc(1),post); end
		newstate = U_Tf(posc(2),posc(1),post,state);
		return
	end
	
	posc = sort(posc);
	if qasm == 1 fprintf("\ntoffoli q%d,q%d,q%d",posc(1),posc(2),anc); end
	state = U_Tf(posc(1),posc(2),anc,state);
	for i = 3:nc
		if qasm == 1 fprintf("\ntoffoli q%d,q%d,q%d",posc(i),anc+i-2-1,anc+i-1-1); end
		state = U_Tf(posc(i),anc+i-2-1,anc+i-1-1,state);	
	end
	if qasm == 1 fprintf("\ncnot q%d,q%d",anc+nc-2,post); end
	state = U_CX(anc+nc-2,post,state);
	for i = nc-1+1:-1:3
		if qasm == 1 fprintf("\ntoffoli q%d,q%d,q%d",posc(i),anc+i-2-1,anc+i-1-1); end
		state = U_Tf(posc(i),anc+i-2-1,anc+i-1-1,state);	
	end
	if qasm == 1 fprintf("\ntoffoli q%d,q%d,q%d",posc(1),posc(2),anc); end
	newstate = U_Tf(posc(1),posc(2),anc,state);
	
endfunction

%% For getQPM

%function newstate = U_CkX(posc,post,state)
%	
%	spc = ceil(log2(size(state,1)));
%	k = size(posc,2);
%	
%	if k == 0
%		"Error"
%		return
%	elseif k == 1
%		newstate = U_CX(posc(1),post,state);
%		return
%	elseif k == 2
%		newstate = U_Tf(posc(1),posc(2),post,state);
%		return
%	end
%	
%	posc = -sort(-posc);
%	
%	if posc(k) < post
%		"Error! Need SWAP"
%		return
%	end
%	
%	anc = k-1;
%	astate = zeros(2^anc,1);
%	astate(1) = 1;
%	state = kron(state,astate);
%	posc = posc + anc;
%	post = post + anc;
%	
%	state = U_Tf(posc(1),posc(2),anc-1,state);
%	for i = 3:k
%		state = U_Tf(posc(i),anc-i+2,anc-i+1,state);
%	end
%	state = U_CX(0,post,state);
%	for i = k:-1:3
%		state = U_Tf(posc(i),anc-i+2,anc-i+1,state);
%	end	
%	state = U_Tf(posc(1),posc(2),anc-1,state);
%	
%	newstate = rednDimn(state,spc);
%	
%endfunction