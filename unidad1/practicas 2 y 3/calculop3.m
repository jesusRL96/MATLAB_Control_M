k1=2;
k2=1;
k3=.5;
b1=.5;
m1=10;
syms t s
U=sin(t)/m1;
A=[0,1,0;-(k1/m1 + k2/m1),0,k2/m1;k2/b1,0,(-k2/b1 - k3/b1)];
B=[0,1,0]';
C=[-1,0,1];
x0=[0 0 0]';

Us=laplace(U);
[f,c]=size(A);
Id=eye(f)*s;
M1=inv(Id-A);
M2=simplify(M1*B*Us);
y=C*(ilaplace(M1,t)*x0)+C*ilaplace(M2,t)
y=vpa(y)