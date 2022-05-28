%% bike_loop
clear all;
figure;

clf;

b = 100, c = 100;
plot(i,b,'o');
hold on;
plot(i,c,'ro');
hold on;
for i=1:30
    bike_update_cleaner
    plot(i,b,'o');
    hold on;
    plot(i,c,'ro');
    hold on;    
end

