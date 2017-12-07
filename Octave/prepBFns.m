function f = prepBFns(rg,szA)
    f = zeros(size(rg,2),szA);
    for a = 0:szA-1
        for j = 1:size(rg,2)
            if bin2dec(rg(j)) == a
                f(j,a+1) = 1;
            end
        end
    end
end