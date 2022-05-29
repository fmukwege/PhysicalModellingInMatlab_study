function res = lorenz_frank()
clear all:close all;clc;
t = linspace(0,300); V0 = [1,2,3];

[T,V] = ode45(@eqmotion,t,V0);
whos V;
plot3(V(:,1),V(:,2),V(:,3))
res = [T,V];
end

function res = eqmotion(t,V)
% Unpack variables
x = V(1);
y = V(2);
z = V(3);
% constants
sigma = 10;
b = 8/3;
r = 28;
dt = 0.01;
% equations
dxdt = sigma*(y-x);
dydt = (x*(r-z))-y;
dzdt =(x*y-b*z);
% return
res = [dxdt;dydt;dzdt];
end