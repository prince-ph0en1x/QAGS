function cdb = prepCdb(rg,szss)
%% Generates a classical database from the reference genome rg with entries of size szss
	cdb = [];
	for i = 1:size(rg,2)-szss+1
		cdb = [num2str(cdb); num2str(rg(i:i+szss-1))];
	end
end