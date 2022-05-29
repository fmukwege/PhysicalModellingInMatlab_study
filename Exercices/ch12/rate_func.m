function res = rate_func(t, W)
P = W(1:2); % position
V = W(3:4); % velocity
dPdt = V;
dVdt = acceleration(t, P, V);
res = [dPdt; dVdt];
end
function res = acceleration(t, P, V)
g = 9.8; % acceleration due to gravity in m/s^2
a_gravity = [0; -g];
res = a_gravity;
end