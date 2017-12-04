function newstate = runSrch(ss,state)
    
    sn = bin2dec(ss);
    prec = 10^5;
        
    % Create Non-Unitary Search Operator
    dim = 2^size(ss,2);
    Rs = zeros(dim);
    for i = 1:dim
        for j = 1:dim
            if i == j && distHmng(j-1,sn) >= 1
                Rs(dim-i+1,dim-j+1) = 1;
            elseif distHmng(j-1,sn) > distHmng(i-1,sn) && distHmng(i-1,sn) >= 1
                Rs(dim-i+1,dim-j+1) = -1;
            end
        end
    end
    
%    s15 = 0.5*[1 1 1 1]';
%    Rs * s15
    state = Rs*state;
    state = state/sqrt(sum(state.^2));   % re-normalize after non-unitary opration
    newstate = round(prec*state)/prec;
end   
    
function newstate = tstSrch(ss,state)
    sprintf("hi")
end   
%    W = 1/sqrt(2)*[1 1;1 -1];
%    Im = eye(4);
%    Im(1,1) = -1;
%    G = -kron(W,W)*(Im*kron(W,W));
%    
%    Gv = G*(Is*(G*(Ip*(G*Is))));
%    




%    for i = 1:ceil(sqrt(2^size(ss,1)))  % Grover iteration
%        subplot(2,7,(i-1)*7+1)
%        plot(state)
%        axis([1 4 -1 1])
%        
%        state = Is*state;
%        
%        subplot(2,7,(i-1)*7+2)
%        plot(state)
%        axis([1 4 -1 1])
%        
%        state = G*state;
%        
%        subplot(2,7,(i-1)*7+3)
%        plot(state)
%        axis([1 4 -1 1])
%        
%        state = Ip*state;
%        
%        subplot(2,7,(i-1)*7+4)
%        plot(state)
%        axis([1 4 -1 1])
%        
%        state = G*state;
%        
%        subplot(2,7,(i-1)*7+5)
%        plot(state)
%        axis([1 4 -1 1])
%        
%        state = Is*state;
%        
%        subplot(2,7,(i-1)*7+6)
%        plot(state)
%        axis([1 4 -1 1])
%        
%        state = G*state;
%        
%        subplot(2,7,(i-1)*7+7)
%        plot(state)
%        axis([1 4 -1 1])
%        
%%        state = Gv*state;
%%        break
%    end
