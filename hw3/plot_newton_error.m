function T = plot_newton_error()
% Computer code for plotting the error of our Newton interpolation
% using equidistributed nodes.
% Input:  x --- input points;
% Output: T --- vector of weights to plug into barycentric.m
%
% Author: Raghav Thirumulu, Perm 3499720
% Date:   07/11/2018

% Create row vectors for storing values of x and f(x) for evaluating
% P10(x)
x=zeros(1,11);
y=zeros(1,11);

% Use the given function to iterate and store these points
for j=1:11
    x(j)=-1+(j-1)*(2/10);
    y(j)=exp((-1)*((x(j))^2));
end

% Create row vectors because we want to solve P10(x) for a 101 different x
% values using the same equidistributed node equation
xbar=zeros(1,101);
f=zeros(1,101);
err=zeros(1,101);
for i=1:101
    xbar(i)=-1+(i-1)*(2/100);
    % Evaluate Newton polynomial at each of the 101 different x points and
    % solve for the error at each point using the given equation
    T(i) = newton(x,y,xbar(i),10);
    f(i)=exp((-1)*(xbar(i)^2));
    err(i) = abs(T(i)-f(i));
end

plot(xbar,err);
xlabel('x');
ylabel('Error ( f(x) - P10(x) )');
end

