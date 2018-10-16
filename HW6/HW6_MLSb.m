function [ f1,N1 ] = HW6_MLSb( s,X,y,x )
%Creates the moving least squares for part b
P=zeros(1,length(X));
for j=1:length(X)
    M=zeros(3,3);
    for k=1:length(x)
        z=abs(X(j)-x(k))/s;
        M=M+(Weight(z)*[1 x(k) x(k)^2;x(k) x(k)^2 x(k)^3;x(k)^2 x(k)^3 x(k)^4]);
    end
    
    Minv=inv(M);
    Basisfunc=zeros(1,length(x));
    p=zeros(1,length(X));
    for k=1:length(x)
        z=abs(X(j)-x(k))/s;
        Basisfunc(k)=(Weight(z)*[1,X(j),X(j)^2]*Minv*[1;x(k);x(k)^2]);
        p(k)=Basisfunc(k)*y(k);
    end
    P(j)=sum(p);
    
end
f1=P.';
N1=Basisfunc.';
end

