%HW2 P1 Secant method
clear all; clc; clear all;

x(1)=0;
x(2)=2;
tol=10^(-6);

for i=1:100
    xn=x(i+1);
    x0=x(i);
    [res]=funcb(xn);
    dres=(funcb(xn)-funcb(x0))/(xn-x0);
    if abs(res)<tol
        break
    else
        dx=-res/dres;
    end
    x(i+2)=x(i+1)+dx;
end


