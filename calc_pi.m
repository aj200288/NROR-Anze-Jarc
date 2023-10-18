n=10;
for i=1:4
    [znotraj_kroga, znotraj_kvadrata] = mcc_pi(n);
    [pi, napaka]=area_pi(znotraj_kroga, n)
    n=n*10;
end

kroznica = @(z) deal(sin(z), cos(z));
[a,b] = koren(0:pi/50:2*pi);

plot(a,b,'black','LineWidth',3)
hold on
plot(znotraj_kroga(1,:),znotraj_kroga(2,:), 'r.', znotraj_kvadrata(1,:),znotraj_kvadrata(2,:), 'b.')
axis equal
hold off


function [pie, napaka] = area_pi(znotraj_kroga, n)
pie = 4 * size(znotraj_kroga, 2) / n;
napaka = abs(pi - pie);
end