clear all
close all
clc
syms s t us
U=10*sin(t);
Z1=5;
Z2=10;
Z3=1;
Z4=1/(s*1);
Z5=1/(s*2);
Y1=1/Z1;
Y2=1/Z2;
Y3=1/Z3;
Y4=1/Z4;
Y5=1/Z5;
Us=laplace(U);
% M=[-Y1,-Y2;Y1+Y3+Y4,-Y3]
% S=[-(Y1+Y2)*us;(Y1)*us]
% 
% A=[-16/5];
% B=[16/5];
% C=[1];
% x0=[0];
% [f,c]=size(A);
% Id=eye(f)*s;
% M1=inv(Id-A);
% M2=simplify(M1*B*Us);
% y=C*M2*x0+C*M2;
% y2=C*(ilaplace(M1,t)*x0)+C*ilaplace(M2,t)
% y3=ilaplace(((-1/5)*y + (3/10)*Us)*10)
%  
% S=[U,0,0]';
% M=[Z1+Z4,-Z1,-Z4;-Z1,Z1+Z2+Z3,-Z3;-Z4,-Z3,Z3+Z4+Z5];
% S=laplace(S);
% MR=inv(M)*S;
% MR_t=ilaplace(MR);
% i1=MR(1);
% i3=MR(3);
% x1=ilaplace(Z4*(i1-i3))
% x2=ilaplace(Z5*i3)
% 
A=[-1/5 0 0 1 0 1/5;0 0 0 0 0 0;0 5/6 0 0 0 1/6;0 0 0 0 0 0;1/5 1 -7/10 0 0 0;0 0 0 0 0 0];
B=[1/5 0 0 0 0 0]';
C=[Z4 0 0 0 -Z4+Z5 0];
x0=[0 0 0 0 0 0]';
[f,c]=size(A);
Id=eye(f)*s;
M1=inv(Id-A);
M2=simplify(M1*B*Us);
y=C*(M1*x0)+C*M2;
y=ilaplace(y)


% A=[0 1 0 0;(-k1/m1 -k2/m1) 0 k2/m1 0;0 0 0 1;k2/m2 0 (-k1/m2 -k2/m2) 0];
% B=[0 1 0 0;0 0 0 1]';
% C=[1 0 0 0;0 0 1 0];
% x0=[0 0 0 0]';
% syms t s
% U=[u1*t^0,u2*t^0]';
% Us=laplace(U);
% 
% [f,c]=size(A);
% Id=eye(f)*s;
% M1=inv(Id-A);
% M2=simplify(M1*B*Us);
% y=C*(ilaplace(M1,t)*x0)+C*ilaplace(M2,t);
% y=vpa(y)