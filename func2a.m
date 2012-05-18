function pi = func2a(xk, xkprev, blah)

l = 1;
k = 1;

%P = xk(3);
alpha = xk(3);
P = blah;

pi = 1/6*k*l^3*cos(xk(2))*(3*sin(xk(1))+2*sin(xk(2)))-P*l*(alpha*cos(xk(2))+sin(xk(2)));

pi = pi - arc(xk, xkprev, blah);