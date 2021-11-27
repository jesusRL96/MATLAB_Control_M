
clc
clear all
close all
%% KALMAN
disp('KALMAN')
A=[0 1 0 0;3 0 0 2;0 0 0 1;0 -2 0 0];
B=[0 1 0 0;0 0 0 1]';
C=[1 0 0 0;0 0 1 0];
sistema=ss(A,B,C,0);
CK=ctrb(A,B);
disp('controlabilidad')
ran=rank(CK)               
% deter=det(CK)        
% observabilidad de kalman
OK=obsv(A,C);
disp('observabilidad')
ran=rank(OK)           
% dete=det(OK)      
%% HOUTUS
disp('HOUTUS')
% controlabilidad de houtus
syms L
Hc=[L*eye(4)-A, B];
ran=rank(Hc)
p=eig(A);
disp('controlabilidad')
for i=1:length(p)
    L=p(i);               
    Hc=[L*eye(4)-A, B];
    ran=rank(Hc)
end
% observabilidad de houtus
Hc=[L*eye(4)-A; C];
disp('observabilidad')
ran=rank(Hc)
%% MATRIZ GRAMIANO
disp('GRAMIANO')
% controlabilidad
disp('controlabilidad')
syms t
Gc=int(expm(A*t)*B*B'*expm(A'*t),0,1);
dete=vpa(det(Gc))
disp('observabilidad')
syms t