%{
Sworup Bhattarai
03/10/2021
MKLW1 Problem 2

The Eco-Marathon is a competition in which participants build special
%vehicles to achievethe highest possible fuel efficiency. 
%The current record of 10705mi/gal was set by a vehicleusing ethanol
%as fuel.  Write a Matlab program to calculate how far the vehicle will
%travelgiven a user-specified amount of ethanol provided in grams. 
%Express this distance in unitsofkm.  The specific gravity of ethanol 
%is 0.789.  Use 100gas a test case.
m - mass (g) m
sg - Specific Gravity: .789
pw - Dencity of water 58417.83 g/gal
po - dencity of object
mpg - miles per gal 10705 mi/gal 
kmg - Kilometers per gal
d - distance km
v - volume gal
%}

sg = .789;
pw = 58417.83;
mpg = 10705;
p = "Please enter the ammount of ethanol provided in grams(g): \n";
m = input(p);
kmg = mpg/.621;
po = pw * sg;
v = m/po;
d = kmg * v;
fprintf('Distance = %.3f km. \n ', d );

