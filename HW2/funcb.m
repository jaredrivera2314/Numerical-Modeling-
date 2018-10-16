function [ y,dy ] = funcb( x )
%Function for problem 1 part b

y=sin(x)-exp(-x);
dy=cos(x)+exp(-x);

end

