function res = coffee()
t = linspace(0,1000);
[T,Y] = ode45(@rate_func,t,90);
Title = 'Temperature decreasing in function of time (min)';
figure('Name',Title);

plot(T,Y);
% Put the cmds related to the graph after the plot
title(Title);
legend('Temperature');
xlabel('min');
ylabel('°C');

saveas(gcf,"coffee_ex","png");
end

function res = rate_func(t,y)
    k = 0.01;
    e = 60;
    dydt = -k*(y - e);
    res = dydt;
end