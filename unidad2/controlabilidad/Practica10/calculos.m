clc
clear all
close all
%% 1) (Ackerman)
disp('1) resuelto por Ackerman')
A=[0 1 0 0 0 0;-1 -3/2 1 1/2 0 1/2;0 0 0 1 0 0;2 1 -2 -2 0 1;0 0 0 0 0 1;0 1 0 1 0 -3];
B=[0 0 0 1 0 0]';
CK=[B A*B A^2*B A^3*B A^4*B A^5*B];
r=rank(CK);
Q=zeros(size(CK));
Q(:,6)=[1 0 1 1 0 0];
Q(:,1:5)=CK(:,1:5);
det(Q);
A_s=inv(Q)*A*Q;
B_s=inv(Q)*B;
A11=A_s(1:r,1:r);
A22=A_s(r+1:end,r+1:end);
B11=B_s(1:r,:);
u=[-5 -5 -5 -5 -5];
K1_s=Funcion_FormAckerman(A11,B11,u);
K2_s=zeros(1,size(Q,1)-r);
K_s=[K1_s K2_s];
K=K_s*inv(Q)
comp=eig(A-B*K)
%% 2)(Metodo Directo)
disp('2) resuelto por Metodo directo')
A=[0 1 0 0 0;-9/50 0 3/5 0 0;0 0 0 1 0;3/10 0 -1 -1 0;0 3/10 0 0 0];
B=[0 1/50 0 0 0]';
CK=[B A*B A^2*B A^3*B A^4*B];
r=rank(CK);
Q=zeros(size(CK));
Q(:,5)=[0 1 0 1 1];
Q(:,1:4)=CK(:,1:4);
det(Q);
A_s=inv(Q)*A*Q;
B_s=inv(Q)*B;
A11=A_s(1:r,1:r);
A22=A_s(r+1:end,r+1:end);
B11=B_s(1:r,:);
u=[-8 -8 -8 -8];
K1_s = Funcion_UbicPolos( A11,B11,u );
K2_s=zeros(1,size(Q,1)-r);
K_s=[K1_s K2_s];
K=K_s*inv(Q)
comp=eig(A-B*K)
%% 3) (resuelto por Forma canonica controlable)
disp('3) resuelto por Forma canonica controlable')
A=[-25/18 0 0;-5/6 0 0;-1/12 0 0];
B=[25/18 5/6 1/12]';
CK=[B A*B A^2*B];
r=rank(CK);
Q=zeros(size(CK));
Q(:,3)=[0 1 0];
Q(:,2)=[0 0 1];
Q(:,1)=CK(:,1);
det(Q);
A_s=inv(Q)*A*Q;
B_s=inv(Q)*B;
A11=A_s(1:r,1:r);
A22=A_s(r+1:end,r+1:end);
B11=B_s(1:r,:);
u=[-4];
K1_s = calculoK( A11,B11,u );
K2_s=zeros(1,size(Q,1)-r);
K_s=[K1_s K2_s];
K=K_s*inv(Q)
comp=eig(A-B*K)
%% 4) (Lyapunov)
disp('4) resuelto por Lyapunov')
A=[0 1 0 0;-11/26 -40/13 0 0;0 1/10 0 0;0 1/5 0 0];
B=[0 1/13 0 0]';
CK=[B A*B A^2*B A^3*B];
r=rank(CK);
Q=zeros(size(CK));
Q(:,4)=[1 0 1 1];
Q(:,3)=[1 1 0 1];
Q(:,1:2)=CK(:,1:2);
det(Q);
A_s=inv(Q)*A*Q;
B_s=inv(Q)*B;
A11=A_s(1:r,1:r);
A22=A_s(r+1:end,r+1:end);
B11=B_s(1:r,:);
F=[-3 1;0 -3];
Ks1=[1 1];
det([Ks1;Ks1*F]);
T=lyap(A11,-F,-B11*Ks1);
K1_s=Ks1*inv(T);
K2_s=zeros(1,size(Q,1)-r);
K_s=[K1_s K2_s];
K=K_s*inv(Q)
comp=eig(A-B*K)