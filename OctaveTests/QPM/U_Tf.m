function newstate = U_Tf(posc1,posc2,post,state)

	if(posc1 > posc2)
		poscm = posc1;
		poscl = posc2;
	else
		poscm = posc2;
		poscl = posc1;
	end
	spc = ceil(log2(size(state,1)));
	prec = 10^3;
	X = [0 1; 1 0];
	Tf = [eye(6) zeros(6,2); zeros(2,6) X];

	% Make poscl, poscm, post consequetive by SWAP
	
	sv = [0 0 0 0];
	
%	[9999 poscm poscl post]
	
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
%	[1111 poscm poscl post]
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
	
%	[6666 poscm poscl post]
		
	newstate = round(prec*state)/prec;
endfunction

%%%% BACKUP


%%%%function newstate = U_Tf(posc1,posc2,post,state,fname)
%%%%
%%%%%	if size(fname,2) > 0
%%%%%		fileID = fopen(fname,'a');
%%%%%		fprintf(fileID,strcat('toffoli q',num2str(posc1),',q',num2str(posc2),',q',num2str(post),'\n'));
%%%%%		fclose(fileID);
%%%%%	end
%%%%
%%%%	if(posc1 > posc2)
%%%%		poscm = posc1;
%%%%		poscl = posc2;
%%%%	else
%%%%		poscm = posc2;
%%%%		poscl = posc1;
%%%%	end
%%%%	spc = ceil(log2(size(state,1)));
%%%%	prec = 10^3;
%%%%	X = [0 1; 1 0];
%%%%	Tf = [eye(6) zeros(6,2); zeros(2,6) X];
%%%%	if (poscl > post)
%%%%		if poscl-post > 1
%%%%			state = U_CX(poscl-1,post,state);
%%%%			state = U_CX(post,poscl-1,state);
%%%%			state = U_CX(poscl-1,post,state);
%%%%		end
%%%%		if poscm-poscl > 1
%%%%			state = U_CX(poscl+1,poscm,state);
%%%%			state = U_CX(poscm,poscl+1,state);
%%%%			state = U_CX(poscl+1,poscm,state);
%%%%		end
%%%%		U = kron(eye(2^(spc-(poscl+1)-1)),kron(Tf,eye(2^(poscl-1))));
%%%%		state = U*state;
%%%%		if poscm-poscl > 1
%%%%			state = U_CX(poscl+1,poscm,state);
%%%%			state = U_CX(poscm,poscl+1,state);
%%%%			state = U_CX(poscl+1,poscm,state);
%%%%		end
%%%%		if poscl-post > 1
%%%%			state = U_CX(poscl-1,post,state);
%%%%			state = U_CX(post,poscl-1,state);
%%%%			state = U_CX(poscl-1,post,state);
%%%%		end
%%%%	else
%%%%		"TBD"
%%%%%		state = U_CX(poscl,post,state);
%%%%%		state = U_CX(post,poscl,state);
%%%%%		state = U_CX(poscl,post,state);
%%%%%		U = kron(eye(2^(spc-post-1)),kron(Tf,eye(2^poscl)));
%%%%%		state = U*state;
%%%%%		state = U_CX(poscl,post,state);
%%%%%		state = U_CX(post,poscl,state);
%%%%%		state = U_CX(poscl,post,state);
%%%%	end
%%%%	newstate = round(prec*state)/prec;
%%%%endfunction