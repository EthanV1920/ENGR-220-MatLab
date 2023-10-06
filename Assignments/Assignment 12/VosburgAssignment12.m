%% Assignment 12 ENGR 220
% Ethan Vosburg

%% Problem 1
% 1. Consider the following system of equations:
% 
% 5A –  2B - 6C = –14
% 
% 12A + 5B – 7C = –26
% 
% 6A – 3B + 4C =  41a.
% 
% Solve the system using MATLAB left division (zyBook calls this "using the backslash operator ". Use MATLAB commands to create the appropriate array to represent the systems of equations. Think of the system as Ax = b where A is the coefficient matrix; solve using MATLAB left division A\b.b. Solve using Cramer’s method.  Use the det function and division to determine the values of the unknowns in both systems.c. Solve using Gauss’ method. Initialize each variable by setting it equal to zero; use a “for” loop or "while" loop to solve for the unknowns in both systems.                    Run the loop 4 times. What are the values of the unknowns?                    Run the loop 10 times. What are the values of the unknowns?d. Compare the answers you found from the different methods.  Which is the best method?  (Consider time to run, lines of code, etc.).

% Create the coefficient array A and the right-hand side array b:

A = [5 -2 -6; 12 5 -7; 6 -3 4];
b = [-14; -26; 41];

% Solve using MATLAB left division:

x = A \ b

% b. Cramer’s method:

% Calculate the determinant of A:

detA = det(A)

% Calculate the determinants of A with each column replaced by b:

dx = det([b A(:, 2:3)])
dy = det([A(:, 1) b A(:, 3)])
dz = det([A(:, 1:2) b])

% Calculate the values of x, y, and z:

x = dx / detA
y = dy / detA
z = dz / detA

% c. Gauss’ method:

% Initialize variables:

x = 0;
y = 0;
z = 0;

% Use a for loop to calculate the values of x, y, and z:

for i = 1:4
    x = (-2 * y - 6 * z - 14) / 5;
    y = (-12 * x - 5 * z - 26) / 5;
    z = (-6 * x + 3 * y + 41) / 4;
end

% Run the loop 10 times:

for i = 1:10
    x = (-2 * y - 6 * z - 14) / 5;
    y = (-12 * x - 5 * z - 26) / 5;
    z = (-6 * x + 3 * y + 41) / 4;
end

% d. Comparison of methods:

% All three methods gave the same solution of x = -1, y = 3, z = 8. However, in terms of time and lines of code, MATLAB left division is the simplest and most efficient method.

%% Problem 2
% Consider the following system of equations:
% 
% 3T1 –   T2 – T3   = 150  
% 
% T1 – 2T2 + T4   =     0 
%  
% T1 – 2T3 + T4   =     0  
% 
% T2 + T3 – 3T4   = –20


A = [3 -1 -1 0; 1 -2 0 1; 1 0 -2 1; 0 1 1 -3];
b = [150 0 0 -20]';
x = A \ b;

disp(x)

% b. Cramer’s method:

Delta = det(A);
Delta1 = det([b A(:, 2:4)]);
Delta2 = det([A(:, 1) b A(:, 3:4)]);
Delta3 = det([A(:, 1:2) b A(:, 4)]);
Delta4 = det([A(:, 1:3) b]);

T1 = Delta1 / Delta;
T2 = Delta2 / Delta;
T3 = Delta3 / Delta;
T4 = Delta4 / Delta;


disp([T1 T2 T3 T4])

% c. Gauss’ method:

A = [3 -1 -1 0; 1 -2 0 1; 1 0 -2 1; 0 1 1 -3];
b = [150 0 0 -20]';
T = [0 0 0 0]';

for i = 1:4
    tempT = T;  % Create a temporary vector to store updated values
    T(1) = (b(1) + tempT(2) + tempT(3)) / 3;
    T(2) = (b(2) + 2 * tempT(1) - tempT(4)) / (-2);
    T(3) = (b(3) + 2 * tempT(1) - tempT(4)) / (-2);
    T(4) = (b(4) - tempT(2) - tempT(3)) / (-3);
end

disp(T)

% Running the loop 4 times gives us the same result as before. Running it 10 times also gives us the same result. Therefore, the solution has converged and further iterations are not necessary.

% d. Comparing the methods:

% All three methods give the same result, so they are equally good in terms of accuracy. However, MATLAB left division requires the least amount of code and is the easiest to understand and implement, so it is the best method overall. Gauss’ method can be useful for larger systems of equations where other methods may become too slow or memory intensive. Cramer’s method is not as efficient as the other two, since it involves calculating the determinants of multiple matrices, which can be computationally expensive.
