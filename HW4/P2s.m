%HW4 P2
%Simpsons rule
clear all; close all; clc

b=1;
a=0;
n=2;
h=(b-a)/n;
T=zeros(1,n+1);
x=linspace(0,1,n+1);
f=3*x.^3-4*x;

T(1)=(h/3)*f(1);
for i=2:n
    if mod(i,2)~=0
        T(i)=(2*h/3)*f(i);
    else
        T(i)=(4*h/3)*f(i);
    end
end
T(n+1)=(h/3)*f(n+1);
Tf=sum(T);



