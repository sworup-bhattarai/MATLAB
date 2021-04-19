clear; clc; close all;
mat = {'Concrete',16,30,96000,900,5,5; 'Wood',23,53,115000,800,12,11;...
    'Adobe',18 ,42,68000,600,6,5};
choice = menu("Pick the type of material to use",  mat{1:end,1});
total_sqft = 3000;
total_cubeft = mat{choice,2}/12 * total_sqft;
total_mat_cost = (total_cubeft * mat{choice, 3} )+ mat{choice, 4};
total_labor_cost = mat{choice, 5} * mat{choice, 6} * mat{choice, 7};
total_fixed_cost = total_labor_cost + total_mat_cost;

prompt = {'Energy cost [$/week]',...
'Labor cost [$/week]', ...
'Maintenance cost [$/week]',...
'Landfill cost [$/week]',...
'Number of weeks per year the zoo will operate',...
'Number of years the analysis should include'};
dlgtitle = "Operational Costs";
definput = {'5000','4000','3000','3000','50','5'};
dims = [1 35];
cost_entry = inputdlg(prompt,dlgtitle,dims, definput);
cost_entry = str2double(cost_entry);
t_c_per_week = cost_entry(1) + cost_entry(2) + cost_entry(3) + cost_entry(4);
months = (0:1:(cost_entry(5) * cost_entry(6)));
 

prompt = {'Price of admission per person [$/person]', ...
    'Number of people per week that will visit the zoo' ,...
    'Expected donations per week [$/week]'};
dlgtitle = "Revenue";
definput = {'2','9000','400'};
revenue_entry = inputdlg(prompt,dlgtitle,dims,definput);

revenue_entry = str2double(revenue_entry);

t_r_per_week = revenue_entry(1) * revenue_entry(2) + revenue_entry(3);

cost_per = total_fixed_cost + (t_c_per_week .* months);
revenue_per = (t_r_per_week .* months);
 
months = months/(cost_entry(5));
even_point = (total_fixed_cost / (t_r_per_week - t_c_per_week))/(cost_entry(5));
s = (total_fixed_cost + (t_c_per_week  *(even_point* cost_entry(5))));

fprintf("Material: %s \n",mat{choice,1} );
fprintf("\t\tOperating %.0f weeks per year will generate per year:\n",cost_entry(5) )
fprintf("\t\t\t\tRevenue:\t$%.2f\n", (t_r_per_week * cost_entry(5)) );
fprintf("\t\t\t\tCost:\t\t$%.2f\n", (t_c_per_week * cost_entry(5)));
fprintf("\t\tThe breakeven time is %.2f months\n",(even_point * cost_entry(5)) )
fprintf("\t\tThe total profit after %.0f years is $%.2e.\n",cost_entry(6) , (revenue_per(end) - cost_per(end)) );


plot(months, cost_per,'--b', 'LineWidth' , 2);
hold on;
plot(months, revenue_per, ':r', 'LineWidth' , 2);
% month = fixed cost / (revenue per week - cost per week)
plot(even_point,s, '*r' , 'LineWidth' , 4 );
legend('Total Cost','Total Revenue','Location', 'Best');
grid on;
%look at total cost at 7 months and sbtract it from profit and use value as onetime donation ammount 





































