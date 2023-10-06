%% Assigement 6
% Luis Cordova
%% Problem #1
% Create vector X as all the integers from 1 to 15. Create vector Y with 15
% evenly spaced entries beginning with 2 and ending with 24. 
% Establish variable Z = 12.

% a. Find vector D = X +Y

% b. Find vector Q that has 15 entries composed of the first element of X
%multiplied by the first element of Y, the second element of X multiplied
%by the second element of Y, etc.

% c. Find vector A that is Z divided by each of the elements of Y.

% d. Create array B with the first column equal to X, the second column
% equal to A and the third column equal to Y.

% e. Create array C that has the third through sixth rows of B and all the
% columns.

% You might want to review indexing of arrays here. Remember that we always
% think about rows before columns, and then you can choose the parts you
% want. If I want to choose the 1st and 2nd rows and the 3rd and 4th
% columns of some array P, I would write: P(1:2,3:4). To choose all the
% elements of a row or column, use the colon, ":".  Example: P(:, 3:4)
% chooses all the rows of the 3rd and 4th columns).

% Review the "fprintf" function to output solutions a through e for Problem
% 1.

clc
clear
% Given
X=(1:15);
Y= linspace(2,24,15);
Z= 12;

% a.
D= X+Y;
fprintf("D: ");
fprintf(" %.2f", D);
fprintf("\n");
% b.
Q=X.*Y;
fprintf("Q: ");
fprintf(" %.2f", Q);
fprintf("\n");
% c.
A = (Z)./(Y);
fprintf("A: ");
fprintf(" %.2f", A);
fprintf("\n");
% d.
B = [X',A',Y'];
fprintf("B:\n");
fprintf(" %.2f  %.2f  %.2f\n", B);
fprintf("\n");
% e.
C= B(3:6,:);
fprintf("C:\n");
fprintf(" %.2f  %.2f  %.2f\n", C);
fprintf("\n");
%% Problem 2
% Plot columns 2 and 3 of the following matrix A versus column 1. The
% data in column 1 is time (seconds). The data in columns 2 and 3 are
% forces (Newtons).

clc
clear

%Given
A=[[0 ,-8, 6]; [5,-4,3];[10,-1,1];[15,1,0];[21,2,-1]];
plot(A(:,1),A(:,2:3))
xlabel("Secounds")
ylabel("Newtons")
title("Newtons vs Secounds")

%% Problem 3
%  The following table shows the average temperature for each year in a
% certain city. Plot the data as a stem plot, a bar plot, and a stairs
% plot.
% Given Table
clc
clear
tiledlayout(3,1)
%Graph 1
nexttile
A=[2005:2009;[18,19,21,17,20]];
stem(A(1,:),A(2,:))
xlabel("Year")
ylabel("Temp(C)")
title("Temp(C) vs. Year")
%Graph 2
nexttile
bar(A(1,:),A(2,:))
xlabel("Year")
ylabel("Temp(C)")
title("Temp(C) vs. Year")
% Graph 3
nexttile
stairs(A(1,:),A(2,:),LineWidth=2)
xlabel("Year")
ylabel("Temp(C)")
title("Temp(C) vs. Year")

%% Problem 4 
% The future amount F of a principal P (present amount) invested in a
% savings account for a period of time paying an annual interest rate r
% (APR = Annual Percentage Rate) is given by:

% Future Value Formula for Problem 4

% where n is the number of times per year the interest is compounded and t
% is the number of years. Example: for a 30 year home loan compounded
% monthly at an APR of 3.00%, n = 12 (12 months per year), t = 30 years,
% and r = 0.03 (3.00%). For continuous compounding, F = Pert. Suppose
% $10,000 is initially invested at 3.5% APR (r = 0.035). Plot F versus t
% for 0 < t < 20 years for four cases: continuous compounding, annual
% compounding (n = 1), quarterly compounding (n = 4), monthly compounding
% (n = 12). Show all four cases on the same subplot and label each curve.
% On a second subplot, plot the difference between the amounts obtained
% from continuous compounding and the other three case.

% Be sure all of your plots are properly titled (plot title and axes
% titles).

clc
clear

% Given
T=(0:20); % Time in Years
P=10000; % Initial amount
R=0.035; % APR

n=1;
F1 = P.*(1+R./n).^(n.*T); % 
n=4;
F4 = P.*(1+R./n).^(n.*T);
n=12;
F12 = P.*(1+R./n).^(n.*T);
F = P.*exp(R.*T);
subplot(2,1,1)
plot(T,[F1;F4;F12;F]);
xlabel("Time(Years)")
ylabel("Future Amount($)")
title("Future Amount($) vs. Time(Years)")
subplot(2,1,2)
plot(T,F-[F1;F4;F12]);
xlabel("Time(Years)")
ylabel("Difference from Continuous($)")
title("Difference from Continuous ($)vs. Time(Years)")

%% Problem 5
% The grades of 80 students were distributed as follows:
% Use the pie chart function pie to plot the grade distribution. Add the
% title "Grade Distribution" to the chart. Use the gtext function or the
% plot editor to add the letter grades to the sections of the pie chart.
clf
clc
clear
% Number of A=23, B=32, C=19, D=6
pie([23,32,19,6],["A","B","C","D"])
title("Grade Distribution")






