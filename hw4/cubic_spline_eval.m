function ybar = cubic_spline_eval(s0,s1,s2,s3,xbar,x)
% Computer code for evaluating cubic spline at certain point
% Input: s0,s1,s2,s3 --- coefficients we solved for earlier
%        xbar        --- x value we are interpolating at
%        x           --- data points for interpolation
% Output ybar        --- evaluation of cubic spline
% Author: Raghav Thirumulu, Perm 3499720
% Date:   07/23/2018

n=length(x);
i=1;

while (xbar>x(i+1) && i<=n-1)
    i=i+1;
end

% Multiply coefficients with degree for evaluation
ybar=s0(i)*(xbar-x(i))^3+s1(i)*(xbar-x(i))^2+s2(i)*(xbar-x(i))+s3(i);

