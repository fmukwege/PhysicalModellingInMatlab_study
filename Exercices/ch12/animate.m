function animate(T,M)
X = M(:,1);
Y = M(:,2);
minmax = [min([X]), max([X]), min([Y]), max([Y])];
for i=1:length(T)
clf; hold on
axis(minmax)
plot(X(i), Y(i), 'o')
drawnow;
if i < length(T)
dt = T(i+1) - T(i);
pause(dt);
end
end
end