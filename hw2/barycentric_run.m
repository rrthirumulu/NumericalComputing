function T = barycentric_run(x,y,z)
% Computer code for applying Barycentric Formula
% Input:  x --- sample input points
%         y --- sample output points
%         z --- point we are trying to approximate  
% Output: T --- approximation for f(x) using Barycentric Formula
% Author: Raghav Thirumulu, Perm 3499720
% Date:   07/11/2018

% Calculate weights using barycentric_weights.m
w=barycentric_weights(x);

% Pass calculated weights along with sample points to barycentric
p=barycentric(x,y,w,z);
disp(p);

end