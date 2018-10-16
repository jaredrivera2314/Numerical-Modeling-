% CEE 103 Example for Nonlinear System
% Newton's Method
% Origional Coding
% Peng-Yu Chen
% Date: 2017/05/23
%==========================================================================
% This example shows you how to utilize the Newton's method to find roots
% of nonlinear system. You need to change several variables in the main
% program so that it can be used to solve your homework problems.
%==========================================================================
clear all;
close all; clc;
%=========================Example for plotting=============================
%%
% Example:f1(w2,x1,x2)=x1+w2-(1/2)
%         f2(w2,x1,x2)=x1^2+2*w2*x2-(1/3)
%         f3(w2,x1,x2)=x1^3+3*w2*x2-(1/4)
% syms x1 x2
% p1=ezplot('x1+x2-2*x1*x2');hold on
% p2=ezplot('x1^2+x2^2-2*x1+2*x2+1');hold on
% set(p1,'Color','r','linewidth',2);
% set(p2,'Color','b','linewidth',2);
% title('Problem 3','fontsize',15);
%=========================Newton's Iteration===============================
tol=1e-12;                                                                                      % Tolerance for stopping
%X0=[-3;-4];
X0=[-1;0;1];                                                                                    % Initial Gusses
error=1;                                                                                        % Initial error to start iteration
num_iteration=0;                                                                                % Number of iteration
max_iteration=100;                                                                              % Maximun number of iteration
while (error>tol) && (num_iteration < max_iteration)                                            % starting criteria
%       plot(X0(1,1),X0(2,1),'ko','markersize',10);hold on                                        % plot point
%       text(X0(1,1)+0.2,X0(2,1)+0.2,['(',num2str(num_iteration),')'],'fontsize',15);             % mark point
      num_iteration = num_iteration +1;                                                         % count for iteration
      residual=[X0(2,1)+X0(1,1)-(1/2);X0(2,1)^2+2*X0(1,1)*X0(3,1)-(1/3);X0(2,1)^3+3*X0(1,1)*X0(3,1)^2-(1/4)];   % residual calculation
      J=[1,1,0;2*X0(3,1),2*X0(2,1),2*X0(1,1);3*X0(3,1)^2,3*X0(2,1)^2,6*X0(1,1)*X0(3,1)];                                                           % Jacobian
      deltax=inv(J)*residual;                                                                   % delta X
      error = norm(residual);                                                                   % error
      X1=X0-deltax;                                                                             % new X
      fprintf('Iteration: %3i, (X,Y): (%20.15f, %20.15f), Error: %8.4e\n', num_iteration, X1(1,1), X1(2,1), error);
      X0=X1;                                                                                    % replace X
end
%===============================END========================================