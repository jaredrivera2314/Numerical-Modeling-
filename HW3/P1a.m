%HW3 P1a
clear all; close all; clc;

x1=linspace(0,0.5,100);
x2=linspace(0.5,1,100);
x3=linspace(1,2,100);
x4=linspace(2,3,100);

L1=0.5*x1;
L2=1.5*x2-0.5;
L3=-2*x3+3;
L4=zeros(100)-1;

hold on

plot(x1,L1,x2,L2,x3,L3,x4,L4);
axis([0,3,-2,2]);





