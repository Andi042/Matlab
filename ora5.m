
fplot(@fgv1);
ax= gca();
ax.XAxisLocation="origin";
ax.NextPlot="add";
fplot(@fgv2)





syms x;

f(x) = (sin(x*3)+nthroot(x,3))-(log(6*x+4)+1/(x-2));
diff(f)% fg --(f9)--> dfg
%deriválás

%newton
newton(@fg,@dfg,10^-4)%függvény , függvény deriválva, 
disp("0. = 4 nem konvergens")
disp("0. = 5 nem konvergens")
disp("0. = 1 kp: 2.lépés után közelítő megoldás:0.927924")

%szelő modser
%[-1-2]
szelo(@fg,0.5,1.5,10^-4)
disp("[0.5,1.5] 9. lépésben a közelítő megoldás:0.927934")
hur(@fg,0.5,1.5,10^-4)%itt kell gondolkodni a tartományon

%polinóm együtthatók+mátrix

fplot(@fgv1);
ax= gca();
ax.XAxisLocation="origin";
ax.NextPlot="add";
fplot(@fgv2)


x1=[1;-2;3]
y1=[2;-3;0]
lagrange(x1,y1)
l(x) = 2+0*x -3*x^2+1*x^3
fplot(l)
ax.NextPlot="add";


plot(x1,y1,"*")


