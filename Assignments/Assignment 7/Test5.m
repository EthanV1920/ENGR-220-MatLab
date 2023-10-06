GetSteamTableData(54, 64)

function selectedData = GetSteamTableData( loTemp, hiTemp )
    % SelectLogicalN: Return rows of the steam table data between input
    % low and high temperatures.. 
    %   Inputs: loTemp, hiTemp - input low and high temperatures for
    %                            indexing rows of steam table
    %
    %   Outputs: selectedData - returned rows of steam table data
    %                           between low and high temperatures
    
        % steamTable: first column is temperature (Celsius)
        steamTable = [ 50, 0.1235, 12.032, 2443.5;
               55, 0.1576,  9.568, 2450.1;
               60, 0.1994,  7.671, 2456.6;
               65, 0.2503,  6.197, 2463.1; ];
    
    
        % Assign tempData with first column of steamTable data
        tempData = steamTable; % FIXME 
        
        % Assign selectedTemps with logical column array of
        % temperatures between loTemp and hiTeamp
        selectedTemps = [ true; true; true; true; ]; % FIXME
            
        % Assign selectedData with specified rows of steamTable (Hint:
        % use row-column indexing and the colon operator)
        selectedData = steamTable; % FIXME
        
    end