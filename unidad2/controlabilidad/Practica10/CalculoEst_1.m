function [ A11,A22,B11,Q K ] = CalculoEst_1( A,B )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
CK=[B A*B A^2*B A^3*B A^4*B A^5*B];
r=rank(CK);
Q=zeros(size(CK));
Q(:,6)=[1 0 1 1 0 0];
Q(:,1:5)=CK(:,1:5)
rank(Q);

A_s=inv(Q)*A*Q;
B_s=inv(Q)*B;
A11=A_s(1:r,1:r);
eig_A11=eig(A11)
A22=A_s(r+1:end,r+1:end);
eig_A22=eig(A22)
B11=B_s(1:r,:);
u=zeros(1,r);
for i=1:r
    msj=strcat('ingrese el polo No. ',num2str(i),': ');
    u(i)=input(msj);
end
r=size(A11,1);
K1_s=Funcion_FormAckerman(A11,B11,u);
K2_s=zeros(1,size(Q,1)-r);
K_s=[K1_s K2_s];
K=K_s*inv(Q)
end

