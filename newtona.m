function [ theta1, theta2, P ] = newtona(xk, blah)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

% The slots in the xk array have the following meaning:
%
% xk(1): theta1
% xk(2): theta2
% xk(3): lambda

maxit = 75; % Maximum number of iterations allowed before the solver gives
            % up.
i = 0; % Iteration number.

h = 1e-12; % Error tolerance for numerical differentiation.

xkprev = xk; % Previously converged iteration

% Initial guess (based on previous converged iteration)
xk(1) = xk(1) + 0.0001;
xk(2) = xk(2) + 0.0001;
xk(3) = xk(3) + 0.0001;

u = ones(length(xk),1); % How much to change the variables in each iteration. Set to 1
                        % initially so the while loop runs at least once.

% Yay for Matlab knowing what function pointers are... sort of.
f = {@func1a, @func2a, @arc};

% Continue looping as long as the change from the previous iteration is
% larger than the tolerance.
while ((abs(u(1)) >= h) || (abs(u(2)) >= h) || (abs(u(3)) >= h))
    i = i+1;
    
    % Create the R vector.
    for j=1:length(xk)
        R(j,1) = f{j}(xk, xkprev, blah);
    end
    
    % Initialize K
    K = zeros(length(xk));
    
    % Create the K array by differentiating each function with respect to
    % each variable.
    for j = 1:length(xk)
        for k = 1:length(xk)
            H = zeros(length(xk),1);
            H(k) = H(k) + h;
            K(j,k) = (f{j}(xk+H, xkprev, blah) - f{j}(xk, xkprev, blah))/h;
            
        end
    end
    
    % Invert K
    Kinv = K^-1;

    % Calculate the dx required to get closer to convergance
    u = -Kinv*R;

    % Improve the guess
    xk = xk+u;
    
    % Stop the maddness!!!
    if(i>maxit)
        break;
    end
end

if(i>maxit) % If we didn't converge, then return something sad.
    theta1 = NaN;
    theta2 = NaN;
    P = NaN;
else
    if(xk(1)>2*pi)||(xk(1)<-2*pi) % Values larger than 2pi or smaller than 0 are bad.
        theta1 = NaN;
        theta2 = NaN;
        P = NaN;
    else % Victory
        theta1 = xk(1);
        theta2 = xk(2);
        P = xk(3);
    end
end

end

