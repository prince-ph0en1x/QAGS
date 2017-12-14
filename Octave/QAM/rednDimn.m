function newstate = rednDimn(state,nd)
	newstate = zeros(2^nd,1);
	j = size(state,1)/(2^nd);
	for i = 1:2^nd
		newstate(i) = sum(state((i-1)*j+1:i*j));
	end   
end