% 03-29-21 in class work
clear; close all; clc;
G = {'Earth', 'Mars' , 'Venus' ; 9.81 , 3.71 , 8.87};
A = menu('Choose a planet: ', G(1,:));
plan = G{1,A};
P = G{2,A};

L = input("Enter the length of the pendulum in meters: ");

f = 2*pi*sqrt(L/P);

fprintf("On %s, a %.1f meter pendulum has a frequency of %.2f Hz.\n",plan, L , f);