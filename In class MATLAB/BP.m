%{
April 26
 
%}
clear; close all; clc
 
Age = input('Enter your age: ');
Sys = input('Enter Systolic Pressure in mm Hg: ');
Dia = input('Enter Diastolic Pressure in mm Hg: ');

if(Age>=15) && (Age<=19)
    if(Sys>120) || (Dia>81)
        fprintf('You have high blood pressure\n');
    else
        fprintf('You have normal blood pressure\n');
    end    
elseif((Age>=20) && (Age<=24))
    if(Sys>132) || (Dia>83)
        fprintf('You have high blood pressure\n');
    else
        fprintf('You have normal blood pressure\n');
    end
    else
    error('Error: You should not use this method of diagnosis');
end