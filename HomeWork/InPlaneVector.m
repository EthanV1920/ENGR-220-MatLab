CheckInPlane([2, 0, -1], [0, 1, 0])

function inPlane = CheckInPlane( testVector, normalVector )
    
    % Assign inPlane with 1 (true) if testVector lies in samplePlane, 0 (false) otherwise.
    if dot(testVector, normalVector) == 0
        inPlane = 1;
    else
        inPlane = 0;
    end
 
end