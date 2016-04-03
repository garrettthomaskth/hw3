close all;
alpha = (2*pi)^2;
beta = (2*pi)^4/60000;
deltaT = 1/20000;

N = [100 120 125 180];
lambda = alpha*N.^2*deltaT/(2*pi)^2;
gamma = beta*N.^4*deltaT/(2*pi)^4;
for i = 1:3
    [u,x,t] = diffu(N(i),deltaT,alpha,beta);
    subplot(2,2,i);
    mesh(x,t,u');titre = sprintf('lambda = %f and gamma = %f',lambda(i),gamma(i));title(titre);xlabel('x');ylabel('Time');
end

N = 180;
beta = beta/2.8;
[u,x,t] = diffu(N,deltaT,alpha,beta);
subplot(2,2,4);
mesh(x,t,u');title('lambda = 1.62 and gamma = 0.3124');xlabel('x');ylabel('Time');