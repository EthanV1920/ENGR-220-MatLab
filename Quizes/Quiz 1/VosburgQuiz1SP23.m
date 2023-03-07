%% Quiz 1
% Ethan Vosburg

clear
clc

%% Question 1a
% Create a vector, A, with evenly spaced values from 0 to 32 in increments of 4.

A = linspace(0,32,4);
fprintf("\nVector A :\n")
disp(A);

%% Question 1b
% Create a vector, B, with 8 evenly spaced values starting at 0 and ending at 32.
B = linspace(0,32,8);
fprintf("\nVector B :\n")
disp(B);

%% Question 1c
% Create a vector, C, with 10 logarithmically spaced values between 100 and 100,000.
C = logspace(2,5,10);
fprintf("\nVector C :\n")
disp(C);

%% Question 1d
% Create an array, D, with first column containing the values 5B, second column 
% containing the values 2B + 13, and third column is the vector B.
D(:,1) = 5.*B';
D(:,2) = 2.*B' + 13;
fprintf("\nVector D :\n")
disp(D);

%% Question 1e
% Create two-column array E such that its first and second columns are the last two rows 
% of array D, respectively.
E(:,1) = D(end-1, :);
E(:,2) = D(end, :);
fprintf("\nVector E :\n")
disp(E);

%% Question 2a
% Create a vector, X, which ranges from 10 to 30 with increments of 2.
X = (10:2:30);

%% Question 2b
% Using your vector X from part 2a create a vector: Y1 = 4X^2 – 6X + 10
Y1 = 4.*X.^2 - 6.*X + 10;

%% Question 2c
% Using your vector X from part a. create a vector, Y2 = 2X2 – 3X + 10
Y2 = 2.*X.^2 - 3.*X + 10;

%% Question 2d 
% Create a single plot of both Y1 and Y2 versus X, with X on the abscissa and Y1 and Y2 on 
% the ordinate (regular orientation).  Show the points for Y1 on the plot as green asterisks 
% and those for Y2 as red squares.  Show a blue line through the Y1 points and a black line 
% through the Y2 points.

figure(20)
question2DPlot = axes();
hold(question2DPlot,'on');

plot(X, Y1,'b-*','Parent',question2DPlot,'MarkerSize', 6, 'MarkerEdgeColor', 'g');
plot(X, Y2,'k-s','Parent',question2DPlot,'MarkerSize', 6, 'MarkerEdgeColor', 'r');


%% Question 2d
% Use a legend to differentiate between Y1 & Y2.
legend(question2DPlot, 'Y1', 'Y2', 'Location', 'northwest');


%% Question 2f
% Title the plot and label the axes.

% Create title
title({'Question 2D Plot'});

% Create ylabel
ylabel({'Y'});

% Create xlabel
xlabel({'X'});

%% Question 2g
% Show grids on the plot. 
grid(question2DPlot, 'on');

%% Question 3
% Create a vector called myInfo containing 3 elements: the first element is the number of siblings 
% you have, the second element is how many miles you live from Sierra College (to the nearest 
% tenth of a mile), and the third element is the year you expect to graduate with your bachelor’s 
% degree. Use the fprintf function and your myInfo variable to output the following, except use 
% your information. The fprintf function should call your myInfo variable—do not hard code the 
% numbers. Be sure your output follows precisely:
% 
% Name: “Pat”; number of siblings: 2; reside: 5.2 miles from SC; Bachelor’s expected: 1979. 

myInfo = [2; 1.2; 2025];

fprintf("\nName: “Ethan”; number of siblings: %d; reside: %1.1f miles from SC; Bachelor’s expected: %d.\n", myInfo(1), myInfo(2), myInfo(3));
% fprintf("\nName: ""Ethan""; number of siblings: %d; reside: %1.1f miles from SC; Bachelor's expected: %d.\n", myInfo(1), myInfo(2), myInfo(3));