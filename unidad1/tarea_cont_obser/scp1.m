clc
clear all
close all
%% KALMAN
% controlabilidad de kalman
% el determinante debe ser distinto de 0 o rango=3
A=[-1 0 0;0 -2 1;0 0 -2];
B=[0 1 0]';
C=[1 0 -1];
CK=[B, A*B, A^2*B]
rank(CK)                %para conocer lo vectores linealmente dependientes
det(CK)
CK=ctrb(A,B)            %calcula la matriz de controlabilidad de kalman
%espacio de estado
sistema=ss(A,B,C,0)     %ss=state space
ctrb(sistema)
tf(sistema)
% observabilidad de kalman
OK=[C; C*A; C*A^2];
rank(OK)           
det(OK)      
OK=obsv(A,C)
obsv(sistema)
%% HOUTUS
% controlabilidad de houtus
% debe ser de rango 3 para todos los valores de L
syms L
Hc=[L*eye(3)-A, B]
rank(Hc)
eig(A)              % se obtienen los valores de L
L=-1;               
Hc=[L*eye(3)-A, B]
rank(Hc)
L=-2;
Hc=[L*eye(3)-A, B]
rank(Hc)
% observabilidad de houtus
Hc=[L*eye(3)-A; C]
rank(Hc)
%% MATRIZ GRAMIANO
% controlabilidad
% el determinante debe ser distinto de 0
Gc=gram(sistema,'c') %calcula con la integral de 0at cuando t->infinito
det(Gc)
% observabilidad
Go=gram(sistema,'o')
det(Go)