syms t s T
A=[-2 1 2;1 -1 -1;2 -1 -2]; 
B=[0 1 1]';
u=10*sin(t);
x_0=[1 1 1]';
M=inv(s*eye(size(A))-A);
expA=ilaplace(M,t)