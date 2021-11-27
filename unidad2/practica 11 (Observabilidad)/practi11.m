clc
clear all
close all
%% TAREA %%%
% A)
disp('inciso A')
A=[-1 1 -2;0 -1 1;0 0 -1];
B=[1 0 1]';
C=[1 0 0];
u=[-3,-2+2i,-2-2i];
L=ObservMetodoDirecto(A,C,u)
% comprobacion
comp=eig(A-L*C)
% B)
disp('inciso B')
A=[-1 1;1 2];
B=[1 1]';
C=[1 0];
u=[-5,-5];
L=ObservMetodoDirecto(A,C,u)
% comprobacion
comp=eig(A-L*C)
% C)
disp('inciso C')
A=[0 1 0;0 0 1;-5 -6 0];
B=[0 0 1]';
C=[1 0 0];
u=[-10,-10,-15];
L=ObservMetodoDirecto(A,C,u)
% comprobacion
comp=eig(A-L*C)
%% PRACTICA %%
% Metodo directo 
disp('Ejercicio 2')             
A=[0 4 0;-3 0 2;0 0 -2];
B=[0 0 2]';
C=[1 0 0];
u=[-12+4i,-12-4*i,-8];
L=ObservMetodoDirecto(A,C,u)
%comprobacion
comp=eig(A-L*C)

% Forma Canonica Observable
disp('Ejercicio 4')
A=[0 1 0 0 0 0;16 0 -8 0 0 0;0 0 0 1 0 0;-16 0 16 0 0 0;0 0 0 0 0 1;0 0 0 0 0 0];
B=[0 -1 0 0 0 1]';
C=[1 0 1 0 1 0];
u=[-1+1i,-1-1i,-5+1i,-5-1i,-1,-2];
L=FCO(A,C,u)
%comprobacion
comp=eig(A-L*C)
% Formula de Ackerman
disp('Ejercicio 3')
A=[0 1 0;0 0 1;-6 -11 -6];
B=[0 0 1]';
C=[1 0 0];
u=[-2+(2*sqrt(3))*i,-2-(2*sqrt(3))*i,-5];
L=Form_Ack_obs(A,C,u)
%comprobacion
comp=eig(A-L*C)
%% Formula de Lyapunov
disp('Ejercicio 1')
%u=[-1,-2]
A=[0 1;2 3];
B=[1 1]';
C=[1 2];
F=[-1 0;0 -2];
L=Lyapunov_obs(A,C,F)
%comprobacion
comp=eig(A-L*C)
