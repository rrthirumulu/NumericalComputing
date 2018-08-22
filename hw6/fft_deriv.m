function P = fft_deriv(n,xbar)
% Computer code for evaluating derivative of PN(x) using FFT and IFFT
% Input:  n    --- number of points to interpolate
%         xbar --- point we want to approximate
% Output  P    --- evaluation of derivative of PN(xbar)
% Author: Raghav Thirumulu, Perm 3499720
% Date:   08/08/2018

fun = x^2+x+1

% Create vector of length n to store our interpolation points
x = zeros(1,n);
y = zeros(1,n);

% Iterate through and solve for xj and fj
for j=1:n
    x(j) = 2*pi*(j-1)/n;
    y(j) = exp(sin(x(j)));
end

% Find Fourier coefficients related to fj
Y = fft(y,n);

% Solve for the derivative
P = 0;
for k=1:n
    P = P + (1i*(k-1)*Y(k)*exp(1i*(k-1)*xbar));
end

P = P/n;

