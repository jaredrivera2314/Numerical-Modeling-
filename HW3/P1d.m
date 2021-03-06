%HW3 P1d
clear all; close all; clc;

x1=linspace(0,0.5,100);
x2=linspace(0.5,1,100);
x3=linspace(1,2,100);
x4=linspace(2,3,100);

s0=1.81*x1.^3+0.05*x1;
s1=1.81*(1-x2).^3-3.238*(x2-0.5).^3+2.76*x2-1.355;
s2=-1.62*(2-x3).^3+0.905*(x3-1).^3-4.525*x3+7.145;
s3=0.905*(3-x4).^3+0.905*x4-3.715;

hold on

plot(x1,s0,x2,s1,x3,s2,x4,s3);
axis([0,3,-2,2]);





