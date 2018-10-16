%HW3 P4
clear all; close all; clc;

%Initialize the arrays holding displacement info
x=[0,0.3,0.5,0.8,1,1.2,1.6,1.9,2.1,2.3,2.5];
u=[0,0.2141,0.2938,0.3258,0.3,0.2506,0.1498,0.1613,0.2627,0.4777,0.8438];
EpsilExact=(1/10)*(4*x.^3-3*x.^2-12*x+9);

%Determine the Lagrange coefficients
for i=1:10
    m(i)=(u(i)-u(i+1))/(x(i)-x(i+1));
    b(i)=(u(i)*x(i+1)-u(i+1)*x(i))/(x(i+1)-x(i));
end

%Determine the Lagrange functions
p1=m(1)*x+b(1); %on [x1,x2]
p2=m(2)*x+b(2); %on [x2,x3]
p3=m(3)*x+b(3); %on [x3,x4]
p4=m(4)*x+b(4); %on [x4,x5]
p5=m(5)*x+b(5); %on [x5,x6]
p6=m(6)*x+b(6); %on [x6,x7]
p7=m(7)*x+b(7); %on [x7,x8]
p8=m(8)*x+b(8); %on [x8,x9]
p9=m(9)*x+b(9); %on [x9,x10]
p10=m(10)*x+b(10); %on [x10,x11]

%Differentiate the Lagrange functions to get the strain function
ei1=m(1); %on [x1,x2]
ei2=m(2); %on [x2,x3]
ei3=m(3); %on [x3,x4]
ei4=m(4); %on [x4,x5]
ei5=m(5); %on [x5,x6]
ei6=m(6); %on [x6,x7]
ei7=m(7); %on [x7,x8]
ei8=m(8); %on [x8,x9]
ei9=m(9); %on [x9,x10]
ei10=m(10); %on [x10,x11]

%Smooth the strain function according to the algorithm outlined
en(1)=ei1;

for i=2:10
   en(i)=(m(i)+m(i-1))/2; 
end

en(11)=ei10;

%Determine the Lagrange coefficients
for i=1:10
    me(i)=(en(i)-en(i+1))/(x(i)-x(i+1));
    be(i)=(en(i)*x(i+1)-en(i+1)*x(i))/(x(i+1)-x(i));
end

%Determine the Lagrange functions
e1=me(1)*x+be(1); %on [x1,x2]
e2=me(2)*x+be(2); %on [x2,x3]
e3=me(3)*x+be(3); %on [x3,x4]
e4=me(4)*x+be(4); %on [x4,x5]
e5=me(5)*x+be(5); %on [x5,x6]
e6=me(6)*x+be(6); %on [x6,x7]
e7=me(7)*x+be(7); %on [x7,x8]
e8=me(8)*x+be(8); %on [x8,x9]
e9=me(9)*x+be(9); %on [x9,x10]
e10=me(10)*x+be(10); %on [x10,x11]

%Determine Error in strain
E1=EpsilExact-m(1);
E2=EpsilExact-m(2);
E3=EpsilExact-m(3);
E4=EpsilExact-m(4);
E5=EpsilExact-m(5);
E6=EpsilExact-m(6);
E7=EpsilExact-m(7);
E8=EpsilExact-m(8);
E9=EpsilExact-m(9);
E10=EpsilExact-m(10);

plot(x(1:2),E1(1:2),x(2:3),E2(2:3),x(3:4),E3(3:4),x(4:5),E4(4:5),x(5:6),E5(5:6),x(6:7),E6(6:7),x(7:8),E7(7:8),x(8:9),E8(8:9),x(9:10),E9(9:10),x(10:11),E10(10:11));
xlabel('x-position');
ylabel('Strain Error');