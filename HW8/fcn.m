function [ f ] = fcn( x,y )
%==========================================================================
% CEE103 ODE function
% Chen, Peng-Yu
% Originial Coding
% 05/30/2017
%==========================================================================
% This function should be always modified for different ODE.
% Given the value of X and Y, it will output the Y'(x,y).
%==========================================================================
f=-(x*y)+(4*x/y);                          

end

