function [ output_args ] = untitled(A,B,C)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%% KALMAN
disp('KALMAN')
sistema=ss(A,B,C,0);
CK=ctrb(sistema);
disp('controlabilidad')
[f c]=size(CK);
if (f==c)
    dete=det(CK)
    ran=rank(CK)
else
    ran=rank(CK)
end
                   
%% HOUTUS
disp('HOUTUS')
% controlabilidad de houtus
syms L
Hc=[L*eye(size(A))-A, B];
ran=rank(Hc)
p=eig(A);
disp('controlabilidad')
for i=1:length(p)
    L=p(i);               
    Hc=[L*eye(size(A))-A, B];
    ran=rank(Hc)
end
% observabilidad de houtus

%% MATRIZ GRAMIANO
disp('GRAMIANO')
syms t
disp('controlabilidad')
Gc=int(expm(A*t)*B*B'*expm(A'*t),0,1);
dete=vpa(det(Gc))
end

