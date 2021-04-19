%{
Swourp Bhattarai
 
ENGR 1250-002
%}

clear; clc; close all;

Specs = {'Crazy Marshmallows',0.100, 20, 5,22,3.00;'Cinnamonairs',0.168,20,4.5,24.5,1.75;'Loopy Loops',0.103,20,5.5,30.5,1.50;'Crunch Bunch',0.118,20,7,32,2.50;};
choice = menu("What cerial would you like to order?", Specs(1:end,1));
Box = input("Enter the number of boxes you would like: ");
UserName = input('Enter your name:', 's');

den_of_water = 1000;
Dense = Specs{choice,2} * den_of_water;
V = (Specs{choice,3}/100)*(Specs{choice,4}/100)*(Specs{choice,5}/100);
Mass = Dense * V;
Cost = (Mass*2.205) * Specs{choice,6};
CName = Specs{choice,1};
fprintf("%s ordered %.0f boxes of %s cereal.\nThe total cost of the order is $%.2f.\n", UserName, Box, CName, Cost*Box);


Box_num = [5:5:30];
Cost_per = Cost * Box_num;

CData=[5 10 15 20 25 30; 7 15 22 29 36 44];

%plot(CData(1,1:end),CData(2,1:end), 'dk', 'markerFaceColor' , 'k','MarkerSize', 15 );

%tried to contact a TA and ask if Q 10 wanted us to use the choice that the
%user picked to make a graph or use the CData as provided, but noone
%answered so i am making/showing them both ways
plot(Box_num, Cost_per, 'dk', 'markerFaceColor' , 'k','MarkerSize', 15 );


axis([0 (Box_num(end)+5) 0 round(Cost_per(end), -1)])
grid on;
xlabel('Number of Boxes (N) [#]' ,'FontWeight' , 'bold', 'FontSize', 18 );
ylabel('Total Cost (C) [$]', 'FontWeight' , 'bold','FontSize', 18);