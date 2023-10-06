%%  Hello World Demo
%   Ethan Vosburg
%   February 6, 2023
%   This is a test file to confirm working in MatLab

%% Display Hello World
disp('Hello World')

%%  Linspace Function
xValues = linspace(1,5,5);

%%  Adding Numbers Together 
numberOne = 54;
numberTwo = 45;

numberThree = numberOne * numberTwo


%%  Create a Plot
yValues = linspace(1,3,5);

plot(xValues, yValues)
hold

% x = -pi:pi/10:pi;
% y = tan(sin(x)) - sin(tan(x));

% figure
% plot(x,y,'--gs',...
%     'LineWidth',2,...
%     'MarkerSize',10,...
%     'MarkerEdgeColor','b',...
%     'MarkerFaceColor',[0.5,0.5,0.5])