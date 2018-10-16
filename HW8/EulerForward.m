function [ X Y ] = EulerForward( X0, X_end, Y0, h )
%==========================================================================
% CEE103 Forward Euler Method
% Chen, Peng-Yu
% Originial Coding
% 05/30/2017
%==========================================================================
% This function utilized EulerForward to solve ODE problem.Users need to 
% modify the function for different problem statement.
% X0 and X_end define the domain of the problem.
% Y0 is the initial value
% n is the number of subdivisions.
%==========================================================================
n = fix((X_end-X0)/h)+1;
X = linspace(X0,X_end,n)';
Y = zeros(n,1);
Y(1)=Y0;
for i=2:length(X)
    Y(i)=Y(i-1)+h*(fcn(X(i-1),Y(i-1)));      % function need to be modified
end
exact=(2*X+1)./(X.^2+1);                     % Has been derived through analytical analysis
Error=exact-Y;                               % Error=Exact_Value- App_Value
display('x       y_approximate     y_exact      Forward_Error')
for i=1:n
    fprintf('%2.5f %10.4f  %10.4f    %5.4e   \n',X(i),Y(i),exact(i),Error(i))
end
end

