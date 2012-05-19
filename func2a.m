function pi = func2a(xk, xkprev, blah)

l = 1;
k = 1;

A = xk(1); % Theta1
B = xk(2); % Theta2
%P = xk(3);
a = xk(3); % alpha
P = blah;

pi = -l*sin(B)*P-a*l*cos(B)*P+(k*(2*l^3*cos(B)*sin(B)+3*l^3*sin(A)*cos(B)))/6;

pi = pi - xk(3)*arc(xk, xkprev, blah);
