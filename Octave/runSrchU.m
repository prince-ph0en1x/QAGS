function newstate = runSrchU(ss,state)
    
    sn = bin2dec(ss);
    prec = 10^5;
    
    % Encoding the search string into an oracle function
    dim = 2^size(ss,2);
    Is = eye(2^size(ss,2));
    for i = 1:dim
        if (i-1) == sn
            Is(i,i) = -1;
        end
    end

    % Encoding the state into an oracle function
    Ip = eye(dim);
    for i = 1:dim
        if state(i) != 0
            Ip(i,i) = -1;
        end
    end
    
    % Create amplitude amplification operator    
    W = 1/sqrt(2)*[1 1;1 -1];
    Im = eye(4);
    Im(1,1) = -1;
    G = -kron(W,W)*(Im*kron(W,W));
    
    PK = G*(Ip*(G*Is));
    state = PK*state;
    
    AA = G*Is;

    % Grover iteration
    for i = 1:ceil(sqrt(dim))
        state = AA*state        
%        subplot(2,7,(i-1)*7+7)
%        plot(state)
%        axis([1 4 -1 1])
%        break
    end

    newstate = round(prec*state)/prec;
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
