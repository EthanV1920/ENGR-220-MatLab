%% Assignment 11.0 ENGR 220
% Ethan Vosburg
%% Problem #1.0
% Write a program in MATLAB that asks a user to input the number of sides of a polygon and creates a plot showing the polygon with the correct number of sides.  You can use your code you created in Assignment 10 and modify it for this assignment. (Hint: consider that the code you wrote to draw your circle doesn’t really draw a circle, but instead draws a “many-sided” polygon.  Use “if” statements to put the appropriate name of the polygon in the title of the plot (you can limit the number of available names in your code to however many you want, but you should name at least the 3-sided through the 6-sided polygons).  Use if statements &/or loops to be sure the user enters a positive integer for the number of sides. Set the center of your polygon to (0, 0) and set the axis limits to just bigger than the radius.  When I wrote my code, I set the center at (0, 0), set my radius to 10, and set my axis limits as:“axis([-12 12 -12 12])”% Ask user to input number of sides of the polygon
n = 4
%n = input('Enter the number of sides of the polygon: ');

% Check if input is a positive integer
while ~(isnumeric(n) && n > 0 && round(n) == n)
    n = input('Please enter a positive integer for the number of sides of the polygon: ');
end

% Create polygon coordinates
radius = 10;
theta = linspace(0, 2*pi, n+1);
x = radius * cos(theta);
y = radius * sin(theta);

% Plot polygon
figure;
plot(x, y);
axis([-12 12 -12 12]);
grid on;

% Add appropriate polygon name to title
if n == 3
    title('Equilateral Triangle');
elseif n == 4
    title('Square');
elseif n == 5
    title('Pentagon');
elseif n == 6
    title('Hexagon');
elseif n == 7
    title('Heptagon');
elseif n == 8
    title('Octagon');
elseif n == 9
    title('Nonagon');
elseif n == 10
    title('Decagon');
elseif n == 11  
    title('Hendecagon');
elseif n == 12
    title('Dodecagon');
elseif n == 13
    title('Tridecagon');
elseif n == 14
    title('Tetradecagon');
elseif n == 15
    title('Pentadecagon');
else
    title(['Polygon with ', num2str(n), ' sides']);
end

axis('square')
