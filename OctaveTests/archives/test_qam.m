function test_qam()
    
    clear all
    clc
    
    db = ["01";"10";"11"];  % database to encode
    v = [1 1 1];            % values to encode (optional)  
    ss = "11";
    
    state = prepPsi(db,v);
    state = rednDimn(state,2);
    
    subplot(1,2,1)
    plot(state)
    axis([1 4 -1 1])
    
    state = runSrchU(ss,state);
    
    subplot(1,2,2)
    plot(state)
    axis([1 4 -1 1])
    
    dispState(state)
    
endfunction

  % Equivalent circuits
    %  H1.Z1 = X1.H1
    %  H1.X1 = Z1.H1
    %  X1.CNOT21 = CNOT21.X1
    %  Z2.Z1.CNOT21 = CNOT21.Z2
    %  CNOT12 = H1.H2.CNOT21.H1.H2
  
  
  % Create equal superposition state
    %  for i = 0:numq-1
    %    state = U1(H,i,state);
    %  end
    %  
    %  dispState(state)