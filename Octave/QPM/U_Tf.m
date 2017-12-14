function newstate = U_Tf(posc1,posc2,post,state,fname)

%	if size(fname,2) > 0
%		fileID = fopen(fname,'a');
%		fprintf(fileID,strcat('toffoli q',num2str(posc1),',q',num2str(posc2),',q',num2str(post),'\n'));
%		fclose(fileID);
%	end

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
	if (poscl > post)
		if poscl-post > 1
			state = U_CX(poscl-1,post,state);
			state = U_CX(post,poscl-1,state);
			state = U_CX(poscl-1,post,state);
		end
		if poscm-poscl > 1
			state = U_CX(poscl+1,poscm,state);
			state = U_CX(poscm,poscl+1,state);
			state = U_CX(poscl+1,poscm,state);
		end
		U = kron(eye(2^(spc-(poscl+1)-1)),kron(Tf,eye(2^(poscl-1))));
		state = U*state;
		if poscm-poscl > 1
			state = U_CX(poscl+1,poscm,state);
			state = U_CX(poscm,poscl+1,state);
			state = U_CX(poscl+1,poscm,state);
		end
		if poscl-post > 1
			state = U_CX(poscl-1,post,state);
			state = U_CX(post,poscl-1,state);
			state = U_CX(poscl-1,post,state);
		end
	else
		"TBD"
%		state = U_CX(poscl,post,state);
%		state = U_CX(post,poscl,state);
%		state = U_CX(poscl,post,state);
%		U = kron(eye(2^(spc-post-1)),kron(Tf,eye(2^poscl)));
%		state = U*state;
%		state = U_CX(poscl,post,state);
%		state = U_CX(post,poscl,state);
%		state = U_CX(poscl,post,state);
	end
	newstate = round(prec*state)/prec;
endfunction