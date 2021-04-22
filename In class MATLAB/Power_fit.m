clear
clc
close all

R=[0.5 1 1.25 1.5 2];
V=[3 13 20 28 50];

figure('Color','w')
plot(R,V,'sb','MarkerFaceColor','b','MarkerSize',14)

xlabel('Radius (R) [cm]','FontSize',12)
ylabel('Volume (V) [cm^3]','FontSize',12)

axis([0 3 0 60])
grid on

c = polyfit(log(R), log(V),1);
m = c(1);
b = exp(c(2));


hold on;
rpf = [.5:.01:2];
vpf = b*rpf.^m;

plot(rpf,vpf,'--b');

te = sprintf("V = %.3fR^{%.3f}", b, m);
text(1,5,te, "BackgroundColor", 'w', 'EdgeColor', 'b', 'FontSize', 14)