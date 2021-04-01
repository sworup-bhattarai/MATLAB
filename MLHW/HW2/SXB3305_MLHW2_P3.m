%{
Sworup Bhattarai
03/31/2021
MKLW2 Problem 2

Write a Matlab program that calculates the efficiency of a stove-top burner given inputs
on the time it takes to boil 1 gal of water. The user should input values for the initial
temperature of the water (◦F), the time it takes to boil, the brand name of the appliance,
and the power rating. Using the calculated efficiency and intermediate values, print the
output statement: (test case shown; note the alignment, spacing, and percent symbol)
pw - dencity of water - 1000 kg/m^3

v - volume of water - 1 gsl

tw - temp of water [deg F] get from user

tb - temp of boiling water [deg F] - 100 deg C

f_to_c = (f - 32)/1.8

t - time - (min) - get from user

Cp = Specific heat of water - 4184 J·kg^−1·K^−1

name - brand name - get from user 

burner_power - Power Rated (input) [W] - get from user

effency - % - calculate

power_used - Power Used (output) [W] - calculate

pw - density of water - 1000 kg/m^3

gal_to_m3 - 1 gal = 0.00378541 m3

p(density) = mass/vlume
Q = mass Cp ΔTemp
Power = Energy/time
%}
clear; clc; close all;



fprintf("Household Appliance Efficiency Calculator: Stove\n\n");
tw = input("Type the initial room temperature of the water [deg F]: ");
t = input("Type the time it takes the water to boil [min]: ");
name = input("Type the brand name and model of your stove: " , 's');
burner_power = input("Type the power of the stove-top burner [W]: ");



v = 1;
tb = 100;
tw = (tw - 32)/1.8 ;
pw = 1000;
gal_to_m3 = (1/264.172);
Cp = 4184;



v = v * gal_to_m3;
m = v * pw;
Q = m * Cp * (tb - tw);
t = t * 60;
power_used = Q/t;
n = (power_used / burner_power) * 100;



fprintf("\nEnergy required:\t\t %.0f J\n" , Q);
fprintf("Power used by burner:\t %.0f W\n\n", power_used);
fprintf("Burner efficiency for a %s stove: %.1f %%\n", name , n);











