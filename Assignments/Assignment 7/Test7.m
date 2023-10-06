% inAr= [ 34   25   95   25;
%    58   50   54   84;
%    22   69   13   25;
%    75   89  14   81];
% GenMatBorder( inAr )

x=rand(randi(10,1,1),randi(10,1,1))
output = GenMatBorder(x)

function [outMat] = GenMatBorder( inMat )
    [xSize, ySize] = size(inMat);
    outMat = inMat;
    outMat(1, :) = 0;
    outMat(xSize, :) = 0;
    outMat(:, 1) = 0;
    outMat(:, ySize) = 0;

    
end