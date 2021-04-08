%{
Sworup Bhattarai      04/07/21 
MLHW 3
Problem 23

Vicle Speed (v)eh [mph] Reaction (dr) Braking (db)
20                              6           6
30                              9           14
40                              12          24
50                              15          38
60                              18          55
70                              21          75



%}

v = [20,30,40,50,60,70];
d1 = [6,9,12,15,18,21];
d2 = [6,14,24,38,55,75];

plot(v,d1,'s','linewidth', 3 , "MarkerSize", 6)
hold on;
plot(v,d2,'s','linewidth', 3 , "MarkerSize", 6)
legend("Reaction (dr)", "Braking (db)", "Location", "Best")
xlabel("Vehicle Speed (v) [mph]")
ylabel("Distance Traveled ")