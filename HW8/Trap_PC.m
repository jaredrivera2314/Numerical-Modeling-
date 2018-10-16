function [ X Y ] = Trap_PC( X0, X_end, Y0, h, tol )
%==========================================================================
% CEE103 Trapzoidal Method_Predictor Corrector
% Chen, Peng-Yu
% Originial Coding
% 05/30/2017
%==========================================================================
% This function utilized trapzoidal method to solve ODE problem.
% Users need to modify the function for different problem statement.
% X0 and X_end define the domain of the problem.
% Y0 is the initial value
% h is size of each subdivisions.
% tol is the tolerance to stop the iteration.
%==========================================================================
n=fix((X_end-X0)/h)+1;
X=linspace(X0,X_end,n)';
Y=zeros(n,1);
Y(1)=Y0;
i=2;                                                %counts for subdivision
% Start iteration
while i<=n;
    Yt1=Y(i-1)+h*(fcn(X(i-1),Y(i-1)));              % Predictor
    it_count=0;                                 % count for iteration
    error=1;                                    % initial error
    while abs(error)>tol 
        Yt2=Y(i-1)+(h/2)*(fcn(X(i-1),Y(i-1))+fcn(X(i),Yt1)); % Corrector
        error=abs(Yt2-Yt1);
        Yt1=Yt2;
        it_count=it_count+1;
    end
    Y(i)=Yt2;
    i=i+1;
end
exact=(2*X+1)./(X.^2+1);                     % Has been derived through analytical analysis
Error=exact-Y;                               % Error=Exact_Value- App_Value
display('x       y_approximate     y_exact      Trap_PC_Error')
for i=1:n
    fprintf('%2.5f %10.4f  %10.4f    %5.4e   \n',X(i),Y(i),exact(i),Error(i))
end
end

