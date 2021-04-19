clc; clear; close all;
p  = [13 23 37 47 59 79];
v =  [2.5 2.95 3.3 3.55 3.7 3.9];

plot(p , v, 'rs' ,'MarkerFaceColor' , 'r' , 'MarkerSize' , 12);
grid on;

%axis control
axis([0 100 0 5]);
title("Challenge Graph" ,'FontSize' , 18 , 'FontWeight', 'bold', 'Color', 'blue' );

xlabel('Power [P]');
ylabel('Velocity');

set(gca, 'XTick' , 0:10:100 , 'YTick' , 0:.5:5 , 'Color','white')

%legend control

L =legend('Line', 'Location', 'best');
set(L,'TextColor', 'p', 'FontSize', 13, 'Color' , 'White');


clear; %close all;





