clc
clear all
close all
A=[0 -1 0 0 -4;0 0 1 0 1;0 1 0 0 2;-2 1 0 -2 4;0 0 0 0 -2];
B=[0 1 0 0 0]';
Ck=[B A*B A^2*B A^3*B A^4*B];
r=rank(Ck)
Q=[0 1 0 0 0;-1 0 1 1 0;0 0 0 0 1;1 0 0 0 0;0 0 1 0 0]';
det(Q)
A_s=inv(Q)*A*Q
B_s=inv(Q)*B
A11=A_s(1:r,1:r)
B11=B_s(1:r,:)
u=[-3 -4];
K1_s=Funcion_FormAckerman(A11,B11,u);
K2_s=[0 0 0];
% coprobacion 
eig(A11-B11*K1_s);
K=[K1_s K2_s]*inv(Q)
eig(A-B*K)
