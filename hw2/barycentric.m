function T = barycentric(x,y,w,z)
% Computer code for implmenting Barycentric Formula
% Input:  x --- sample input points
%         y --- sample output points
%         w --- weights calculated through barycentric_weights.m
%         z --- point we are trying to approximate  
% Output: T --- approximation for f(x) using Barycentric Formula
% Author: Raghav Thirumulu, Perm 3499720
% Date:   07/11/2018

% Find length of the lists we are working with, create vector for
% approximating Barycentric
n=length(x);
m=length(z);
T=zeros(1,m);

% Iterate through the lists, finding the interpolation values at each node
for i=1:m
    k=0;
    num=0;
    den=0;
    for j=1:n
        if z(i)==x(j)
            T(i)=y(j);
            k=1;
        else
            % Solve for numerator and denomintor of Barycentric formula
            num=num+(w(j)*y(j))/(z(i)-x(j));
            den=den+(w(j)/(z(i)-x(j)));
        end
    end
    if k==0
        T(i)=num/den;
    end
end
end