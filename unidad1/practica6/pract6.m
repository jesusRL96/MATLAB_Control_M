clc
clear all
close all
%% sistema 1
disp('PRIMER SISTEMA:')
k1=2;   k2=1;   m1=3;   m2=5;   u1=2;   u2=2;
% A)
disp('-Con F1 actuando sobre el sistema')
A=[0 1 0 0;(-k1/m1 -k2/m1) 0 k2/m1 0;0 0 0 1;k2/m2 0 (-k1/m2 -k2/m2) 0];
B=[0 1/m1 0 0]';
C=[1 0 0 0;0 0 1 0];
funcion1(A,B,C)
% B)
disp('-Con ambas fuerzas actuando sobre el sistema')
B=[0 1/m1 0 0;0 0 0 1/m2]';
funcion1(A,B,C)
%% sistema 2
disp('SEGUNDO SISTEMA:')
k1=5;   m1=6;   m2=3;   m3=5;
A=[0 1 0 0 0 0;-(2*k1)/m1,0,k1/m1,0,k1/m1,0;0 0 0 1 0 0;k1/m2,0,-2*k1/m2,0,0,0;0 0 0 0 0 1;k1/m3,0,0,0,-2*k1/m3,0];
B=[0 1/m1 0 0 0 0]';
C=[1 0 0 0 0 0];
funcion1(A,B,C)