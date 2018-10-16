function [ X Y] = EulerBackward_PC( X0, X_end, Y0, h, tol )
%==========================================================================
% CEE103 Backword Euler Method_Predictor Corrector
% Chen, Peng-Yu
% Originial Coding
% 05/30/2017
%==========================================================================
% This function utilized EulerBackward to solve ODE problem.The predictor-corrector 
% method is applied in the algorithm to solve the next step Y.Users need to 
% modify the function for different problem statement.
% X0 and X_end define the domain of the problem.
% Y0 is the initial value
% h is size of each subdivisions.
% tol is the tolerance to stop the iteration.
%==========================================================================
n = fix((X_end-X0)/h)+1;
X = linspace(X0,X_end,n)';
Y = zeros(n,1);
Y(1)=Y0;
i=2;                                         % i conts for each subdivision
while i <= n;
Yt1=Y(i-1)+h*(fcn(X(i-1),Y(i-1)));           % Predictor
  % Predictor-Corrector method
  error = 1;                                 % initial error
  it_count = 0;                              % nunmber of iteration
      while abs(error) > tol
      Yt2=Y(i-1)+h*(fcn(X(i),Yt1));          % Corrector
      error = abs(Yt2-Yt1);
      Yt1=Yt2;
      it_count = it_count +1;
      end
Y(i)= Yt2;
i=i+1;
end
exact=(2*X+1)./(X.^2+1);                     % Has been derived through analytical analysis
Error=exact-Y;                               % Error=Exact_Value- App_Value
display('x       y_approximate     y_exact      Backward_PC_Error')
for i=1:n
    fprintf('%2.5f %10.4f  %10.4f    %5.4e   \n',X(i),Y(i),exact(i),Error(i))
end
end

