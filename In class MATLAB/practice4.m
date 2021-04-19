clear; clc; close all;
t = [0:.02:2];
s = 1;
m = .002;
E = .5;
e = exp(1);

as = (t/s) .* (m + e.^((-pi/E)*t));

plot(t, as , ':r', 'LineWidth' , 3);
grid on;

axis([0 2 0 .06]);
set(gca, 'XTick', [0:.2:2], 'YTick', [0:.01:.06])
xlabel('Time[T][sec]', 'FontWeight' , 'bold');
ylabel('amplitude contour (AC) [-] ', 'FontWeight' , 'bold')