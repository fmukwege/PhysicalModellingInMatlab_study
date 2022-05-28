%% ex4_3
clear all;

n = input("n ?"); 
Y = zeros(n,1);
fibonacci_2;

for i=2:length(F)
    Y(i-1) = (F(i)/F(i-1));
end

plot(Y)% Golden number

