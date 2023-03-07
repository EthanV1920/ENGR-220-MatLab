%% Assignment 6 ENGR 220
% Ethan Vosburg

%% Problem 1
% Create vector X as all the integers from 1 to 15. Create vector Y with 15 evenly spaced entries beginning with 
% 2 and ending with 24. Establish variable Z = 12.

% Problem 1 Setup Variables
clc;

x = (1:15);
y = linspace(2, 24, 15);
z = 12;


%% Problem 1a
% Find vector D = X +Y
d = x + y;
fprintf("\nVector d:\n");
disp(d);

%% Problem 1b
% Find vector Q that has 15 entries composed of the first element of X multiplied by the first element of Y, the 
% second element of X multiplied by the second element of Y, etc.
q = x .* y;
fprintf("\nVector q:\n");
disp(q);

%% Problem 1c
% Find vector A that is Z divided by each of the elements of Y.
a = y ./ z;
fprintf("\nArray a:\n");
disp(a);

%% Problem 1d
% Create array B with the first column equal to X, the second column equal to A and the third column equal to Y.
b = [x', a', y'];
fprintf("\nArray b:\n");
disp(b);

%% Problem 1e
% Create array C that has the third through sixth rows of B and all the columns.
c = b(3:6, :);
fprintf("\nArray c:\n");
disp(c);


%% Problem 2
% Plot columns 2 and 3 of the following matrix A versus column 1. The data in 
% column 1 is time (seconds). The data in columns 2 and 3 are forces (Newtons).

% Plot Data
problem2Matrix = [[0 ,-8, 6]; [5, -4, 3]; [10, -1, 1]; [15, 1, 0]; [21, 2, -1]];

figure(21);
problem2Plot = axes();
hold(problem2Plot,'on');

plot(problem2Matrix(:,1), problem2Matrix(:,2:3),'*-r','Parent',problem2Plot);
grid on;

% Create title
title({'Time versus Newtons of Force'});

% Create ylabel
ylabel({'Force (N)'});

% Create xlabel
xlabel({'Time (s)'});

% Set the remaining axes properties
hold(problem2Plot,'off');

%% Problem 3
% The following table shows the average temperature for each year in a certain city. Plot the 
% data as a stem plot, a bar plot, and a stairs plot.

problem3Matrix = [2005:2009; [18, 19, 21, 17, 20]];

figure(31);
problem3Stem = axes();
hold(problem3Stem,'on');

stem(problem3Matrix(1,:), problem3Matrix(2,:), 'parent', problem3Stem);
grid on;

% Create title
title({'Year Versus Temperature'});

% Create ylabel
ylabel({'Temperature (C)'});

% Create xlabel
xlabel({'Year (s)'});

% Set the remaining axes properties
hold(problem3Stem,'off');

figure(32);
problem3Bar = axes();
hold(problem3Bar,'on');

bar(problem3Matrix(1,:), problem3Matrix(2,:), 'parent', problem3Bar);
grid on;

% Create title
title({'Year Versus Temperature'});

% Create ylabel
ylabel({'Temperature (C)'});

% Create xlabel
xlabel({'Year (s)'});

% Set the remaining axes properties
hold(problem3Bar,'off');

figure(33);
problem3Stairs = axes();
hold(problem3Stairs,'on');

stairs(problem3Matrix(1,:), problem3Matrix(2,:), 'parent', problem3Stairs);
grid on;

% Create title
title({'Year Versus Temperature'});

% Create ylabel
ylabel({'Temperature (C)'});

% Create xlabel
xlabel({'Year (s)'});

% Set the remaining axes properties
hold(problem3Stairs,'off');


%% Problem 4
% The future amount F of a principal P (present amount) invested in a savings account for a 
% period of time paying an annual interest rate r (APR = Annual Percentage Rate) is given by:
%
% $$ F = P \left( 1+ {r \over n} \right)^{nt} $$
%
% where n is the number of times per year the interest is compounded and t is the number of 
% years. Example: for a 30 year home loan compounded monthly at an APR of 3.00%, n = 12 (12 
% months per year), t = 30 years, and r = 0.03 (3.00%). For continuous compounding, F = Pert. 
% Suppose $10,000 is initially invested at 3.5% APR (r = 0.035). Plot F versus t for 0 < t < 
% 20 years for four cases: continuous compounding, annual compounding (n = 1), quarterly 
% compounding (n = 4), monthly compounding (n = 12). Show all four cases on the same subplot 
% and label each curve. On a second subplot, plot the difference between the amounts obtained 
% from continuous compounding and the other three cases.

% % Given

principal = 10000; % Initial amount
apr = 0.035; % APR

figure(41);
% problem4fplot = axes();
% hold(problem4fplot,'on');
subplot(2,1,1)
xlabel("Time(Years)")
ylabel("Future Amount($)")
title("Future Amount versus Time")
hold on;
grid on;
fplot(@(t) principal*(1+apr/1)^(1*t), [0,20], 'r');
fplot(@(t) principal*(1+apr/4)^(4*t), [0,20], 'g');
fplot(@(t) principal*(1+apr/12)^(12*t), [0,20], 'b');

subplot(2,1,2)
xlabel("Time(Years)")
ylabel("Difference from Continuous($)")
title("Difference from Continuous versus Time")
hold on;
grid on;
fplot(@(t) principal*exp(apr * t) - principal*(1+apr/1)^(1*t), [0,20], 'r');
fplot(@(t) principal*exp(apr * t) -principal*(1+apr/4)^(4*t), [0,20], 'g');
fplot(@(t) principal*exp(apr * t) -principal*(1+apr/12)^(12*t), [0,20], 'b');
grid on;


%% Problem 5
% The grades of 80 students were distributed as follows
% Use the pie chart function pie to plot the grade distribution. Add the title “Grade 
% Distribution” to the chart. Use the gtext function or the plot editor to add the letter 
% grades to the sections of the pie chart.

problem5Data = [23,32,19,6];
problem5Labels = ["A","B","C","D"];

figure(51);
problem5Pie = pie(problem5Data, problem5Labels);

% Create title
title("Grade Distribution");