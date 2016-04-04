function [Q,x,t,cons] = mccormack(xSteps,ratio,Tend,epsilon)
%Problem 2.1 Lax-Friedrich method

%given variables
L = 10;
H = 1;
g = 9.61;
w = 0.4;
%calculate number of steps
dx = L/xSteps;
dt = ratio*dx;
tSteps = round(Tend/dt);
%flux function
f = @(u) [ u(2) , u(2)^2./u(1) + 0.5*g*u(1).^2];

%Initial Conditions
Q = zeros(xSteps+2, 2*(tSteps+1));
Q(2:(end-1),1) = H+epsilon*exp(-((dx/2:dx:(L-dx/2)) - L/2).^2/w^2);
ustar = zeros(xSteps+1,2);
for i = 1:tSteps+1
    % Ghost point values
    Q(1,2*i-1) = Q(2,2*i-1);
    Q(1,2*i) = -Q(2,2*i);
    Q(end,2*i-1) = Q(end-1,2*i-1);
    Q(end,2*i) = -Q(end-1,2*i);
    
    for j = 1:xSteps+1
        ustar(j,:) = Q(j,(2*i-1):(2*i)) - dt/dx*(f(Q(j+1,(2*i-1):(2*i)))-f(Q(j,(2*i-1):(2*i))));
    end
    for j = 2:xSteps+1
        Q(j,2*i+1:2*i+2) = 0.5*(Q(j,(2*i-1):(2*i))+ustar(j,:) - dt/dx*(f(ustar(j,:))-f(ustar(j-1,:))));
    end
    
    %for j = 2:xSteps+1
     %   ustar = Q(j,(2*i-1):(2*i)) - dt/dx*(f(Q(j+1,(2*i-1):(2*i)))-f(Q(j,(2*i-1):(2*i))));
      %  Q(j,2*i+1:2*i+2) = 0.5*(Q(j,(2*i-1):(2*i))+ustar) - dt/(2*dx)*(f(Q(j,(2*i-1):(2*i)))-f(Q(j-1,(2*i-1):(2*i))));
    %end
end
x = linspace(0,L,xSteps);
t = linspace(0,Tend,tSteps+1);
Q = Q(2:end-1,2*(1:tSteps+1)-1);
cons = sum(Q(:,:))/(xSteps+1);
end

