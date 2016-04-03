function [u,x,t] = diffu(N,deltaT,alpha,beta)
%DIFFU
T = 700;
u = zeros(N,T);
h = 2*pi/N;
u(:,1) = sin(0:h:2*pi-h); 

lambda = alpha*deltaT/(h*h);
gamma = beta*deltaT/(h*h*h*h);

for i=2:T
    u(1,i) = (1-2*lambda+6*gamma)*u(1,i-1) + gamma*(u(3,i-1)+u(end-1,i-1)) + (lambda-4*gamma)*(u(2,i-1)+u(end,i-1));
    u(2,i) = (1-2*lambda+6*gamma)*u(2,i-1) + gamma*(u(4,i-1)+u(end,i-1)) + (lambda-4*gamma)*(u(3,i-1)+u(1,i-1));
    u(end,i) = (1-2*lambda+6*gamma)*u(end,i-1) + gamma*(u(2,i-1)+u(end-2,i-1)) + (lambda-4*gamma)*(u(1,i-1)+u(end-1,i-1));
    u(end-1,i) = (1-2*lambda+6*gamma)*u(end-1,i-1) + gamma*(u(1,i-1)+u(end-3,i-1)) + (lambda-4*gamma)*(u(end,i-1)+u(end-2,i-1));
    u(3:end-2,i) = (1-2*lambda+6*gamma)*u(3:end-2,i-1) + gamma*(u(5:end,i-1)+u(1:end-4,i-1)) + (lambda-4*gamma)*(u(4:end-1,i-1)+u(2:end-3,i-1));
end
x = 0:h:2*pi-h;
t = (0:T-1)*deltaT;