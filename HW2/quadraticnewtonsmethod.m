%HW2 P3
%Modified Newton's Method
%Includes a quadratic Taylor Expansion rather than a linear one.

clear all; clc; close all;

x(1)=10;
tol=10^(-12);

for i=1:100
    [res,dres,d2res]=func3(x(i));
    if abs(res)<tol
        break
    elseif dres^2-2*res*d2res>0
        dx1=-(dres+sqrt(dres^2-2*res*d2res))/d2res;
        dx2=-(dres-sqrt(dres^2-2*res*d2res))/d2res;
        diffx1=dx1+res/dres;
        diffx2=dx2+res/dres;
        if diffx2>diffx1
            dx=dx1;
        else
            dx=dx2;
        end
    else
        dx=-res/dres;
        
    end
    x(i+1)=x(i)+dx;
end
