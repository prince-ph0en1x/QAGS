function s = distHmng(x,y)
    n1 = uint64(x);
    n2 = uint64(y);
    z = bitxor(n1, n2);
    s = 0;
    for i = 1:64
        s = s + bitget(z,i);
    end
end