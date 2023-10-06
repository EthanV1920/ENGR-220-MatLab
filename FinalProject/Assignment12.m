%% Assignment 12.0 ENGR 220
% Ethan Vosburg
%% Problem #1.0
% 1. Consider the following system of equations:  5A –  2B - 6C = –1412A + 5B – 7C = –26  6A – 3B + 4C =  41a. Solve the system using MATLAB left division (zyBook calls this "using the backslash operator ". Use MATLAB commands to create the appropriate array to represent the systems of equations. Think of the system as Ax = b where A is the coefficient matrix; solve using MATLAB left division A\b.b. Solve using Cramer’s method.  Use the det function and division to determine the values of the unknowns in both systems.c. Solve using Gauss’ method. Initialize each variable by setting it equal to zero; use a “for” loop or "while" loop to solve for the unknowns in both systems.                    Run the loop 4 times. What are the values of the unknowns?                    Run the loop 10 times. What are the values of the unknowns?d. Compare the answers you found from the different methods.  Which is the best method?  (Consider time to run, lines of code, etc.).

% Creating coefficient matrix
A = [5 -2 -6; 2 -5 7; 6 -3 4];
% Creating the b matrix
b = [-14; -2; 41];

% Solving using backslash operator
x = A\b

% Solving using Cramer's method
% Determinants of matrix A
D = det(A);
% Determinants of matrix A with column 1 replaced by b
D1 = det([b A(:,2:3)]);
% Determinants of matrix A with column 2 replaced by b
D2 = det([A(:,1) b A(:,3)]);
% Determinants of matrix A with column 3 replaced by b
D3 = det([A(:,1:2) b]);
% Solving for unknowns
x1 = D1/D;
x2 = D2/D;
x3 = D3/D;

% Solving using Gauss' method
% Initializing variables
x1 = 0;
x2 = 0;
x3 = 0;
% Looping 4 times
for i = 1:4
    x1 = (-2*x2 - 6*x3 - 141)/5;
    x2 = (7*x3 - 26 + 2*x1)/5;
    x3 = (41 - 6*x1 + 3*x2)/4;
end
% Values after 4 iterations
x1
x2
x3
% Looping 10 times
for i = 1:10
    x1 = (-2*x2 - 6*x3 - 141)/5;
    x2 = (7*x3 - 26 + 2*x1)/5;
    x3 = (41 - 6*x1 + 3*x2)/4;
end
% Values after 10 iterations
x1
x2
x3

% Comparing answers
% As all the methods gives the same answer, any method can be selected
% based on the requirement of the user such as time, lines of code, etc.
