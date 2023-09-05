function f = factorial(inputArg1)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if inputArg1 == 0
    f =1;
end
if inputArg1 < 0
    disp("Error")
end
if inputArg1 > 0
    f = 1;
    for i = 1 : inputArg1
        f = f * i;
    end
end
end

