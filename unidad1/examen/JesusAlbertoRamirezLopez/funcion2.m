function [ output_args ] = untitled2(A,B,C)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%% KALMAN
disp('KALMAN')
sistema=ss(A,B,C,0);

                   
% observabilidad de kalman
OK=obsv(sistema);
disp('observabilidad')
[f c]=size(OK);
if (f==c)
    dete=det(OK)
    ran=rank(OK)
else
    ran=rank(OK)
end             
%% HOUTUS
disp('HOUTUS')
syms L

% observabilidad de houtus
Hc=[L*eye(size(A))-A; C];
disp('observabilidad')
ran=rank(Hc)
%% MATRIZ GRAMIANO
disp('GRAMIANO')
syms t
disp('observabilidad')
Go=int(expm(A'*t)*C'*C*expm(A*t),0,1);
dete=vpa(det(Go))
end

