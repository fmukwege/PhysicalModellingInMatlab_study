% baseball.m 
clear all; close all; clc;

%% computations
% compute the 2D trajectory of a ball 
options = odeset("Event",@event_func);
P = [0; 1]; % initial position in m
V = [40; 30]; % initial velocity in m/s
W = [P; V]; % initial condition
tspan = [0 8];
[T, M] = ode45(@rate_func, tspan, W,options); % with the options, the solver stops when Y = 0 (touch the ground)


figure("Name","X-Y plot of a ball thrown in function of time");
plot(T,M(:,1));hold on; plot(T,M(:,2));
legend("X [m]","Y [m]");
xlabel("t [s]");
ylabel("Y or X [m]");