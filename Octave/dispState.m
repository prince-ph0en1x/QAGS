function dispState(state)
  i = size(state,1);
  spc = ceil(log2(i));
  for a = 0:i-1
    fprintf(strcat(num2str(state(a+1)),'|',dec2bin(a,spc),'>\n'))
%    fprintf(strcat(num2str(state(a+1)),'_'))
  end
  fprintf('\n')
endfunction