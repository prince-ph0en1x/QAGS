function srn = remWC(szA,srWC)
    locWC = strfind(srWC,'?');
	nWC = size(locWC,2);
    if nWC == 0
        srn = bin2dec(srWC);
        return  
    end 
    sr = [];
    for i = 1:2^nWC
        sr = [num2str(sr); srWC];
        WC = dec2bin(i-1,nWC);
        for j = 1:nWC
            sr(i,locWC(j)) = WC(j);
        end
    end
    srn = bin2dec(sr);
end