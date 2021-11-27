clc
clear all
close all
% A) solucion (la delta se puede hacer 0)
disp('A)')
A=[0 1;-1/10 7/10];
B=[3/10;-1/10];
x0=[-1;4];
syms z k
u=-5*cos(k);
Uz=ztrans(u,z)
x_k=iztrans(((z*eye(size(A,1))-A)^-1)*z,k)*x0 + iztrans(((z*eye(size(A,1))-A)^-1*B*Uz),k);
x_k=simplify(x_k)
%% B)
disp('B)')
pol_a=[-16 96 -256 256];
pol_b=[1 2 0 0];
n=length(pol_a);
A=zeros(n);
A(1:end-1,2:end)=eye(n-1);
A(end,1:end)=-fliplr(pol_a)
B=[zeros(n-1,1);1]
C=[fliplr(pol_b)]
%%
A=[0 1 0 0;0 0 1 0;0 0 0 1;-256 256 -96 16];
B=[0 0 0 1]';
C=[0 0 2 1];
x=[1 2 -1 -3]';
ys=calculosd(A,B,C,x,1)