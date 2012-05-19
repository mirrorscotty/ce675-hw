clear
alpha = .01;

npoints = 4000;
%npoints = 500;

theta1 = zeros(npoints,1);
theta2 = zeros(npoints,1);
P = zeros(npoints,1);
%P=linspace(0, .1, npoints);

[theta1(1), theta2(1), P(1)] = newtona([0; 0; 0], alpha);
%[theta1(1), theta2(1)] = newton([0; 0], alpha, P(1));

for i = 2:npoints
    [theta1(i), theta2(i), P(i)] = newtona([theta1(i-1); theta2(i-1); P(i-1)], alpha);
    %[theta1(i), theta2(i)] = newton([theta1(i-1); theta2(i-1)], alpha, P(i));
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
