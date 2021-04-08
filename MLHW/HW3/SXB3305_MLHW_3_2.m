%{
Sworup Bhattarai      04/07/21 
MLHW 3
Problem 2

Diameter (D) [ft] 0.5 0.75 1 1.5 2 2.25 2.5 2.75
Power (P) [hp] 0.004 0.04 0.13 0.65 3 8 18 22

where the diameter is the abscissa (x-axis) and the power is the ordinate (y-axis). Assume
the data is experimental.

%}
d =  [0.5, 0.75, 1, 1.5, 2, 2.25, 2.5, 2.75];
p = [0.004, 0.04, 0.13, 0.65, 3, 8, 18, 22];
plot(d,p,'linewidth', 3)
xlabel("Diameter (D) [ft]");
ylabel("Power (P) [hp]");