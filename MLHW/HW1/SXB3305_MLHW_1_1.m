%{
Sworup Bhattarai
03/10/2021
MKHW1 Problem 1
Program that calculates the length of one side of a 0.4 kg cube of gold.
when the SG of gold is 19.3. Find length in inches(in)
Variables:
L = Length (l) in 
SG -  specific gravity (SG) - 19.3
m - mass (m) kg - 0.4 kg
P - pressure (ρ) PA
Pw - Pressure of water - 1000 kg/m^3

%}
clear; close all; clc

SG = 19.3;
m = .4;
Pw = 1000;
to_ft = 3.28;
to_in = 12;


L = (nthroot((m/(SG * Pw)), 3))*(to_ft)*(to_in);
fprintf('L = %.3f in. \n ', L )



