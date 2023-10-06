[ newMatrixA, deletedElems ] = DeleteRowColumn([ 1, 3, 2; 4, 9, 5; 6, 7, 8; ], 1, 2)


function [ newMatrixA, deletedElems ] = DeleteRowColumn( origMatrixA, delRow, delCol )
    % DeleteRowColumn: Delete the row and column specified by delRow
    % and delCol from input matrixA and returns the modified matrix and
    % the deleted elements as a column array.
    %   Inputs: origMatrixA - input matrix
    %           delRow - row to delete
    %           delCol - column to delete
    %
    %   Outputs: newMatrixA - input matrix with specified row and column deleted 
    %            deletedElems - deleted elements from input matrix
    %                           returned as a column array
    
        % Assign newMatrixA with origMatrixA
        newMatrixA = origMatrixA;
        
        % Assign deletedElems with row of newMatrixA to be deleted 
        % (Hint: Use the transpose operator to convert a row to a column)
        deleatedRow = newMatrixA(delRow, :)';  % FIXME
        
        % Remove row delRow from newMatrixA
        newMatrixA(delRow, :) = [];    % FIXME
    
        % Append deletedElems with the with column of newMatrixA to be deleted
        % deleatedCol = newMatrixA(:, delCol);  % FIXME
        
        deletedElems = cat(1,deleatedRow, newMatrixA(:, delCol));

        % Remove column delCol from newMatrixA
        newMatrixA(:, delCol) = [];    % FIXME
    
    end
