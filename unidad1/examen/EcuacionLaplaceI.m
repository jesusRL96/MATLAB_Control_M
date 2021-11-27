clc
clear all
close all
syms t s
u=[10*sin(t) 10*cos(t)]';
A=[0 -1;-1 -4]; 
B=[1 1;2 1];
C=[0 1];
x0=[0 0]';
Us=laplace(u);

[f,c]=size(A);
Id=eye(f)*s;
M1=inv(Id-A);
M2=simplify(M1*B*Us);
y=C*(ilaplace(M1,t)*x0)+C*ilaplace(M2,t);
y=vpa(y);
y=simplify(y)