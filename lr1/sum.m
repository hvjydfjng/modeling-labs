function res = sum(eps)
format long
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
res1 = 1/1;
res2 = 1/(2^2);
i = 3;
S1 = res1;
S2 = res1 + res2;
while abs(S2-S1) > eps 
    S1 = S2;
    S2 = S2 + 1/(i^2);
    i = i + 1;
end
res = S1; 
end

