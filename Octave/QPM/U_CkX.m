function newstate = U_CkX(posc,post,state)
	
	spc = ceil(log2(size(state,1)));
	k = size(posc,2);
	
	if k == 0
		"Error"
		return
	elseif k == 1
		newstate = U_CX(posc(1),post,state);
		return
	elseif k == 2
		newstate = U_Tf(posc(1),posc(2),post,state);
		return
	end
	
	posc = -sort(-posc);
	
	if posc(k) < post
		"Error! Need SWAP"
		return
	end
	
	anc = k-1;
	astate = zeros(2^anc,1);
	astate(1) = 1;
	state = kron(state,astate);
	posc = posc + anc;
	post = post + anc;
	
	state = U_Tf(posc(1),posc(2),anc-1,state);
	for i = 3:k
		state = U_Tf(posc(i),anc-i+2,anc-i+1,state);
	end
	state = U_CX(0,post,state);
	for i = k:-1:3
		state = U_Tf(posc(i),anc-i+2,anc-i+1,state);
	end	
	state = U_Tf(posc(1),posc(2),anc-1,state);
	
	newstate = rednDimn(state,spc);
	
endfunction