function T = CTR(a,b,N,f)
% Composite Trapezoid Rule for a function f defined on [a,b]
% Input:  a --- the left endpoint of the interval;
%         b --- the right endpoint of the interval;
%         N --- the number of partitions used in the CTR;
%         f --- the function that CTR operates on;
% Output: T --- the approximation of the integral given by CTR.
%
% Author: Raghav Thirumulu, Perm 3499720
% Date:   07/02/2018
    
    % Calculate h to find width of each trapezoid
    h = (b-a)/N; 

    % Store all the x values spaced by h except for x_0 and x_n
    x = [a+h:h:b-h];    

    % Enter the approximation formula for CTR
    T = h * ( (feval(f,a)/2) + sum(feval(f,x)) + (feval(f,b)/2) );

end