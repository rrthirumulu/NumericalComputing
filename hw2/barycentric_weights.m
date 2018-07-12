function T = barycentric_weights(x)
% Computer code for finding the weights of the Barycentric Formula
% Input:  x --- input points;
% Output: T --- vector of weights to plug into barycentric.m
%
% Author: Raghav Thirumulu, Perm 3499720
% Date:   07/11/2018

% Find length of our input list, create another vector to substitute 
% weights
n=length(x);
T=zeros(1,n);

% Iterate through the input list and with interpolation, use the formula 
% for calculating the weights
for j=1:n
    w=1;
    for k=1:n
        if j~=k
            w = w*(x(j)-x(k));
        end
    end
    T(j)=w; 
end

% We want the reciprocal of the calculation of w
T=1./T;

end