%% fibonacci_2 
% Improvement of the fibonacci algorithm using vector

F = zeros(n,1);
F(1),F(2) = 1;

for i=3:n
    F(i) = F(i-1) + F(i-2);
end

