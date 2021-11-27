clc
clear all
close all
%% KALMAN
disp('KALMAN')
A=[-5 1 0;0 -5 1;0 0 -5];
B=[1 0 1]';
C=[0 1 0];
sistema=ss(A,B,C,0);
CK=[B, A*B, A^2*B];
disp('controlabilidad')
ran=rank(CK)               
deter=det(CK)        
% observabilidad de kalman
OK=[C; C*A; C*A^2];
disp('observabilidad')
ran=rank(OK)           
dete=det(OK)      
%% HOUTUS
disp('HOUTUS')
% controlabilidad de houtus
syms L
Hc=[L*eye(3)-A, B];
ran=rank(Hc)
p=eig(A);
disp('controlabilidad')
for i=1:length(p)
    L=p(i);               
    Hc=[L*eye(3)-A, B];
    ran=rank(Hc)
end
% observabilidad de houtus
Hc=[L*eye(3)-A; C];
disp('observabilidad')
ran=rank(Hc)
%% MATRIZ GRAMIANO
disp('GRAMIANO')
% controlabilidad
Gc=gram(sistema,'c');
disp('controlabilidad')
deter=det(Gc)
% observabilidad
Go=gram(sistema,'o');
disp('observabilidad')
deter=det(Go)