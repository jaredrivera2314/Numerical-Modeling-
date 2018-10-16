%HW1 P5

clear all; close all; clc;

x=linspace(-3,3,100);

p1=x;
p3=x+(x.^2/2)+(x.^3/6);

E1=exp(x)-1-p1;
E1low=x.^2/2;
E1high=x.^2.*exp(x)/2;

E3=exp(x)-1-p3;
E3low=x.^4/24;
E3high=x.^4.*exp(x)/24;


c1=log(E1*2./(x.^2));
c3=log(E3*24./(x.^4));

plot(x,E1,E1low,E1high);