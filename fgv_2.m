%fvgveny valtozoval
syms x;%valtozó
fgv2(x) = log(6*x+4)+1/x-2;
%F9 -->betöltés--> futtatás
fplot(@fgv1)
%edit --> axis properties --> 4 x,yLix x,yAxisLocation-->save as jpg
%betoltes --> fplot( @=külső fájl)
% multiple plot--> replace/add
fplot(fgv2)

%de gépelve is!
ax= gca();
ax.XAxisLocation="origin";
ax.NextPlot="add";
fplot(fgv2)
%------------------röviden >:(
syms x;
F(x) = sin(x*3)+nthroot(x,3);
G(x) = log(6*x+4)+1/x-2;
fplot(F);
ax= gca();
ax.XAxisLocation="origin";
ax.NextPlot="add";
fplot(G)