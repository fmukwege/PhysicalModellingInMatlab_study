%% bestangle.m 
% compute the best throwing angle to maximize the distance travelled by the ball
clear all; close all; clc;
%% computations

thetas = linspace(0,pi/2); % in radians
dist = zeros(length(thetas),1);
height = zeros(length(thetas),1);
for i=1:length(thetas)
   res = baseballthrow(thetas(i));
   dist(i,1) = res(1);
   height(i,1) = res(2);
end
%animate(thetas, [dist,height]);
plot(thetas,dist); hold on; plot(thetas,height,'r:');grid on;
legend('Distance in y [m]','Altitude reached [m]');
ylabel('Distance [m]'); xlabel('Theta angle [rad]');