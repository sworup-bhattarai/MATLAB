%{
Sworup Bhattarai      04/21/21 
MLHW 4
Problem 1

Using:
Temperature (T) [◦C]    Carbon Resistance (R) [Ω]   Silicon Resistance (R) [Ω]
15                      10.050                      10.15
20                      10.048                      9.85
25                      10.045                      9.48

Make a professional plot for each data set and use polyfit to get the
trendline and include the equation on the graph.


T = Temperature (T) [◦C]
CR = Carbon Resistance (R) [Ω]
SR = Silicon Resistance (R) [Ω]

%}
clear; clc; close all;

T = [15,20,25];
CR = [10.050,10.048,10.045];
SR = [10.15, 9.85,9.48];
plot(T,CR ,'dr');
hold on;
plot(T,SR,'sb');

xlabel('Temperature (T) [C]','FontSize',12)
ylabel('Resistance (R) [Ω]','FontSize',12)


c = polyfit(T,CR,1);
d = polyfit(T,SR,1);
m1 = c(1);
b1 = c(2);
m2 = d(1);
b2 = d(2);

new_x = [10:.05:30];
pf1 = m1*new_x+b1;
pf2 = m2*new_x+b2;

plot(new_x,pf1,'--r');
plot(new_x,pf2,'-.b');

t = sprintf("R = %.3f T + %.3f",m1,b1);
text(20, 10.2, t,'BackgroundColor', 'w', 'EdgeColor', 'r', 'FontSize', 14);

t = sprintf("R = %.3f T + %.3f",m2,b2);
text(14, 9.5, t,'BackgroundColor', 'w', 'EdgeColor', 'b', 'FontSize', 14);

legend("Carbon Resistance","Silicon Resistance", 'Location', 'SouthWest');





