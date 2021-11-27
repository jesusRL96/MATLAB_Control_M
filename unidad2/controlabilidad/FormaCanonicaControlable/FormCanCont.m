clc
clear all
close all
syms s
A=[0 1;2 3];
B=[1 1]';
C=[1 2];
Pc=det(s*eye(size(A))-A);
a=sym2poly(Pc);
[f c]=size(A);
Ck=[B];
for i=1:f-1
    Ck=[Ck,(A^i)*B];
    Cks_inv=eye(size(A));
    for j=1:c-1
       Cks_inv(i,j+1)= a(1+i);
    end
    
end
Pinv=Ck*Cks_inv;
P=inv(Pinv);
%% forma canonica controlable
As=P*A*Pinv;
Bs=P*B;
Cs=C*Pinv;
%% sistema en lazo cerrado (calculo de K)
syms k1s k2s
syms k1 k2
u1=-1.5+.5i;
u2=-1.5-.5i;
Pol=(s-u1)*(s-u2);
Pol=collect(Pol);
a_s=sym2poly(Pol);
K_s=a_s-a
K_s=K_s(2:end)
K=K_s*P
eig(A-B*K)
% Ks=[k1s k2s];
% K=[k1 k2];
% As_LC=P*(A-B*K)*Pinv;
% P_LC=det(s*eye(size(As_LC))-As_LC);
% P_LC=collect(P_LC);
% a_s=coeffs(P_LC,s);