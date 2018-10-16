%CEE103 Homework #6
%Jared Rivera 804603106
%Problem 1a
clear all; close all; clc;

x=[0,1.1,2.5,3.3,4];
y=[3.2,1.5,-0.9,0.3,2.5];

Minverse=(1/52.94)*[34.35,-10.9;-10.9,5];

b=[0;0];
for i=1:5
    b=b+[y(i);x(i)*y(i)];
end

a=Minverse*b;

p=a(1)+a(2)*x;

error=zeros(1,5);
for i=1:5
    error(i)=y(i)-p(i);
end

E2=0.5*(sum(error.^2));

