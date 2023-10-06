%% Quiz 2
% Ethan Vosburg

%% Quiz 2 Data
% Clear the workspace and command window
clc
clear

% Define the data
quiz2Data = {1 2 3 4 5 6; 'Sierra College' 'Davis' 'Vacaville' 'Vallejo' 'Berkeley' 'SF State'; 0 36.4 55.4 79.3 98.6 113.6; 0 40 61 82 103 127}';

%% Problem 1
% Create a 3-column array of Way Point, Distance from Sierra College, and Time from Sierra College.

% Cast the data to a numeric values and create the array
quiz2DataTable = cell2mat(quiz2Data(:, [1 3:4]))

%% Problem 2
% Create a 3-column table of Way Point, Distance Traveled, and Time Traveled. Include the table in
% your output. Use any method to create the table—your choice. Your table should have column
% headings with appropriate units.

% Create the table
table(quiz2DataTable(:, 1), quiz2DataTable(:, 2), quiz2DataTable(:, 3), 'VariableNames', {'WayPoint', 'DistanceTraveled (miles)', 'TimeTraveled (minutes)'})

%% Problem 3
% Plot Distance Traveled (y-axis) vs. Time Traveled (x-axis). Use indexing to extract the data from
% your 3-column array to plot the points. Show the data as points on the plot. Title the plot and label
% the axes. Include units on the axis labels.

% Define the figure
figure(30);
problem3Plot = axes;
hold(problem3Plot, 'on');
xlabel(problem3Plot, 'Time Traveled (minutes)');
ylabel(problem3Plot, 'Distance Traveled (miles)');
title(problem3Plot, 'Distance Traveled vs. Time Traveled');

% Plot the data
plot(quiz2DataTable(:, 3), quiz2DataTable(:, 2), '*k', 'Parent', problem3Plot);

%% Problem 4
% Use polyfit() to create a function describing the professor’s trip. Use indexing to extract the data
% from your 3-column array for the polyfit() function. Add this function as a best-fit line to the plot
% from problem 2. Should be a straight line shown through the data points.

% Plot the best fit line
quiz2Fit = polyfit(quiz2DataTable(:, 3), quiz2DataTable(:, 2), 1);
fplot(@(x) quiz2Fit(1) * x + quiz2Fit(2), [0 127], '-r', 'Parent', problem3Plot);
hold(problem3Plot, 'off');

% Add a legend
legend(problem3Plot, 'Data', 'Best Fit Line', 'Location', 'northwest');

%% Problem 5
% Use the data in your 3-column array from Problem 1 and/or the coefficients in your best-fit line to
% create details (shown below) of the professor’s trip to output from your code. Use indexing to extract data from your 3-column array and the polyfit() function output vector to create the values of the trip details. Use fprintf() to report the following details EXACTLY as follows:
%
% The details of the professor’s trip are as follows:
%
% They traveled a total of xx.x miles.
%
% They traveled a total of x.xx hours.
%
% They traveled at an average speed of xx.xx mph.
%
% Report miles to one decimal point. Report time (in hours) to two decimal points. Report average speed (miles per hour) to two decimal points.

% Print the details
fprintf('The details of the professor''s trip are as follows:\n');
fprintf('%31s %.1f miles.\n', "They traveled a total of", quiz2DataTable(end, 2));
fprintf('%31s %.2f hours.\n',"They traveled a total of", quiz2DataTable(end, 3) / 60);
fprintf('%43s %.2f mph.\n',"They traveled at an average speed of", quiz2DataTable(end, 2) / (quiz2DataTable(end, 3) / 60));
