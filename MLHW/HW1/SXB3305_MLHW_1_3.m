%{
Sworup Bhattarai
03/24/2021
MKLW1 Problem 3

alculates  the  mass  of  oxygen  gas  in  a  container  given  the
volume (gal), temperature (◦C), and the pressure (atm).
v - volume - gal
        needs to be converted to L
t - temp - C
        needs to be converted to K
p - pressure - atm
m - mass - grams
mm - molecular mass of oxygen - 16g/mol
r - ideal gas constant - .08206 (atm L)/(mol K)
PV = nRT
n = PV/RT
g = n (mm)
g = (PV/RT)(mm)
%}
clear; clc; 
prompt = "Please enter the volume of the container in terms of gal: ";
v = input(prompt);

prompt = "Please enter the Temperature in terms of ∘C: ";
t = input(prompt);

prompt = "Please enter the Pressure in terms of atm: ";
p = input(prompt);

mm = 16;
r = .08206;

%convert gal to L
v = v/.264;

%convert C to K
t = t + 273;

% equation
g = ((p * v)/( r * t)) * mm;

fprintf('\nMass = %.3f g. \n ', g );