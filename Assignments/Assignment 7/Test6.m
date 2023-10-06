A2 = [1, 2, 3, 4, 5, 6]
B2 = [10, 20, 30]
C3 = interleaveMod(A2, B2)

function [ arrayThree ] = interleaveMod( arrayOne,arrayTwo )
  
    if numel(arrayOne) >= numel(arrayTwo)
        smallArray = numel(arrayTwo);
        C = [arrayOne(1:smallArray); arrayTwo];
        arrayThree = [C(:)', arrayOne((smallArray+1):end)];
    end
    
    if numel(arrayTwo) > numel(arrayOne)
        smallArray = numel(arrayOne);
        C = [arrayOne; arrayTwo(1:smallArray)];
        arrayThree = [C, arrayTwo(smallArray+1:end)];
    end

end