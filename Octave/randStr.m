function [rs,rb] = randStr(szA,sz)
%% Generates a random string of length 'sz' over the alphabet of size 'szA' in decimal and binary
	ranges = linspace(0,1,szA+1);		% assume equal probablility (add bias here)
	rs = "";
	rb = "";
	for i = 1:sz
		rn = rand();
		for j = 2:szA+1
			if rn < ranges(j)
				rb = strcat(rb,dec2bin(j-2,log2(szA)));
				rs = strcat(rs,num2str(j-2));
				break
			end
		end
	end
end