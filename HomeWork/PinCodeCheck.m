pinCode = [2,9,9,5,5,3];
[ repPos, pinCodeFix ] = pinCodeCheck( pinCode )

function [ repPos, pinCodeFix ] = pinCodeCheck( pinCode )
    pinCodeFix = pinCode;
    keepIdx = [true];
    repPos = [];

    for i = 2:numel(pinCodeFix)
        if (pinCode(i-1) == pinCode(i))
            repPos = [repPos i];
            keepIdx(1, i) = false;
        else
            keepIdx(1, i) = true;
        end
    end

    pinCodeFix = pinCodeFix(keepIdx);

end