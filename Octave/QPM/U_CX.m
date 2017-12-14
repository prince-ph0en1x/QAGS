function newstate = U_CX(posc,post,state)
%  fprintf(strcat('cnot q',num2str(posc),',q',num2str(post),'\n'))
  spc = ceil(log2(size(state,1)));
  prec = 10^5;
  
  X = [0 1; 1 0];
  H = 1/sqrt(2)*[1 1;1 -1];
  I = eye(2);
  O = zeros(2);

  %  XC = round(10000*kron(H,H)*CX*kron(H,H))/10000;

  %    posc
  %    post
  %    size(U)
  %    size(state)

  %    for i = 1:2^(posc+1)
  %      state = zeros(2^(posc+1),1);
  %      state(i) = 1;
  %      dec2bin(find((CX*state)')-1,4)
  %    end

  if (posc > post)
    I = eye(2^(posc-post));
    O = zeros(2^(posc-post));
    br = kron(eye(2^(posc-post-1)),X);
    CX = [I O;O br];
    U = kron(eye(2^(spc-posc-1)),kron(CX,eye(2^post)));
    state = U*state;  
  else
    state = U1(H,posc,state);
    state = U1(H,post,state);
    I = eye(2^(post-posc));
    O = zeros(2^(post-posc));
    br = kron(eye(2^(post-posc-1)),X);
    CX = [I O;O br];
    U = kron(eye(2^(spc-post-1)),kron(CX,eye(2^posc)));
    state = U*state;    
    state = U1(H,posc,state);
    state = U1(H,post,state);
  end

  newstate = round(prec*state)/prec;
    

%  U = kron(eye(2^(spc-1-pos)),kron(U,eye(2^(pos))));
%  newstate = U*state;
endfunction