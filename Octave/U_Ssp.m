function newstate = U_Ssp(s,p,posc,post,state)
%    fprintf(strcat('s q',num2str(posc),',q',num2str(post),'\n'))
    
    spc = ceil(log2(size(state,1)));
    prec = 10^5;
    a = 0;
    b = 0;
    d = 0;  % = log((s^2+p-1)/p)/(2*1i);
    c = 1/sqrt(p);

    p1 = sqrt(p-1);
    p2 = -s;
    Ryt = c*[p1 p2; -p2 p1];
    
    t = 2*asin(-c);
%    Ryt = [cos(t/2) sin(t/2); -sin(t/2) cos(t/2)];   % = [exp(i*(d+a/2+b/2))*cos(t/2) exp(i*(d+a/2-b/2))*sin(t/2); -exp(i*(d-a/2+b/2))*sin(t/2) exp(i*(d-a/2-b/2))*cos(t/2)]    
    
    CRyt = [eye(2) zeros(2); zeros(2) Ryt];
    
        
    if (posc > post)
        U = kron(eye(2^(spc-posc-1)),kron(CRyt,eye(2^post)));
        state = U*state;
    else
        U = kron(eye(2^(spc-post-1)),kron(CRyt,eye(2^posc)));
        state = U_CX(posc,post,state);
        state = U_CX(post,posc,state);
        state = U_CX(posc,post,state);
        state = U*state;
        state = U_CX(posc,post,state);
        state = U_CX(post,posc,state);
        state = U_CX(posc,post,state);
    end
    
    newstate = round(prec*state)/prec;  
end

