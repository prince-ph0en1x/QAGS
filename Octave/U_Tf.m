function newstate = U_Tf(posc1,posc2,post,state)
%    fprintf(strcat('toffoli q',num2str(posc1),',q',num2str(posc2),',q',num2str(post),'\n'))
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
    if (poscl > post)
        Tf = [eye(6) zeros(6,2); zeros(2,6) X];
        U = kron(eye(2^(spc-poscm-1)),kron(Tf,eye(2^post)));
        state = U*state;
    else
        state = U_CX(poscl,post,state);
        state = U_CX(post,poscl,state);
        state = U_CX(poscl,post,state);
        Tf = [eye(6) zeros(6,2); zeros(2,6) X];
        U = kron(eye(2^(spc-post-1)),kron(Tf,eye(2^poscl)));
        state = U*state;
        state = U_CX(poscl,post,state);
        state = U_CX(post,poscl,state);
        state = U_CX(poscl,post,state);
    end
    newstate = round(prec*state)/prec;
endfunction