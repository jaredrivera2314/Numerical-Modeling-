%HW1 P1

clear all; close all; clc;

Xa=linspace(0,6,100);
Xb=linspace(-1,7,100);

fa=sqrt(Xa);
fb=(2.*Xb+2).^(1/3);

la=sqrt(3)+((Xa-3)/(2*sqrt(3)));
qa=la-((Xa-3).^2/(8*sqrt(81)));
ca=qa+((Xa-3).^3/(16*sqrt(243)));

lb=2+((Xb-3)/6);
qb=lb-((Xb-3).^2/72);
cb=qb+(5*(Xb-3).^3/(2592));

plot(Xb,cb);
axis([-1,7,-1,7]);