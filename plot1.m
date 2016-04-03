alpha = ((2*pi)^2)/2;
deltaT = 1/2500;
N = [30 40 50 51];
lambda = alpha.*deltaT.*N.*N/(2*pi)^2;
for i = 1:4
    [u,x,t] = diffu(N(i),deltaT,alpha,0);
    subplot(2,2,i);
    mesh(x,t,u');titre = sprintf('lambda = %f',lambda(i));title(titre,'FontSize',14);xlabel('x');ylabel('Time');
end

