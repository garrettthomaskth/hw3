close all;
l = 0:0.001:2; N = length(l);
g = 0:0.001:0.7; M = length(g);

z = zeros(N,M);

for i=1:N
    for j=1:M
        for k = 0:0.01:2*pi
            z(i,j) = max(z(i,j),abs(1-2*l(i)+6*g(j) + 2*g(j)*cos(2*k) + 2*(l(i)-4*g(j))*cos(k)));
        end
    end
end

contourf(l,g,(z<=1.00001)');hold on;
plot(1/2,1/12,'b.',0.72,0.1728,'k.',0.7812,0.2085,'g.',1.62,0.3124,'m.','MarkerSize',20);
 xlabel('lambda');ylabel('gamma');title('Von Neumann Analysis - illposed','FontSize',15);