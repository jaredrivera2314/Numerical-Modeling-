%HW2 P1 Bisection method
clear all; clc; clear all;

a=0;
b=2;
i=1;
tol=10^(-4);

while abs(a-b)>tol && i<1000
    x(i)=(a+b)/2;
    [res]=funcb(a);
    [res_new]=funcb(x(i));
    
    if sign(res)==sign(res_new)
        a=x(i);
    else
        b=x(i);
    end
    i=i+1;
end





