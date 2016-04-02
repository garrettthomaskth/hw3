epsilon=0.1;
alpha=1;
xSteps=100;
Tend=10;
ratio=0.306;
[Q,x,t,cons] = adv(xSteps,ratio,Tend,alpha,epsilon);
figure(1)
mesh(t,x,Q)
figure(2)
ratio=0.01;
[Q,x,t,cons] = mccormack(xSteps,ratio,Tend,epsilon);
mesh(t,x,Q)
Q(:,1)
rotate3d on