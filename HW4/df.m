function [ df ] = df( x )
%First derivative of function in P3

df=40*x.^3.*cos(2*x.^4)-8*x.^7.*sin(x.^8);

end

