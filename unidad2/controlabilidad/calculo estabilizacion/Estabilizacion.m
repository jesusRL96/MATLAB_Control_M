clc
clear all
close all
A=[0 -1 0 0 -4;0 0 1 0 1;0 1 0 0 2;-2 1 0 -2 4;0 0 0 0 -2];
B=[0 1 0 0 0]';
CK=[B A*B A^2*B A^3*B A^4*B A^5*B A^6*B];
r=rank(CK);
Q=zeros(size(A));
Q(:,1:r)=A(:,1:r)
for i=r+1:size(Q,1)
    val=0;
    p=1;
    v1=zeros(size(Q,1),1);
    while val~=1
        v1(p)=1;
        
        p=p+1;       
    end
end


A_s=inv(Q)*A*Q;
B_s=inv(Q)*B;
A11=A_s(1:r,1:r);
A22=A_s(r+1:end,r+1:end);
B11=B_s(1:r,:);
u=[-10 -10 -10];
K1_s=Funcion_FormAckerman(A11,B11,u);
K2_s=zeros(1,size(Q,1)-r);
K_s=[K1_s K2_s]
K=K_s*inv(Q)
eig(A-B*K)