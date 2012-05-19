function pi = func1(xk, blah, P)

l = 1;
k = 1;

A = xk(1); % Theta1
B = xk(2); % Theta2
a = blah; % alpha

pi = -l*sin(A)*P-a*l*cos(A)*P+(k*(3*l^3*cos(A)*sin(B)+6*l^3*cos(A)*sin(A)))/6+(k*l^3*cos(A)*sin(A))/3;
