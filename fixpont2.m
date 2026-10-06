function fixpont2(f,t)%t = tolerancia,10^-4 alapértelmezetten
    a=input('Kérem a kezdõpontot: ');% input mozgatása
    l=1;%=0 és kiírni l+1,=0 és egy sorral feljebb léptetni a lépteto utasítást
    while abs(f(a)-a)>t & l<100 % <=, <101
        a=f(a);
        fprintf('A %d lépésben a közelítõ megoldás: %6f\n',l,a)
        l=l+1;
    end
end