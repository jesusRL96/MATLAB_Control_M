clc
close all
clear all
syms t s T
A=[-2 1 2;1 -1 -1;2 -1 -2]; 
B=[0 1 1]';
u=10*sin(t);
x_0=[1 1 1]';
M=inv(s*eye(size(A))-A);
expA=ilaplace(M,t);

expAn=subs(expA,t,t-T);
un=subs(u,t,T);
ecu=expAn*B*un;
inte=int(ecu,T,[0,t]);
disp('vector de estados')
x=expA*x_0+inte
disp('respuesta y')
y=diff(x(3))