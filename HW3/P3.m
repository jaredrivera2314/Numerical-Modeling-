%HW3 P3
clear all; close all; clc;

x1=linspace(0,1,100);
x2=linspace(1,2,100);

s0=0.619*(1-x1).^3-0.238*x1.^3+1.857*x1-0.619;
s1=-0.238*(2-x2).^3+0.762*x2+0.476;

hold on

plot(x1,s0,x2,s1);
axis([0,2,0,2]);





