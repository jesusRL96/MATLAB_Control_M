k1=10;
k2=8;
m1=3;
m2=1;
u1=10;
u2=8;
% syms k1 k2 m1 m2 
A=[0 1 0 0;(-k1/m1 -k2/m1) 0 k2/m1 0;0 0 0 1;k2/m2 0 (-k1/m2 -k2/m2) 0];
B=[0 1/m1 0 0;0 0 0 1/m2]';
C=[1 0 0 0;0 0 1 0];
x0=[0 0 0 0]';
syms t s
U=[u1*t^0,u2*t^0]';
Us=laplace(U);

[f,c]=size(A);
Id=eye(f)*s;
M1=inv(Id-A);
M2=simplify(M1*B*Us);
y=C*(ilaplace(M1,t)*x0)+C*ilaplace(M2,t);
y=vpa(y)