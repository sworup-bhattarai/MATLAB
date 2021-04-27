%{
Sworup Bhattarai        04/27/21
MatlabHomework 5
Problem 1

State                        Power [W]
Off/Standby                  < 0.5
Idle                         0.5 - 1.5
Streaming via Ethernet       1.5 - 1.6
Streaming via Wifi           1.6 - 2

Write a Matlab program that takes an input from the user for the current power consumed
and prints a message about the device state



%}
 clear; clc; close all;
a = input("Please enter the current power consumed [W]: ");

if(a < .5)    
        fprintf("The device is currently Off/On Standby\n");   
elseif(a >= .5 && a <= 1.5)  
        fprintf("The device is currently Idle\n");    
elseif(a > 1.5 && a <= 1.6) 
        fprintf("The device is currently Streaming via Ethernet\n");   
elseif(a >= 1.6 && a <= 2)    
        fprintf("The device is currently Streaming via Wifi \n");    
else
        fprintf("DEVICE STATE UNKNOWN");    
end