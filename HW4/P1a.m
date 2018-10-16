%HW4 P1a
%Approximates Pi using Trapzoidal rule
clear all; close all; clc

b=1;
a=-1;
n=64;
h=(b-a)/n;
T=zeros(1,n+1);
x=linspace(-1,1,n+1);
f=sqrt(1-x.^2);

T(1)=(h/2)*f(1);
for i=2:n
    T(i)=h*f(i);
end
T(n+1)=(h/2)*f(n+1);

piapprox=2*sum(T);



