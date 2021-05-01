%{
Sworup Bhattarai        04/27/21
MatlabHomework 5
Problem 2

Write a Matlab program that takes an
input from the user for altitude (H) in meters. Use this input to determine and print the
region of the atmosphere, temperature (T) [◦C], and pressure (P) [kPa] using the NASA
model.

Trophosphere
• Altitude: < 11000
• Temperature: T = 15.04 − 0.00649
• Pressure: P = 101.29((T + 273.1)/288.08)^-5.256
Lower Stratosphere
• Altitude: 11000 ≤ H < 25000
• Temperature:
• Pressure: P = 22.65e1.73−0.000157H
Upper Stratosphere
• Altitude: 25000 ≤ H < 50000
• Temperature: T = -131.21 + 0.0029H
• Pressure: P =2.488*((T + 273.1)/216.6)^-11.388

%}
 clear; clc; close all;


H = input("Enter the altitude in meters: ");


if(H < 11000)
    T = 15.04 - 0.00649 * H;
    P = 101.29 *((T + 273.1)/288.08)^(5.256);
    L = 'Trophosphere';
elseif(H >= 11000 && H < 25000)
    T = -56.46;
    P = 22.65*exp(1.73-0.000157*H);
    L = 'Lower Stratosphere';
elseif(H >= 25000 && H < 50000)
    T = -131.21 + (0.0029*H);
    P =2.488*((T + 273.1)/216.6)^-11.388;
    L = 'Upper Stratosphere';
else
    error('ERROR: The altitude is set too high!!')
end



fprintf("You are in the %s at a temperature around %.2f℃ and atmospheric perssure of %.2fkPa\n",L ,T ,P);