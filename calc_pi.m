% funkcija vrne matriko v kateri so v prvi vrstici vrednosti izračunanega
% števila pi, pri različnem številu naključnih točk, v drugi vrstici pa
% absolutno napako od realne vrednosti


n=10;
resitev=[];
for i=1:5 %izračuamo vrednost pi za n = 10 pa do n = 100000
    [znotraj_kroga, znotraj_kvadrata] = mcc_pi(n);
    [pi, napaka]=area_pi(znotraj_kroga, n);
    resitev(1, end+1) = pi;
    resitev(2,end) = napaka;
    n=n*10;
end
resitev

% anonimna funkcija
kroznica = @(z) deal(sin(z), cos(z));
[a,b] = kroznica(0:pi/50:2*pi);

% izris nakjučnih točk na grafu
plot(a,b,'black','LineWidth',3)
hold on
plot(znotraj_kroga(1,:),znotraj_kroga(2,:), 'r.', znotraj_kvadrata(1,:),znotraj_kvadrata(2,:), 'b.')
axis equal
xlabel('X-os')
ylabel('Y-os')
title('Naključno generirane točke na krožnici')
legend('Znotraj kroga','Zunaj kroga','Krožnica')
hold off

% funkcija za izračun števila pi in napake
function [pie, napaka] = area_pi(znotraj_kroga, n)
pie = 4 * size(znotraj_kroga, 2) / n;
napaka = abs(pi - pie);
end
