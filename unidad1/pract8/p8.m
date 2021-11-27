clc
clear all
close all
k1=2;
k2=1;
k3=.5;
b1=.5;
m1=10;
A=[0,1,0;-(k1/m1)-(k2/m1),0,k2/m1;k2/b1,0,(-k2/b1)-(k3/b1)];
B=[0,1/m1,0]';
C=[1,0,-1];
u1=-3;
u2=-3;
u3=-3;
syms s k1 k2 k3
K=[k1 k2 k3];
ecu = eye(size(A))*s - (A-B*K);
dete=det(ecu);
dete=simplify(dete)
dete=collect(dete);
ecu2=(s-u1)*(s-u2)*(s-u3);
ecu2=collect(ecu2)
M1=[0 1/10 0;1/10 3/10 0;3/10 0 1/5];
M2=[6 27-3/10 27-7/10]'
Ks=inv(M1)*M2;
Ks=Ks'
eig(A-B*Ks)
