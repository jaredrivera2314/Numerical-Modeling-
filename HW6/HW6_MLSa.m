function [ f1,N1 ] = HW6_MLSa( s,X,y,x )
%Creates the moving least squares for part a
P=zeros(1,length(X));
for j=1:length(X)
    M=zeros(2,2);
    for k=1:length(x)
        z=abs(X(j)-x(k))/s;
        M=M+(Weight(z)*[1 x(k);x(k) x(k)^2]);
    end
    
    Minv=inv(M);
    Basisfunc=zeros(1,length(x));
    p=zeros(1,length(X));
    for k=1:length(x)
        z=abs(X(j)-x(k))/s;
        Basisfunc(k)=(Weight(z)*[1,X(j)]*Minv*[1;x(k)]);
        p(k)=Basisfunc(k)*y(k);
    end
    P(j)=sum(p);
    
end
f1=P.';
N1=Basisfunc.';
end

