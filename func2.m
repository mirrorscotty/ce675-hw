function pi = func2(xk, blah, P)

l = 1;
k = 1;

A = xk(1); % Theta1
B = xk(2); % Theta2
a = blah; % alpha

pi = -l*sin(B)*P-a*l*cos(B)*P+(k*(2*l^3*cos(B)*sin(B)+3*l^3*sin(A)*cos(B)))/6;
