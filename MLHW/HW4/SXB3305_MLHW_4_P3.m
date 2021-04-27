%{
Sworup Bhattarai      04/21/21 
MLHW 4
Problem 3

Diameter (D) [ft]   0.5     0.75    1       1.5     2   2.25    2.5     2.75
Power (P) [hp]      0.004   0.04    0.13    0.65    3   8       18      22

Make a professional plot for each data set and use polyfit to get the
trendline and include the equation on the graph.

d = Diameter (D) [ft]
p = Power (P) [hp] 


%}
clc; clear; close all;
d = [0.5, 0.75, 1, 1.5, 2, 2.25, 2.5, 2.75];
p = [0.004, 0.04, 0.13, 0.65, 3, 8, 18, 22];


plot(d,p,'dr');
axis([0 3 0 25]);
hold on;

xlabel('Diameter (D) [ft]','FontSize',12)
ylabel('Power (P) [hp]','FontSize',12)

c = polyfit(log(d), log(p),1);
m = c(1);
b = exp(c(2));

r = (0:.0001:3);
v = b*r.^m;

plot(r, v, '--r');

t1 = sprintf("P = %.3fd^{%.3f}", b, m);
text(1.2,5 , t1, "BackgroundColor", 'w', 'EdgeColor', 'r', 'FontSize', 10);