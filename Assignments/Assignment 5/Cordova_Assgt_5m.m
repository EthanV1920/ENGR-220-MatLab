%% Assignment 5 ENGR 220
% Luis Cordova

%% Problem 1
% The surface to volume ratio of the earth is 7.5753e-4/mile. Determine an
% approximate diameter for the earth.

clc
clear

% Given Variables
surfToVol = 7.5753e-4; % miles^-1
% With a little algebea, can show surfToVol = 6/d
% So, d = g/surftoVol, d = diameter of earth
d = 6/surfToVol; %miles

% output using fprintf:
fprintf("The approximate diameter of the earth is: %4.0f miles/n",d);

%% Problem 2
% The length L of a belt that traverses two pulley wheels, one of the
% radius R and one of radius r and whose centers are distance s apart is
% given by: L=2Scos(theta)+pi(R+r)+2(theta)(R-r); where
% theta=sin^-1((R-r)/S)

%Determine L when R=30cm, r=12cm, and S=50cm. Angles in radians in MATLAB

clc
clear

% Given Variables
R = 30; % cm
r = 12; % cm
S = 50; % cm 
theta = asin((R-r)/S); % radians
%Use Formule to calculate L, lenght of belt in cm
L = (2*S*cos(theta))+(pi*(R+r))+(2*(theta)*(R-r)); % cm

% use fprintf to out soultion:
fprintf("The length of the belt is: %4.1f cm/n",L);

%% Problem 3
% A geometric series is defined as the sequence 1,x, x^2, x^3,... in which
% the power of x range over the integers from 0 to infinity. The sum of
% terms in a geometric series converages to the limiting value of 1/(1-x)
% if x<1; otherwise the sum diverges.
% a. For x=0.63, compute the sum of the first 11 terms in the series, and
% compare the result with the limiting value. Repeating for 51 and 101
% terms. Do this by generating a vector of integers to use as the exponent
% of x; then use the sum function.
clc
clear

n=10
x=0.63
function [sumofX]= seriesSum(x,n)
sumofX = sum((x.^(0:n))
end
% b. Repeat part (a) using x=-0.63.

%% Problem 4
% A water tank consists of a cylinderical part of raduis r and height h,
% and a hemispherical top. The tank is to be constructed to hold 500m^3 of
% fluid when filled. The surface area of the cylindrical part of the tank 
% is $300.00/m2 surface area; the hemispherical part costs $400.00/m2. Plot
% the cost versus r for the interval 2 m < r < 10 m, and determine the 
% radius that results in the least cost.Compute the corresponding height,h.
clc 
clear

% Given Variable
V= 500 % m^3
% Set a Range for R
R= [2:0.01:10];
% Finding the Volume Total by adding volume of hemisphere(Vs) and 
% cylinder(Vc):
% Vc= pi*R^2*h
% Vs= 2/3*pi*R^3
% V=Vc+Vs
% V= pi*R^2*h + 2/3*pi*R^3
% Do some algebea and solve for h.
h= ((V-(2/3.*pi.*R.^3))./((pi.*R.^2)));

% calculate the cost formula by adding area surface cost of hemisphere and 
% a cylinder.
% Cost of area for hemisphere:
Cost_s= 400*(2.*pi.*R.^2);
% Cost of area of cylinder:
Cost_c= (300*(2.*pi.*R.*h+(pi.*R.^2)));
% total cost:
Cost= Cost_s+Cost_c
% find the minium cost and it's index:
[minCost, index] = min(Cost)
R(index)
disp(h(index))
minCost
% Plot 
plot(R, Cost, R(index), minCost, 'o'), xlabel('R'), ylabel('Cost')
fprintf("")




%% Problem 5
% At Edsel Automotive, the management team is planning to expand one of its
% plants by adding a new assembly line for sport utility vehicles (SUVs). 
% The cost of setting up the new SUV assembly line is estimated at $7
% million. The cost of manufacturing (raw materials, labor, etc.) an SUV is 
% $36,000 and the company is planning to sell each SUV for $38,500.

% Industrial engineers at Edsel say that the new assembly line will roll
% off nine SUVs per day. How many days will it take for the company to be 
% at the break-even point?

% First solve this problem algebraically, and then make a graph of cost vs.
% quantity and revenue vs. quantity (on the same graph). Revenue is 
% generated from the sales of the SUV's. Verify the algebraic answer using 
% the graph.


