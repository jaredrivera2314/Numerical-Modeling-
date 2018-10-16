%HW4 P3c
%Approximates Trapzoidal rule with uniform refinement scheme and asymptotic
%error addition
clear all; close all; clc

b=2;
a=-1;
n=3;
epsil=0.00001;
count=0;

while count<1000
    h=zeros(1,n+1);
    for i=1:n+1
        h(i)=(b-a)/n;
    end
    
    x=linspace(a,b,n+1);
    for i=1:n
        E(i)=(-1/12)*h(i)^2*(df(x(i+1))-df(x(i)));
    end
    ET=sum(E);
    
    T=zeros(1,n+1);
    for i=1:n
        T(i)=0.5*h(i)*(f(x(i))+f(x(i+1)))+E(i);
    end
    Tf=sum(T);
    
    Error=Tf-4.8332650685747847;
    if abs(Error)<=epsil
        break
    end
    
    nofNewNodes=0;
    eta=zeros(1,n);
    for i=1:n
        eta(i)=abs(E(i))/max(abs(E));
        NofNodes=length(x);
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

