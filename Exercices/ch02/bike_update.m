%% bike_update.m
% Update the evolution of bike within the population of Boston and
% Cambridege

rate_b = 0.05;
rate_c = 0.03;

f_b = b*(1-rate_b) + c*(rate_c);
f_c = c*(1-rate_c)- b*(rate_b);

b = round(f_b); c = round(f_c);
display(b)
display(c)