topSpeeds=[155; 217; 205; 205; 197; 258; 195; 270; 155; 195];
carNames=char('BMW M5',...
                   'Lamborghini Aventador Spyder',...
                   'Ferrari 488',...
                   'Nissan GTR',...
                   'Chevrolet Corvette Stingray ZR1',...
                   'Bugatti Veyron Supersport',...
                   'Dodge Viper',...
                   'Hennessey Venom',...
                   'BMW M3',...
                   'Mercedes SL');
lowerBound = 200; upperBound = 280;
[ identifiedCars ] = selectCars( topSpeeds, carNames, lowerBound, upperBound);

function identifiedCars = selectCars(topSpeeds, carNames, lowerBound, upperBound)
    % select cars that have top speed within a given range
    % and display the names to the command line.  
    % Inputs: column array topSpeeds with top speeds in mile/hour,
    %            corresponding column string array carNames with the  car names
    %            lowerBound and upperBound  in km/h
    %.
    
    %   Convert topSpeeds to km/h
        topSpeeds =  topSpeeds.*1.609;
    %  Create a logical array to extract the indices to the desired cars 
        logicalIndexArray =  topSpeeds > lowerBound & topSpeeds < upperBound;

        identifiedCars = carNames(logicalIndexArray,:);
        disp(identifiedCars)
    end
    