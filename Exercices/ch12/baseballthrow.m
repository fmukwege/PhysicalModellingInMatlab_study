function res = baseballthrow(theta)
options = odeset("Event",@event_func);
P = [0; 1]; % initial position in m
v = 50; % norm of the velocity vector
[Vx,Vy] = pol2cart(theta,v);
V = [Vx;Vy];
W = [P; V]; % initial condition
tspan = [0 10];
[T, M] = ode45(@rate_func, tspan, W,options); % with the options, the solver stops when Y = 0 (touch the ground)
res = [M(end,1),max(M(:,2))]; % no need to max(M)
end