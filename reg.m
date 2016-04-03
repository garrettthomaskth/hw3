close all;
l = [0 2];
plot(l,(-1+2*l)/6,l,l/3,l,[0 0],l,[1 1],l,(l-1)/4,l,l/4);axis([0 2 -0.5 1.5]);hold on;
fill([0 0.5 2],[0 0 0.5],'r'); xlabel('lambda');ylabel('gamma');title('Stable lambda and gamma','FontSize',15);
plot(1/2,1/12,'b.',0.72,0.1728,'k.',0.7812,0.2085,'g.',1.62,0.3124,'m.','MarkerSize',20);