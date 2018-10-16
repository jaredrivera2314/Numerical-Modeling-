%CEE103 Homework #6
%Jared Rivera 804603106
%Problem 1c
clear all; close all; clc;

x=[0,1.1,2.5,3.3,4];
y=[3.2,1.5,-0.9,0.3,2.5];

Minverse=[0.0842 -0.1240 0.1980;-0.1240 0.5616 -0.3127;0.1980 -0.3127 0.7745];
   
b=[0;0;0];
for i=1:5
    b=b+[y(i)*x(i);y(i)*sin(2*x(i));y(i)*cos(x(i))];
end

a=Minverse*b;

p=a(1)*x+a(2)*sin(2*x)+a(3)*cos(x);

error=zeros(1,5);
for i=1:5
    error(i)=y(i)-p(i);
end

E2=0.5*(sum(error.^2));


