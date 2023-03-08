%% Assignment 7
% Ethan Vosburg 

%% Problem 1
% Allow the variable “t” to vary over the range 0 to 10π with increments of π/50.  
% Plot the following equations on an x-y-z orthogonal axis system.

figure(10);

fplot3(@(t) exp(-0.05*t)*sin(t), @(t) exp(-0.05*t)*cos(t), @(t) t, [0 10*pi]);

% Create title
title({'Problem 1 Plotted Equation System'});

% Create ylabel
ylabel({'y'});

% Create xlabel
xlabel({'x'});

% Create zlabel
zlabel({'z'});

%% Problem 2
% Let x and y vary between -2 and 2 with increments of 0.2. For the function:

figure(20);
[X,Y] = meshgrid(-2:.2:2);
Z = X .* exp(-(X.^2 + Y.^2));

subplot(2,3,1)

% Mesh Plot
meshFig = mesh(Z,'FaceAlpha','0.5');

% Create title
title({'Problem 2 Mesh'});

% Create ylabel
ylabel({'y'});

% Create xlabel
xlabel({'x'});

% Create zlabel
zlabel({'z'});


subplot(2,3,2)

% Mesh Plot with Contour
meshcFig = meshc(Z,'FaceAlpha','0.5');

% Create title
title({'Problem 2 Meshc'});

% Create ylabel
ylabel({'y'});

% Create xlabel
xlabel({'x'});

% Create zlabel
zlabel({'z'});


subplot(2,3,3)

% Mesh Plot with Curtain
meshzFig = meshz(Z,'FaceAlpha','0.5');

% Create title
title({'Problem 2 Meshz'});

% Create ylabel
ylabel({'y'});

% Create xlabel
xlabel({'x'});

% Create zlabel
zlabel({'z'});


subplot(2,3,4)

% Waterfall Plot
waterfallFig = waterfall(Z);

% Create title
title({'Problem 2 Waterfall'});

% Create ylabel
ylabel({'y'});

% Create xlabel
xlabel({'x'});

% Create zlabel
zlabel({'z'});


subplot(2,3,5)

% Contour Plot
contourFig = contour(Z);

% Create title
title({'Problem 2 Contour'});

% Create ylabel
ylabel({'y'});

% Create xlabel
xlabel({'x'});

% Create zlabel
zlabel({'z'});


subplot(2,3,6)

% 3D contour plot
contour3Fig = contour3(Z);

% Create title
title({'Problem 2 3D Contour'});

% Create ylabel
ylabel({'y'});

% Create xlabel
xlabel({'x'});

% Create zlabel
zlabel({'z'});

%% Problem 3
% Quenching is the process of immersing a hot metal object in a bath for a specified time to obtain certain 
% properties (such as hardness).  A copper sphere 25 mm in diameter, initially at 300°C, is immersed in a bath at 0°C. 
% The following are the measured data of temperature vs. time (time is the independent variable on the horizontal axis):  

problem3Data = [[0, 300]; [1, 150]; [2, 75]; [3, 35]; [4, 12]; [5, 5]; [6, 2]];

problem3Data(:, 3) = log(problem3Data(:, 1));
problem3Data(:, 4) = log(problem3Data(:, 2));

%% Problem 3a
% Find a functional description of these data.  Do this by creating four (linear-linear, semilogx, semilogy, log-log) 
% subplots and inspecting said subplots for the most “linear”.

figure(30);

problem3aLinLin = subplot(2,2,1);
plot(problem3Data(:, 1),problem3Data(:, 2),'*r' ,'Parent', problem3aLinLin);
[]
xlabel(problem3aLinLin, "X (Linear)");
ylabel(problem3aLinLin, "Y (Linear)");
title(problem3aLinLin, "Problem 3a Linear vs. Linear");
grid(problem3aLinLin, 'on');


problem3aLinLog = subplot(2,2,2);
plot(problem3Data(:, 1),problem3Data(:, 4),'*r' , 'Parent', problem3aLinLog);
xlabel(problem3aLinLog, "X (Linear)");
ylabel(problem3aLinLog, "Y (Log)");
title(problem3aLinLog, "Problem 3a Linear vs. Linear");
grid(problem3aLinLog, 'on');


problem3aLogLin = subplot(2,2,3);
plot(problem3Data(:, 3),problem3Data(:, 2),'*r' , 'Parent', problem3aLogLin);
xlabel(problem3aLogLin, "X (Log)");
ylabel(problem3aLogLin, "Y (Linear)");
title(problem3aLogLin, "Problem 3a Linear vs. Linear");
grid(problem3aLogLin, 'on');


problem3aLogLog = subplot(2,2,4);
plot(problem3Data(:, 3),problem3Data(:, 4),'*r' , 'Parent', problem3aLogLog);
xlabel(problem3aLogLog, "X (Log)");
ylabel(problem3aLogLog, "Y (Log)");
title(problem3aLogLog, "Problem 3a Linear vs. Linear");
grid(problem3aLogLog, 'on');

%% Problem 3b
% Plot the function and the data on the same plot.

%% Problem 3c
% Create a table of the given data using fprintf. Your output table should have two columns: one column with the “Time” 
% heading and one with the “Temp” heading, including units, of course.  Your table should be properly formatted for 
% output in the published (pdf) file.

%% Problem 4
% The useful life of a machine bearing depends on its operating temperature (see data).  Obtain a functional description 
% of these data (use the same process as in Problem 3).  Plot the function and the data on the same plot (Temperature is 
% the independent variable on the horizontal axis).  Use your plot and function to estimate the bearing’s life if it 
% operates at 150°F.

Temperature and Bearing Life Data for Problem 4  

% Create a table of the given data using fprintf. Your output table should have two columns: one column with the 
% “Temperature” heading and one with the “Bearing Life” heading, including units, of course.  Include the estimated 
% bearing life at 150°F in the table. Your table should be properly formatted for output in the published (pdf) file.