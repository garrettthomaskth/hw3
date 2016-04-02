function [ output_args ] = problemOne( alpha, deltaT, deltaX  )
%Forward difference in time and centeral difference in space 
%Delta t must divide 2pi or code doesnt work
start=0;
stop=2*pi;
Tstart=0;
Tend=10;
xSteps=size(0:deltaX:2*pi,2);
tSteps=200;
u = zeros(xSteps,tSteps);
u(:,1) = sin(0:deltaX:2*pi);

for i = 2:tSteps
    u(1,i) = (alpha*deltaT/deltaX^2)*(u(2,i-1)+u(end-1,i-1)) + (1 - 2*(alpha*deltaT/deltaX^2))*u(1,i-1);
    u(end,i) = u(1,i);
    for j = 2:xSteps-1
        u(j,i) = (alpha*deltaT/deltaX^2)*(u(j+1,i-1)+u(j-1,i-1)) + (1 - 2*(alpha*deltaT/deltaX^2))*u(j,i-1);
    end
    %u(end,i) = (alpha*deltaT/deltaX^2)*(u(2,i-1)+u(end-1,i-1)) + (1 - 2*(alpha*deltaT/deltaX^2))*u(end,i-1);
end
surf(u)
rotate3d on
end
