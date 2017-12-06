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