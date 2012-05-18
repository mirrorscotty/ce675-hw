function pi = func2a(xk, xkprev, blah)

l = 1;
k = 1;

A = xk(1);
B = xk(2);
%P = xk(3);
a = xk(3);
P = blah;

pi = -l*sin(B)*P-a*l*cos(B)*P+(k*(2*l^3*cos(B)*sin(B)+3*l^3*sin(A)*cos(B)))/6;

pi = pi - arc(xk, xkprev, blah);