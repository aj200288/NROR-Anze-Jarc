function [znotraj_kroga, znotraj_kvadrata] = mcc_pi(n)
% funkcija vrne koordinate točk znotraj kroga in koordinate točk zunaj
% kroga
%prva vrstiva vrnjene matrike je x koordinata, druga pa y
znotraj_kroga=[];
znotraj_kvadrata=[];

x = rand(1, n)*2-1;
y = rand(1, n)*2-1;

for i=1:n
    if sqrt(x(i)^2 + y(i)^2) < 1
        znotraj_kroga(1, end+1) = x(i);
        znotraj_kroga(2, end) = y(i);
    else
        znotraj_kvadrata(1, end+1) = x(i);
        znotraj_kvadrata(2, end) = y(i);
    end
end