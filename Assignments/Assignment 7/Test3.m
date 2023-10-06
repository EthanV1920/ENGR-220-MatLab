SelectLogicalN( [ -2, 3, 6; 5, 78, 44; 9, -3, -53; ], ...
		[ true, false, false; false, false, true; true, true, true; ], ...
                4)

function selectedData = SelectLogicalN( dataMatrix, logicalSelect, numSelected )
    % SelectLogicalN: Return the first numSelected values of input 2D
    % array dataMatrix indexed by localSelect indexing array. 
    %   Inputs: dataMatrix - input data matrix (2D array)
    %           logicalSelect - logical indexing array, can be 2D or linear 
    %           numSelected - number of indexed elements to return in selectedData 
    %
    %   Outputs: selectedData - column vector of logically indexed elements to return
    
        % Assign tempSelected with logically indexed elements of dataMatrix
        tempSelected = dataMatrix(logicalSelect);

        % Assign selectedData with first numSelected elements of tempSelected 
        selectedData = tempSelected(1:numSelected);
        
    end
                    