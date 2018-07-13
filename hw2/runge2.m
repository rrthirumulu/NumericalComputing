function T = runge2(n)
% Computer code for finding the weights of the Barycentric Formula
% using Chebyshev points
% Input:  x --- input points;
% Output: T --- vector of weights to plug into barycentric.m
%
% Author: Raghav Thirumulu, Perm 3499720
% Date:   07/11/2018

% Create row vectors based on n or number of nodes
x=zeros(1,n+1);
y=zeros(1,n+1);
w=zeros(1,n+1);

% Iterate through the function, finding the x and y values based on the
% given formula
for j=1:n+1
    x(j)=5*cos((n+1-j)*pi/n);
    y(j)=1/(1+(x(j))^2);
end

w(1)=0.5*((-1)^n);
w(n+1)=0.5;
for i=2:n
    w(i)=(-1)^(n+1-i);
end

% We now will create a function with a very high resolution
m=1000;
z=zeros(1,m+1);
F=zeros(1,m+1);

% Iterate through the formula given for larger number m
for k=1:m+1
    z(k)=5*cos((m+1-k)*pi/m);
    F(k)=1/(1+(z(k))^2);
end

% Plot approximation versus actual function to visualize accuracy
T = barycentric(x,y,w,z);
plot(z,T); hold on
plot(z,F,'g');
xlabel('x');
ylabel('y');
legend('Pn(x)','f(x)');
title(['n = ' num2str(n)]);
hold off
end

