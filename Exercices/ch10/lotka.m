function res = lotka()
t = linspace(0,1000,100000);
V0 = [80,20];
res = ode45(@rate_func,t,V0);

plot(res.y(1,:),res.y(2,:))
end
function res = rate_func(t,V)
% Unpack variables
x = V(1);
y = V(2);
% Define constants and coefficients
a = 0.1;
b = 0.01;
c = 0.1;
d = 0.002;

% Equations
dxdt = a*x - b*x*y;
dydt = -c*y + d*x*y;

res = [dxdt;dydt];
end