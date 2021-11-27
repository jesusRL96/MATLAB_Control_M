
%% KALMAN
disp('KALMAN')
A=[-6/5 1;1/2 -11/20];
B=[1/5 1/20]';
C=[1 -1];
sistema=ss(A,B,C,0);
CK=[B, A*B, A^2*B];
disp('controlabilidad')
ran=rank(CK)                     
% observabilidad de kalman
OK=[C; C*A; C*A^2];
disp('observabilidad')
ran=rank(OK)               
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
Hc=[L*eye(size(A))-A; C];
disp('observabilidad')
ran=rank(Hc)
%% MATRIZ GRAMIANO
disp('GRAMIANO')
syms t
Gc=int(expm(A*t)*B*B'*expm(A'*t),0,1);
dete=vpa(det(Gc))
disp('observabilidad')
syms t
Go=int(expm(A'*t)*C'*C*expm(A*t),0,1);
dete=vpa(det(Go))