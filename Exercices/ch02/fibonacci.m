%% fibonacci.m
% Computes a numerical approximation of the nth Fibonacci number.
% Precondition: you must assign a value to n before running this script.
% Postcondition: the result is stored in ans.

F_1 = 1;
F_2 = 1; 
F = 0;
for i=1:n
    F = F_1 + F_2;
    temp = F_1;
    F_1 = F;
    F_2 = temp;
end

F