function out = arc(xk, xkprev, blah)

c = .0001; % Arc length
S = 1;

%xk(4) = xk(4)/S;
%xkprev(4) = xkprev(4)/S;

for i=1:length(xk)
    if(xk ~= 3)
        out = (xk(i)-xkprev(i))^2;
    end
end

out = out - c^2;
