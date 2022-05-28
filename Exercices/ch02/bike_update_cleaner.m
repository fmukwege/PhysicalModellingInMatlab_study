%% bike_update2.m
% Update the evolution of bike within the population of Boston and
% Cambridge

b_to_c = 0.05*b - 0.03*c
b = b - b_to_c
c = c + b_to_c

display(b)
display(c)