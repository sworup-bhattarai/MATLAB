%{
Sworup Bhattarai      04/07/21 
MLHW 3
Problem 1

Radio active decay of an isotope is A = Aoe^(-t/k)
generate a plot of A over the period of 5 hrs
k = 1.48 hrs
Ao = 10 g
t = {1,2,3,4,5}
%}
clc; clear; close all;
A = [];
k = 1.48;
Ao = 10;
time = (1:1:5);

%for t = (1:1:5)
%    A = [A, (Ao * exp((-t)/k))];
%end
A = [A, (Ao * exp((-time)/k))];

figure('color', 'w')
plot(time,A,'markersize' , 12)
xlabel('Time (T) (Hrs)')
ylabel('Amount of Radioactive Decay (g)')
title('The Radioactive Decay of an Isotope Over 5 Hours')
axis([0 6 0 5.5]);
grid on;