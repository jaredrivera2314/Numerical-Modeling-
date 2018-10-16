%HW4 P2
%Trapzoidal rule
clear all; close all; clc

b=1;
a=0;
n=4;
h=(b-a)/n;
T=zeros(1,n+1);
x=linspace(0,1,n+1);
f=3*x.^3-4*x;

T(1)=(h/2)*f(1);
for i=2:n
    T(i)=h*f(i);
end
T(n+1)=(h/2)*f(n+1);
Tf=sum(T);



