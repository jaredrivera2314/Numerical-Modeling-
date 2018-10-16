%CEE103 Homework #6
%Jared Rivera 804603106
%Problem 1b
clear all; close all; clc;

x=[0,1.1,2.5,3.3,4];
y=[3.2,1.5,-0.9,0.3,2.5];

Minverse=[0.9041 -0.7737 0.1428;-0.7746 1.3624 -0.3186;0.1433 -0.3197 0.0803];

b=[0;0;0];
for i=1:5
    b=b+[y(i);x(i)*y(i);(x(i)^2)*y(i)];
end

a=Minverse*b;

p=a(1)+a(2)*x+a(3)*x.^2;

error=zeros(1,5);
for i=1:5
    error(i)=y(i)-p(i);
end

E2=0.5*(sum(error.^2));

