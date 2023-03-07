%% Assignment 5 ENGR 220
% Ethan Vosburg

%% Problem 1
% The surface to volume ratio of the earth is 7.5753 x 10-4 miles-1. 
% Determine an approximate diameter for the earth.

clc;    % Clear command window
clear;  % Clear workspace

% Calculate the surface to volume ration conversion factor 
surfToVol = 7.5753e-4;  % mile^-1

%Calculate the diameter of the earth
earthDiameter = 6/surfToVol;    % miles

fprintf("\nThe approximate diameter of the earth if: %4.0f miles\n", earthDiameter);

%% Problem 2
%
% The length L of a belt that traverses two pulley wheels, one of radius
% R and one of radius r and whose centers are distance S apart is given by 
%
% $$L = 2 S cos(\theta) + \pi(R + r) + 2\theta(R - r) {; Where a} \theta =  sin^{-1}((R -r)/S)$$
%
% Determine L when R = 30 cm, r =12 cm, and S =50 cm. (Remember: MATLAB likes angles in radians).

clear;  % Clear workspace

R = 30; % cm
r = 12; % cm
S = 50; % cm
theta = asin((R-r)/S);

beltLength = (2 * S * cos(theta)) + (pi * (R + r)) + (2 * theta * (R - r));
fprintf("\nThe length of the belt is: %3.1f cm\n", beltLength);

%% Problem 3
% 
% A geometric series is defined as
% 
% $$sequence = x^0, x^1, x^2, x^3 . . . $$
% 
% in which the powers of x range over the integers from 0 to infinity.  
% The sum of the terms in a geometric series converges to the limiting
% value of
% 
% $$1 / (1 - x) \textit{ if } |x| < 1$$
% 
% otherwise the sum diverges.

%% Problem 3.a
% For x = 0.63, compute the sum of the first 11 terms in the series, 
% and compare the result with the limiting value. Repeat for 51 and 101
% terms.  Do this by generating a vector of integers to use as the exponent
% of x; then use the sum function.

problem3a = 0.63;

limitingValuea = LimitingValue(problem3a);

geo11a = GeometricSeries(problem3a,11);
geo11aSum = sum(geo11a);

geo51a = GeometricSeries(problem3a,51);
geo51aSum = sum(geo51a);

geo101a = GeometricSeries(problem3a,101);
geo101aSum = sum(geo101a);

fprintf("\nWith a x value of %1.2f yields a limiting value of %1.4f and ending the series at 11, 51, and 101 yields %1.4f, %1.4f, and %1.4f respectively.\n", problem3a, limitingValuea, geo11aSum, geo51aSum, geo101aSum);
fprintf("Comparing the limiting value to the calculated values, there is no change after the value of 51 for the first 4 significant figures.\n")

%% Problem 3.b
% Repeat part (a) using x = -0.63.

problem3b = -0.63;

limitingValueb = LimitingValue(problem3b);

geo11b = GeometricSeries(problem3b,11);
geo11bSum = sum(geo11b);

geo51b = GeometricSeries(problem3b,51);
geo51bSum = sum(geo51b);

geo101b = GeometricSeries(problem3b,101);
geo101bSum = sum(geo101b);

fprintf("\nWith a x value of %1.2f yields a limiting value of %1.4f and ending the series at 11, 51, and 101 yields %1.4f, %1.4f, and %1.4f respectively.\n", problem3b, limitingValueb, geo11bSum, geo51bSum, geo101bSum);
fprintf("Comparing the limiting value to the calculated values, there is no change after the value of 51 for the first 4 significant figures.\n")


%% Problem 4
% 
% A water tank consists of a cylindrical part of radius r and height h, and a
% hemispherical top. The tank is to be constructed to hold 500 m^3 of fluid 
% when filled.  The surface area of the cylindrical part is $$2 \pi rh$ (cylindrical 
% part) + $$\pi r^2$ (flat bottom), and its volume is $$\pi r^2h$.  The surface area of the 
% hemispherical top is given by $$2 \pi r^2$, and its volume is given by $${2 \pi r^3} \over 3$. The 
% cost to construct the cylindrical part of the tank is $300.00/m^2 surface area; 
% the hemispherical part costs $400.00/m^2. Plot the cost versus r for the 
% interval 2 m < r < 10 m, and determine the radius that results in the least 
% cost. Compute the corresponding height, h.

% Given Values
volume = 500; % m^3

% Solving for height
% height = ((volume-(2/3*pi*R^3))/((pi*R^2)));
solve(((500-(2/3*pi*R^3))/((pi*R^2))), R, 'MaxDegree', 3)

%% Problem 5
%
% At Edsel Automotive, the management team is planning to expand one of its plants by adding a 
% new assembly line for sport utility vehicles (SUVs). The cost of setting up the new SUV assembly 
% line is estimated at $7 million. The cost of manufacturing (raw materials, labor, etc.) an SUV 
% is $36,000 and the company is planning to sell each SUV for $38,500.
% Industrial engineers at Edsel say that the new assembly line will roll off nine SUVs per day. 
% How many days will it take for the company to be at the break-even point?

% First solve this problem algebraically, and then make a graph of cost vs. quantity and revenue 
% vs. quantity (on the same graph).  Revenue is generated from the sales of the SUV's. 
% Verify the algebraic answer using the graph.

setupCost = 7e6; % Cost in Dollars
suvCost = 3.6e4; % Cost in Dollars
suvSaleCost = 3.85e4; % Cost in Dollars
suvPerDay = 9; % Number of Cars

totalIncome = (suvSaleCost - suvCost) * suvPerDay;
daysTillEven = setupCost / totalIncome;

costVector = zeros(1,2);
revenueVector = zeros(1,2);

costVector(2) = 365*suvCost;
revenueVector(2) = 365*suvSaleCost;
figure(2);

axes1 = axes();
hold(axes1,'on');

fplot(@(x) x*suvCost, [0 365],'Parent',axes1,'MarkerSize',6);
fplot(@(x) x*totalIncome, [0 365],'Parent',axes1,'MarkerSize',6);
fplot(@(x) setupCost, [0 365],'Parent',axes1,'MarkerSize',6);
grid on;

% Create title
title({'Cost and Revenue versus Quantity of SUVs Manufactured'});

% Create ylabel
ylabel({'Cost and Revenue of Cars ($)'});

% Create xlabel
xlabel({'Number of Cars'});
% Set the remaining axes properties
set(axes1,'ContextMenu');
box(axes1,'on');
grid(axes1,'on');
axis(axes1,'tight');
hold(axes1,'off');

% Create textarrow
annotation('textarrow',[0.751785714285714 0.783928571428571],...
    [0.411904761904762 0.492857142857143],'Color',[1 0 0],'TextColor',[1 0 0],...
    'String',{'Break Even Point'});

% Create ellipse
annotation('ellipse',...
    [0.770642857142857 0.516666666666667 0.0400714285714288 0.0523809523809547],...
    'Units','points',...
    'Color',[1 0 0],...
    'LineWidth',2);





%% Created Functions

function geoVector = GeometricSeries(xValue, upperLimit)
%GeometricSeries - A geometric series is defined as x^0, x^1, x^2, x^3...
%
    geoVector = zeros (1,upperLimit);   % Create a properly sized array to improve performance
    for i = 1:upperLimit    % Iterate through array building geometric sequence
        geoVector(i) = xValue^(i-1);
    end
end

function limitValue = LimitingValue(xValue)
%LimitingValue - A limiting value defined as 1 / (1 - x) if |x| < 1
%
    limitValue = 1 / (1 - xValue);
end
