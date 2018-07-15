function T = newton(x,y,xbar,n)
% Computer code for evaluating the Newton polynomial based on a set of
% given points and degree
% Input:  x    --- Sample x points for evaluating polynomial
%         y    --- Sample y points for evaluating polynomial
%         xbar --- Point we want to evaluate at
%         n    --- degree of Newton polynomial
%
% Author: Raghav Thirumulu, Perm 3499720
% Date:   07/10/2018

% Create array of n+1 entries for computing values of c
c=zeros(1,n+1);
T=0;

% Iterate through, computing divided difference for each value
% We use n+1 because matrix values begin with 1 in MATLAB
for i=1:(n+1)
    f = 1;
    for j=1:(n+1)
        % We do not want a denominator of 0
        if j~=i
            f = f * (xbar-x(j))/(x(i)-x(j));
        end
    end
    % Sum each term to find the approximation
    T = T + y(i)*f;
end

end