% Computer code for plotting Monic Chebyshev polynomials
%
% Input: No arguments are necessary for running this function
% Output: A plot of T0(x), T1(x), T2(x), T3(x), T4(x)
%
% Author: Raghav Thirumulu, Perm 3499720
% Date:   07/24/2018

x=-1:.01:1;

T0 = x.^0;
T1 = x;
T2 = (2*(x.^2)) - 1;
T3 = (4*(x.^3)) - (3.*x);
T4 = (8*(x.^4)) - (8*(x.^2)) + 1;

plot(x,T0,'b'); hold on
plot(x,T1,'r');
plot(x,T2,'g');
plot(x,T3,'m');
plot(x,T4,'k');
title('Monic Chebyshev Polynomials');
axis([-1 1 -1.2 1.2]);
legend('T_0(x)','T_1(x)','T_2(x)','T_3(x)','T_4(x)');
xlabel('x');
ylabel('T(x)'); hold off
