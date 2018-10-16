%HW3 P1c
clear all; close all; clc;

x=linspace(0,3,100);

P1=0.5*x;
P2=P1+x.*(x-0.5);
P3=P2-(5/3)*x.*(x-0.5).*(x-1);
P4=P3+1*x.*(x-0.5).*(x-1).*(x-2);

hold on

plot(x,P4);
axis([0,3,-3,3]);