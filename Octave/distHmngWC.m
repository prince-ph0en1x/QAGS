function s = distHmngWC(s1,y)
    s = "";
    x = dec2bin(s1,size(y,2));   % tbd: for larger size alphabets
    for i = 1:size(x,2)
        if x(i) == '?' || y(i) == '?'   % Wildcard character
            s = strcat(s,"0");          % Don't care matches everything
        else
            s = strcat(s,num2str(distHmng(x(i),y(i),1)));
        end
    end
end