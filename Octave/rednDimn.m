function newstate = rednDimn(state,nd)
    newstate = zeros(2^nd,1);
    for i = 1:2^nd
        newstate(i) = sum(state((i-1)*8+1:i*8));
    end   
end