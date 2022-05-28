%% ex4_4
clear all; close all;
%% 1. Equations
clear all;clc;
n = 10000;
sigma = input("sigma = ");
b = input("b = ");
r = input("r = ");
dt = 0.01;
X = zeros(n,1);
Y = zeros(n,1);
Z = zeros(n,1);

X(1) = input("X = "); Y(1) = input("Y = "); Z(1) = input("Z = ");
for i=1:n
    X(i+1) = X(i) + sigma*(Y(i)-X(i))*dt;
    Y(i+1) = Y(i) + (X(i)*(r-Z(i))-Y(i))*dt;
    Z(i+1) = Z(i) + (X(i)*Y(i)-b*Z(i))*dt;
end
comet3(X,Y,Z)







