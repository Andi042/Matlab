function hur(f,a,b,t) 
    l=0;
    c=a-f(a)*(a-b)/(f(a)-f(b));
    while abs(f(c))>t && l < 100
        c=a-f(a)*(a-b)/(f(a)-f(b));
        if f(a)*f(c) < 0
            b=c;
        elseif f(b)*f(c) < 0
            a=c;
        else
            fprintf('%d lépésben a pontos gyök: %6f\n',l,c)
            return
        end
        l=l+1;
        fprintf('%d lépésben a közelítõ gyök: %6f\n',l,c)
    end  
end
