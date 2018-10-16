function [ y,dy,d2y ] = func3( x )
%Function provided for problem 3

y=exp(x)-x^4+x*exp(x);
dy=2*exp(x)-4*x^3+x*exp(x);
d2y=3*exp(x)-12*x^2+x*exp(x);

end

