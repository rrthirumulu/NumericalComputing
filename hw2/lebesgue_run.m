function F = lebesgue_run(n)
% Computer code for calling lebesque.m and finding the constant
% based on number of evaluation points
% Input:  n    --- number of evaluation points;
% Output: F    --- the Lebesgue constant
%
% Author: Raghav Thirumulu, Perm 3499720
% Date:   07/10/2018

% Create a row vector for storing interpolation points
x=zeros(1,n+1);

% Find interpolation points and store in x using given formula
for j=1:n+1
    x(j)=-1+(j-1)*(2/n);
end

% Adjust parameter for plotting resolution
m=1000;
T=zeros(1,m+1);
xbar=zeros(1,m+1);

% Find points for xbar through iteration with plotting resolution
for k=1:m+1
    xbar(k)=-1+(k-1)*(2/m);
    T(k)=lebesgue(x,xbar(k));
end

% Plot the Lebesgue function
plot(xbar,T);
xlabel('x');
ylabel('L(x)');
title(['n = ' num2str(n)]);

% Find the norm using the data, F will be Lebesgue constant
F=norm(T,Inf);

end