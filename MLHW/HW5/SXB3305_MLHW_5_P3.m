%{
Sworup Bhattarai        04/27/21
MatlabHomework 5
Problem 3

Write a Matlab program that determines and prints a student’s letter grade given their final
numerical grade (g) on a ten point scale:

A: 90 <= g
B: 80 <= g && g < 90
C: 70 <= g && g < 80
D: 60 <= g && g < 70
F: g < 60
%}

clear; clc; close all; 
g = input('The student’s grade is: ');

if (90 <= g)
    l = 'A';
elseif(80 <= g && g < 90)
    l = 'B';
elseif(70 <= g && g < 80)
    l = 'C';
elseif(60 <= g && g < 70)
    l = 'D';
elseif(g < 60)
    l = 'F';
end

fprintf("The letter grade is: %s\n", l);