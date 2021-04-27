%{
Sworup Bhattarai      04/21/21 
MLHW 4
Problem 2

Distance (d) [m]    A (R) [Ω]   B (R) [Ω]   C (R) [Ω]
1                   79          150         460
3                   400         840         2500   
6                   1100        2500        6900
10                  2500        4900        15000

Make a professional plot for each data set and use polyfit to get the
trendline and include the equation on the graph.

d = Distance (d) [m]
a = A (R) [Ω]
b = B (R) [Ω]
c = B (R) [Ω]

%}
clear; clc; close all;
d = [1,3,6,10];
a = [79,400,1100,2500];
b = [150,840,2500,4900];
c = [460,2500,6900,15000];
axis([0 11 0 15600]);
hold on;
plot(d,a,'dr');
plot(d,b,'sb');
plot(d,c,'pk');




xlabel('Distance (d) [m]','FontSize',12)
ylabel('Resistance (R) [Ω]','FontSize',12)

c1 = polyfit(log(d), log(a),1);
m1 = c1(1);
b1 = exp(c1(2));

c2 = polyfit(log(d), log(b),1);
m2 = c2(1);
b2 = exp(c2(2));

c3 = polyfit(log(d), log(c),1);
m3 = c3(1);
b3 = exp(c3(2));


r1 = (0:.01:11);
v1 = b1*r1.^m1;

v2 = b2*r1.^m2;

v3 = b3*r1.^m3;

plot(r1, v1, '--r');
plot(r1, v2, '-.b');
plot(r1, v3, ':k');

t1 = sprintf("R = %.3fd^{%.3f}", b1, m1);
text(8,1000 , t1, "BackgroundColor", 'w', 'EdgeColor', 'r', 'FontSize', 10);

t1 = sprintf("R = %.3fd^{%.3f}", b2, m2);
text(5.8,5000 , t1, "BackgroundColor", 'w', 'EdgeColor', 'b', 'FontSize', 10);

t1 = sprintf("R = %.3fd^{%.3f}", b3, m3);
text(4.2,10000 , t1, "BackgroundColor", 'w', 'EdgeColor', 'k', 'FontSize', 10);


legend("Resisor 1","Resisor 2","Resisor 3", 'Location', 'NorthWest');