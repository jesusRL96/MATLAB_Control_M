clc
clear all
close all
%% TAREA
% A)
disp('inciso A')
A=[0 1 0;0 0 1;-1 -5 -6];
B=[0 1 1]';
C=[1 0 0];
u=[-2+4i,-2-4i,-10,-10];
a=eig(A)
[K,KI,comp]=CalculoRegulacion1(A,B,C,u)
% B)
disp('inciso B')
A=[0 1 0;0 0 1;0 -5 -6];
B=[0 0 1]';
C=[1 0 0];
a=eig(A)
u=[-2+4i,-2-4i,-10];
K=Funcion_FormAckerman(A,B,u)
comp=eig(A-B*K)
%% Practica 
% clc
% clear all
% close all
% 1
disp('ejercicio 1')
A=[0 1 0 0 0 0;-1 -1.5 1 .5 0 .5;0 0 0 1 0 0;2 1 -2 -2 0 1;0 0 0 0 0 1;0 1 0 1 0 -3];
e1=eig(A)
B=[0 0 0 1 0 0]';
C=[0 0 0 0 1 0];
v=-5;
[K,KI,comp]=CalculoRegulacion2(A,B,C,v)

% 2
disp('ejercicio 2')
A=[0 1 0 0 0;-9/50 0 3/5 0 0;0 0 0 1 0;3/10 0 -1 -1 0;0 3/10 0 0 0];
e1=eig(A)
B=[0 1/50 0 0 0]';
C=[1 0 0 0 0];
v=-8;
[K,KI,comp]=CalculoRegulacion2(A,B,C,v)
% 3
disp('ejercicio 3')
A=[-25/18 0 0;-5/6 0 0;-1/12 0 0];
e1=eig(A)
B=[25/18 5/6 1/12]';
C=[0 0 1];
v=-4;
[K,KI,comp]=CalculoRegulacion2(A,B,C,v)
% 4
disp('ejercicio 4')
A=[0 1 0 0;-11/26 -40/13 0 0;0 1/10 0 0;0 1/5 0 0];
e1=eig(A)
B=[0 1/13 0 0]';
C=[0 0 1 0];
v=-3;
[K,KI,comp]=CalculoRegulacion2(A,B,C,v)
%% TAREA
disp('ejercicio 1')
A=[0 1;-3 -5];
e1=eig(A)
B=[0;1];
C=[1 0];
u=[-8+10.91i,-8-10.91i,-40];
[K,KI,comp]=CalculoRegulacion1(A,B,C,u)
% ejercicio 2
disp('ejercicio 1')
A=[0 1;-7 -9];
e1=eig(A)
B=[0 1]';
C=[1 0];
u=[-19.99+27.291i,-19.99-27.291i,-100];
[K,KI,comp]=CalculoRegulacion1(A,B,C,u)