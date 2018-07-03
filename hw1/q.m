function T2 = q(h)

% Approximation function for q(h) as given in Exercise 4
% Input:  h --- number of steps used in CTR;
% Output: T2 --- the approximation for q(h)
% Author: Raghav Thirumulu, Perm 3499720
% Date:   07/03/2018

    % Here we adjust the parameters because we pass N to CTR and not h
    num1 = CTR(0,1,2*h,'f2');
    num2 = CTR(0,1,h,'f2');
    den1 = CTR(0,1,4*h,'f2');
    den2 = CTR(0,1,2*h,'f2');
    
    T2 = (num1 - num2)/(den1 - den2);
end

    