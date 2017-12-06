function s = distHmngWC(x,y)
    s = "";
    if size(x,2) != size(y,2)
        "Error!!"
    else
        for i = 1:size(x,2)
            if x(i) == '?' || y(i) == '?'   % Wildcard character
                s = strcat(s,"0");          % Don't care matches everything
            else
                s = strcat(s,num2str(distHmng(x(i),y(i),1)));
            end
        end
    end
end
