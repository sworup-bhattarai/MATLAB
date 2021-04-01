%{
Sworup Bhattarai
MLHW2
Problem 1
Calculaes the length of a side of a golden cube in inches from the 
mass in KG of the cube.
SG = speific gravity 19.3
m = mass [kg]
l = lenght [in]
pw = dencity of water 1000kg/m^2
pg = dencity of gold
pw = m/v
SG = pg/pw
SGpw = m/v
v = m/SGpw
l = nthroot(v,3)
to_in = (1m = 39.3 inches)
%}
clear; clc; close all;
to_in = 39.3;
SG = 19.3;
pw = 1000;

m = input("Enter the mass of the cube [kilograms]: ");



v = (m/(SG *pw));

l = nthroot(v,3);
l = l * to_in;

fprintf("The length of one side of the cube is %.2f inches.\n" , l);

