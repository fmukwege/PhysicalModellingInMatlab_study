%% options
function [value, isterminal,direction]= event_func(t,V)
value = V(2); % value that triggers the event
isterminal =1; % Does the event stop the solver ?
direction = -1; % How the value should behave when the event happens? Increasing ? Decreasing ?
end 