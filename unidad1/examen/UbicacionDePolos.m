clc
clear all
close all
u1=-1+2j;
u2=-1-2j;
A = [1 3;3 1];
B = [1 0]';
syms s k1 k2
K=[k1 k2];
ecu = eye(size(A))*s - (A-B*K);
dete=det(ecu);
dete=simplify(dete)
ecu2=(s-u1)*(s-u2);
ecu2=simplify(ecu2)
K=[4 17/3]
eig(A-B*K)