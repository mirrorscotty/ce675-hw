clear
alpha = .01;

npoints = 2000;

theta1 = zeros(npoints,1);
theta2 = zeros(npoints,1);
P = zeros(npoints,1);

[theta1(1), theta2(1), P(1)] = newtona([0; 0; 0], alpha);

for i = 2:npoints
    [theta1(i), theta2(i), P(i)] = newtona([theta1(i-1); theta2(i-1); P(i-1)], alpha);
end

plot1 = plot(P,theta1);
hold on;
plot2 = plot(P,theta2);
hold off;

set(plot1, 'Color', 'red');
set(plot2, 'Color', 'blue');
legend('Theta1', 'Theta2');
xlabel('P');
ylabel('Angle (rad)');
