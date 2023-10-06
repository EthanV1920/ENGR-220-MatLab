arrayOne = [2, 4, 8];  arrayTwo = [3, 9, 27];
[ arrayThree ] = interleave( arrayOne,arrayTwo )

function [ arrayThree ] = interleave( arrayOne, arrayTwo )
    % Interleave two row arrays of equal length,
    % arrayOne and arrayTwo, to create a row array arrayThree
    % that interleaves the entries in arrayOne and arrayTwo such that   
    % arrayThree = [arrayOne(1), arrayTwo(1), arrayOne(2) ,arrayTwo1(2), …]
    %
    % Create a 2D array with arrayOne in 1st row and arrayTwo in 2nd row
        C1= [arrayOne; arrayTwo];  % complete the code
    % Flatten C1 and take transpose 
        arrayThree = C1(:)';
    % arrayThree = zeros(1,2*numel(arrayOne));
    % for i = 1:(numel(arrayOne))
    %     arrayThree((2*i)-1) =C1(1, i);
    %     arrayThree(2*i) =C1(2, i);
    % end
    end