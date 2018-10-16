%HW2 P1 Newton's method
clear all; clc; clear all;

x(1)=5;
tol=10^(-12);

for i=1:100
    [res,dres]=func(x(i));
    if abs(res)<tol
        break
    else
        dx=-res/dres;
    end
    x(i+1)=x(i)+dx;
end
