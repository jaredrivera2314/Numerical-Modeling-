% CEE 103 Examples of solving ODE through different methods
% Chen, Peng-Yu
% Original Coding
% 05/30/2017
%==========================================================================
clear all;
close all;
clc;
%==========================================================================
%%
% [X1,Y1]=EulerForward(0,1,1,0.25);
% [X2,Y2]=Heun(0,1,1,0.25);
% [X3,Y3]=EulerBackward_PC(0,1,1,0.25,1e-10);
% [X4,Y4]=Trap_PC(0,1,1,0.25,1e-10);
% [X5,Y5]=EulerBackward_N(0,1,1,0.25,1e-10);
% [X6,Y6]=Trap_N(0,1,1,0.25,1e-10);
% X_exact=0:0.05:1;
% Y_exact=sqrt(4-3*exp(-X_exact.^2));
% 
% figure (1)
% plot(X1,Y1,'b','linewidth',2);hold on;
% plot(X2,Y2,'ro','linewidth',2);hold on;
% plot(X3,Y3,'r','linewidth',2);hold on;
% plot(X4,Y4,'m','linewidth',2);hold on;
% plot(X5,Y5,'go','linewidth',2);hold on;
% plot(X6,Y6,'ko','linewidth',2);hold on;
% plot(X_exact,Y_exact,'k--','linewidth',2);hold on;
% legend('EulerForward h=0.25','Heun method h=0.25','EulerBackward PC h=0.25','trap PC h=0.25','EulerBackward N h=0.25','trap N h=0.25','Exact solution');
%%
[X1,Y1]=EulerForward(0,1,1,0.5);
[X2,Y2]=Heun(0,1,1,0.5);
% [X3,Y3]=EulerBackward_PC(0,1,1,0.5,1e-10);
% [X4,Y4]=Trap_PC(0,1,1,0.5,1e-10);
% [X5,Y5]=EulerBackward_N(0,1,1,0.5,1e-10);
% [X6,Y6]=Trap_N(0,1,1,0.5,1e-10);
X_exact=0:0.1:1;
Y_exact=sqrt(4-3*exp(-X_exact.^2));  

figure (2)
plot(X1,Y1,'b','linewidth',2);hold on;
plot(X2,Y2,'ro','linewidth',2);hold on;
% plot(X3,Y3,'r','linewidth',2);hold on;
% plot(X4,Y4,'m','linewidth',2);hold on;
% plot(X5,Y5,'go','linewidth',2);hold on;
% plot(X6,Y6,'ko','linewidth',2);hold on;
plot(X_exact,Y_exact,'k--','linewidth',2);hold on;
legend('EulerForward h=0.5','Heun method h=0.5','Exact solution');

