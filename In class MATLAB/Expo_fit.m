clear
clc
close all


t=[1 5 15 20 30];
V=[18.1 12.1 4.5 2.75 1];

figure('Color','w')
plot(t,V,'hg','MarkerFaceColor','g','MarkerSize',14)
xlabel('Time (t) [s]','FontSize',12)
ylabel('Voltage (V) [V]','FontSize',12)

axis([0 40 0 20])
grid on
hold on

%{
y = be^mx
lny = ln(be^mx)
lny = lnb + lne^mx
ln(y) = ln(b) + mx (ln(e)) = 1
ln(y) = ln(b) + mx

%}


c = polyfit(t, log(V),1);
m=c(1);
b = exp(c(2));


tpf = [1:.001:30];
vpf = b*exp(m*tpf);

plot(tpf, vpf , '-.g')


TE = sprintf("V =  %.2fe^{%.2ft}",b,m)
text(1,5,TE);