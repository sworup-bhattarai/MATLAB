clear; clc; close all;
f = .2;
t = [0:1:10];
e = exp(1);
hr = 135 - 75 *e.^(-f * t);

plot(t ,hr , '--r', 'LineWidth' , 3)
grid on;
axis ([0 10 50 130]);
title('Heart Rate Durring Excercise', 'FontSize', 16)

set(gca, 'XTick' , 0:1:10 , 'YTick' , 50:10:130 , 'Color','w')
xlabel('Time [T][min]')
ylabel('Heart Rate', 'Color', 'r', 'FontWeight' , 'bold')