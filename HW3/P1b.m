%HW3 P1b
clear all; close all; clc;

x1=linspace(0,1,100);
x2=linspace(1,3,100);


Q1=x1.^2;
Q2=x2.^2-5*x2+5;


hold on

plot(x1,Q1,x2,Q2);
axis([0,3,-2,2]);