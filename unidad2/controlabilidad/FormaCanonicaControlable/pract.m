clc
clear all
close all
%% A)
disp('inciso A')
A=[0 1;2 3];
B=[1 1]';
C=[1 2];
u=[-1,-2];
K=calculoK(A,B,C,u)
% comprobacion
comp=eig(A-B*K)
%% B)
disp('inciso B')
A=[0 1;-3 -5];
B=[1 -3]';
C=[1 0];
u=[-10,10];
K=calculoK(A,B,C,u)
% comprobacion
comp=eig(A-B*K)
%% C)
disp('inciso C')
A=[0 1 0 0;0 0 -1 0;0 0 0 1;0 0 5 0];
B=[0 1 0 -2]';
C=[1 0 0 0];
syms s
u=[-1.5+.5i,-1.5-.5i,-1+1i,-1-1i];
K=calculoK(A,B,C,u)
% comprobacion
comp=eig(A-B*K)