clear; clc; close all;
radius = [0.01 0.05 0.10 0.20 0.40];
height = [14 3 1.5 0.8 0.4];
height2 = [28 6 3 1.6 0.8];

hold on;
grid on;

plot(radius, height , 'db' , 'MarkerFaceColor' , 'b' , 'MarkerSize', 14);
plot(radius, height2 , 'or' , 'MarkerSize', 14);



title('Challenge Graph' , 'FontSize' , 18, 'Color' , 'r' , 'LineWidth' , 3, 'EdgeColor', 'green');
xlabel('Power [P][W]');
ylabel('Velocity');


set(gca , 'XTick' , 0:.1:.4 , 'YTick' , 0:5:30 ,'Color', 'w' );

L =legend('H1','H2', 'Location', 'NE');
set(L , 'LineWidth' , 3, 'EdgeColor' , 'g')
