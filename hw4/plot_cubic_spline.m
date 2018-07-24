function plot_cubic_spline(t,s0,s1,s2,s3,s4,s5,s6,s7)
% Computer code for plotting parametric spline function
% Input:  t            --- vector of t values for interpolation
%         s0,s1,s2,s3  --- evaluation of coefficients from
%         cubic_spline_coefficients(t,x)
%         s4,s5,s6,s7  --- evaluation of coefficients from
%         cubic_spline_coefficients(t,y)
% Output: Plot of parametric curve of x(t) vs y(t)
% Author: Raghav Thirumulu, Perm 3499720
% Date:   07/23/2018
n = length(t);

for i=1:n-1
   xx(i) = cubic_spline_eval(s0,s1,s2,s3,t(i),t);
   yy(i) = cubic_spline_eval(s4,s5,s6,s7,t(i),t);
end
plot(xx,yy,'b');
title('Parametric representation of curve'); 
xlabel('x(t)');
ylabel('y(t)');