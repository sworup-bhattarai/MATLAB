clear
clc
close 

T=[375 395 420 450 500];
P=[2.2 2.3 2.5 2.6 2.9];

figure('Color','w')
plot(T,P,'dr','MarkerFaceColor','g','MarkerSize',14)

xlabel('Temperature (T) [K]','FontSize',12)
ylabel('Pressure (P) [atm]','FontSize',12)

axis([350 550 2 3])
grid on

c = polyfit(T,P,1);
m = c(1);
b = c(2);

Tpf = [376:10:505];
Ppf = m*Tpf+b;

hold on;

plot(Tpf, Ppf, "r" , 'LineWidth', 3)

TE = sprintf('P=%0.3fT+%.3f',m,b);
text(460, 2.55, TE, 'BackgroundColor', 'w', 'EdgeColor', 'r', 'FontSize', 14)