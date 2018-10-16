function [ phi ] = Weight( z )
%Weight Function for problem 2

if z<=0.5
    phi=(2/3)-(4*z^2)+(4*z^3);
elseif z<=1.0
    phi=(4/3)-4*z+(4*z^2)-((4/3)*z^3);
else
    phi=0;
end

end

