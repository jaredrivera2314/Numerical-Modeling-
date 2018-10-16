%HW4 P1b
%Approximates Pi using Simpsons rule
clear all; close all; clc

b=1;
a=-1;
n=64;
h=(b-a)/n;
T=zeros(1,n+1);
x=linspace(-1,1,n+1);
f=sqrt(1-x.^2);

T(1)=(h/3)*f(1);
for i=2:n
    if mod(i,2)~=0
        T(i)=(2*h/3)*f(i);
    else
        T(i)=(4*h/3)*f(i);
    end
end
T(n+1)=(h/3)*f(n+1);

piapprox=2*sum(T);



