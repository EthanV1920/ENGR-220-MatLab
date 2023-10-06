AdjustValue(-6)

function userValue = AdjustValue(userValue)
    % Write a while loop that adjusts a userValue while userValue is less than 0 
    % or greater than 80
    while (userValue > 80 || userValue < 0)
        if (userValue > 80)
            userValue = userValue - 5;
        elseif(userValue < 0)
            userValue = userValue + 10;
        end
    end
        % If the userValue is greater than 80, then subtract 5 from userValue
    
        % If the user value is less than 0, then add 10 to userValue

end