% If  windSpeed is 7.9, then output PowerInterp is 810.6 and outputPowerSpline is 808.2.
[ outputPowerInterp outputPowerSpline ]= EstimateWindTurbinePower(7.9)

function [ outputPowerInterp outputPowerSpline ] = EstimateWindTurbinePower( windSpeed )
    % EstimateWindTurbinePower: Estimates wind turbine output power using two interpolation methods
    %   Inputs: windSpeed - wind speed for power estimate
    %
    %   Outputs: outputPowerInterp - estimated output power using
    %                                linear interpolation
    %            outputPowerSpline - estimated output power using
    %                                spline interpolation
    
    
        windSpeedData = [ 0, 2, 4, 6, 7, 8, 9, 10, 12, 14, 16, 18, 20, 22, 24, 26, ...
                  28, 30 ]; % (m/s)
        outputPwrData = [ 0, 0, 14, 312, 546, 840, 1180, 1535, 2037, 2100, 2100, ...
                  2100, 2100, 2100, 2100, 0, 0, 0 ]; % (kW)
    
        % Assign outputPowerInterp with linear interpolation estimate of output power
        outputPowerInterp = interp1(windSpeedData, outputPwrData, windSpeed); % FIXME
    
        % Assign outputPowerSpline with spline interpolation estimate of output power
        outputPowerSpline = spline(windSpeedData, outputPwrData, windSpeed); % FIXME
    
    end