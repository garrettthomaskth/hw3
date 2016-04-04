% figure(1)
% epsilon=0.1;
% alpha=1;
% xSteps=100;
% Tend=10;
% ratio=0.1;
% [Q,x,t,cons] = adv(xSteps,ratio,Tend,alpha,epsilon);
% mesh(t,x,Q)
% title('Lax-Friedrichs Method with \Delta t/\Delta x = 0.1')
% xlabel('Time (s)')
% ylabel('Length (m)')
% figure(2)
% ratio=0.2;
% [Q,x,t,cons] = adv(xSteps,ratio,Tend,alpha,epsilon);
% mesh(t,x,Q)
% title('Lax-Friedrichs Method with \Delta t/\Delta x = 0.2')
% xlabel('Time (s)')
% ylabel('Length (m)')
% figure(3)
% ratio=0.307;
% [Q,x,t,cons] = adv(xSteps,ratio,Tend,alpha,epsilon);
% mesh(t,x,Q)
% title('Lax-Friedrichs Method with \Delta t/\Delta x = 0.307')
% xlabel('Time (s)')
% ylabel('Length (m)')
figure(4)
ratio=0.3;
[Q,x,t,cons] = adv(200,ratio,Tend,alpha,epsilon);
mesh(t,x,Q)
title('Lax-Friedrichs Method with \Delta t/\Delta x = 0.3')
xlabel('Time (s)')
ylabel('Length (m)')


figure(1)
epsilon=0.1;
alpha=1;
xSteps=100;
Tend=10;
ratio=0.1;
[Q,x,t,cons] = mccormack(xSteps,ratio,Tend,epsilon);
mesh(t,x,Q)
title('McCormack Method with \Delta t/\Delta x = 0.1')
xlabel('Time (s)')
ylabel('Length (m)')
figure(2)
ratio=0.2;
[Q,x,t,cons] = mccormack(200,ratio,Tend,epsilon);
mesh(t,x,Q)
title('McCormack Method with \Delta t/\Delta x = 0.2')
xlabel('Time (s)')
ylabel('Length (m)')
figure(3)
ratio=0.31;
[Q,x,t,cons] = mccormack(200,ratio,Tend,epsilon);
mesh(t,x,Q)
title('McCormack Method with \Delta t/\Delta x = 0.31')
xlabel('Time (s)')
ylabel('Length (m)')
figure(4)
ratio=0.01;
[Q,x,t,cons] = mccormack(xSteps,ratio,Tend,epsilon);
mesh(t,x,Q)
title('McCormack Method with \Delta t/\Delta x = 0.01')
xlabel('Time (s)')
ylabel('Length (m)')