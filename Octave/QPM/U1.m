function newstate = U1(U,pos,state)
%  fprintf(strcat('x q',num2str(pos),'\n'))
  spc = ceil(log2(size(state,1)));
  U = kron(eye(2^(spc-1-pos)),kron(U,eye(2^(pos))));
  newstate = U*state;
endfunction