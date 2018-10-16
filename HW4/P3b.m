%HW4 P3b
%Approximates Trapzoidal rule with uniform refinement scheme
clear all; close all; clc

b=2;
a=-1;
n=3;
epsil=0.1;
count=0;

while count<1000
    for i=1:n+1
        h(i)=(b-a)/n;
    end
    
    T=zeros(1,n+1);
    x=linspace(a,b,n+1);
    
    for i=1:n
        T(i)=0.5*h(i)*(f(x(i))+f(x(i+1)));
    end
    Tf=sum(T);
    
    for i=1:n
        E(i)=(-1/12)*h(i)^2*(df(x(i+1))-df(x(i)));
    end
    ET=sum(E);
    Error=Tf-4.8332650685747847;
    if abs(ET)<=epsil
        break
    end
    
    for i=1:n
        eta(i)=abs(E(i))/max(abs(E));
        NofNodes=length(x);
        nofNewNodes=0;
        xnew=(x(i+nofNewNodes)+x(i+1+nofNewNodes))/2;
        x=[x(1:i+nofNewNodes),xnew,x(i+1+nofNewNodes:end)];
        NofNodes=NofNodes+1;
        nofNewNodes=nofNewNodes+1;
    end
    n=NofNodes-1;
    count=count+1;
end

theta=abs(ET/Error);

fprintf('Number of iterations: %i\n',n);
fprintf('Tn(f) = %f\n',Tf);
fprintf('Asymptotic Error ET = %e\n',abs(ET));
fprintf('True Error E = %e\n',Error);
fprintf('Effectivity Index: %f\n',theta);


