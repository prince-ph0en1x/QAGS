function psi = prepPsi(db,v)

    n = size(db,2);       % size of search patterns
    m = size(db,1);       % number of database entries
    numq = n*2+1;         % number of qubits required for state preparation
    state = [1; zeros(2^numq-1,1)];
    X = [0 1; 1 0];
    
    for p = m:-1:1   % for each search pattern from reference genome

        zp = db(m-p+1,:);
        
        % FLIP ==========================================
        for j = 1:n
            zp1 = '';
            if p == m
                zp1 = num2str(dec2bin(0,n));
            else
                zp1 = db(m-p,:);
            end
            if zp(j) != zp1(j)
                state = U1(X,0,state);
                state = U_CX(0,numq-j,state);
                state = U1(X,0,state);
            end       
        end
        state = U1(X,0,state);
        state = U_CX(0,1,state);    
        state = U1(X,0,state);
        % end FLIP ======================================
        
        state = U_Ssp(v(m-p+1),p,1,0,state);
        
        %	AND ===========================================
        if(zp(2) == '0' && zp(1) == '0')
            state = U1(X,numq-1,state);
            state = U1(X,numq-2,state);
            state = U_Tf(numq-1,numq-2,numq-n-1,state);
            state = U1(X,numq-2,state);
            state = U1(X,numq-1,state);
        elseif(zp(2) == '0' && zp(1) == '1')
            state = U1(X,numq-2,state);
            state = U_Tf(numq-1,numq-2,numq-n-1,state);
            state = U1(X,numq-2,state);
        elseif(zp(2) == '1' && zp(1) == '0')
            state = U1(X,numq-1,state);
            state = U_Tf(numq-1,numq-2,numq-n-1,state);
            state = U1(X,numq-1,state);
        else
            state = U_Tf(numq-1,numq-2,numq-n-1,state);
        end
        for k = 3:n
            if(zp(k) == '0')
                state = U1(X,numq-k,state);
                state = U_Tf(numq-k,numq-n-1-k+3,numq-k,numq-n-1-k+4,state);  %ckc
                state = U1(X,numq-k,state);
            else
                state = U_Tf(numq-k,numq-n-1-k+3,numq-k,numq-n-1-k+4,state);
            end
        end
        % end AND =======================================
        
        state = U_CX(2,1,state);    
        
        %	AND+ ==========================================
        for k = n:-1:3
            if(zp(k) == '0')
                state = U1(X,numq-k,state);
                state = U_Tf(numq-k,numq-n-1-k+3,numq-k,numq-n-1-k+4,state);  %ckc
                state = U1(X,numq-k,state);
            else
                state = U_Tf(numq-k,numq-n-1-k+3,numq-k,numq-n-1-k+4,state);
            end
        end
        if(zp(2) == '0' && zp(1) == '0')
            state = U1(X,numq-1,state);
            state = U1(X,numq-2,state);
            state = U_Tf(numq-1,numq-2,numq-n-1,state);
            state = U1(X,numq-2,state);
            state = U1(X,numq-1,state);
        elseif(zp(2) == '0' && zp(1) == '1')
            state = U1(X,numq-2,state);
            state = U_Tf(numq-1,numq-2,numq-n-1,state);
            state = U1(X,numq-2,state);
        elseif(zp(2) == '1' && zp(1) == '0')
            state = U1(X,numq-1,state);
            state = U_Tf(numq-1,numq-2,numq-n-1,state);
            state = U1(X,numq-1,state);
        else
            state = U_Tf(numq-1,numq-2,numq-n-1,state);
        end
        % end AND+ ======================================
      
    end
    state = U1(X,0,state);   % uncompute ancilla states
    
    psi = state;

endfunction