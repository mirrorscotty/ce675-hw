function pi = func1a(xk, xkprev, blah)

l = 1;
k = 1;

A = xk(1);
B = xk(2);
%P = xk(3);
a = xk(3);
P = blah;

pi = -l*sin(A)*P-a*l*cos(A)*P+(k*(3*l^3*cos(A)*sin(B)+6*l^3*cos(A)*sin(A)))/6+(k*l^3*cos(A)*sin(A))/3;
pi = pi - arc(xk, xkprev, blah);
