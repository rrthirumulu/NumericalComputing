function T = lebesgue(x,xbar) 
% Computer code for evaluating Lebesque function
% Input:  x    --- nodes for interpolation;
%         xbar --- point for evaluation;
% Output: T    --- the evaluation of the Lebesgue function
%
% Author: Raghav Thirumulu, Perm 3499720
% Date:   07/10/2018

% Store length of x in n, Create 1xn array of ones for storing values
n=length(x);
L=ones(1,n);

% Iterate through the interpolation points
for i=1:n
   for j=1:n
      if j~=i
         L(i) = L(i) * ( (xbar-x(j)) / (x(j)-x(i)) ) ;
      end
   end
end

% Take the absolute value of the sum of the elements of L
T = sumabs(L);

end

