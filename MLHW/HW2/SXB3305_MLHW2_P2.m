%{
Sworup Bhattarai
03/31/2021
MKLW2 Problem 2

The Eco-Marathon is a competition in which participants build special
vehicles to achievethe highest possible fuel efficiency. 
The current record of 10705mi/gal was set by a vehicleusing ethanol
as fuel.  Write a Matlab program to calculate how far the vehicle will
travelgiven a user-specified amount of ethanol provided in grams. 
Express this distance in unitsofkm.  The specific gravity of ethanol 
is 0.789.  Use 100gas a test case.
m - mass (g) m
sg - Specific Gravity: .789
pw - Dencity of water 1000 kg/m^3
po - dencity of object
mpg - miles per gal 10705 mi/gal 
kmg - Kilometers per gal
d - distance km
v - volume gal
p = m/v
g_to_kg =.001 
m3_to_gal = 264.172
mi_to_km = (1/.621)
%}
clear; clc; 
close all;
m3_to_gal = 264.172;
mi_to_km = (1/.621);
g_to_kg =.001;
sg = .789;
pw = 1000;
mpg = 10705;


p = "Enter the mass of ethanol [grams]: ";
m = input(p);


m = m * g_to_kg;
po = pw * sg;
v = m/po;
v = v * m3_to_gal;
d = mpg * v;
d = d * mi_to_km;


fprintf('The distance the vehicle traveled is %.0f kilometers \n', d );

