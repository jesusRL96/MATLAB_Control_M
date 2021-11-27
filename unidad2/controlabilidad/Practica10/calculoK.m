function [K] = untitled2(A,B,u)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
syms s
Pc=det(s*eye(size(A))-A);
a=sym2poly(Pc);
[f c]=size(A);
Ck=[B];
Cks_inv=eye(size(A));
for i=1:f-1
    Ck=[Ck,(A^i)*B];
    for j=1:c-i
       Cks_inv(i,j+i)= a(1+j);
    end
    
end
Pinv=Ck*Cks_inv;
P=inv(Pinv);
%% forma canonica controlable
As=P*A*Pinv;
Bs=P*B;
%Cs=C*Pinv;
%% sistema en lazo cerrado (calculo de K)
Pol=(s-u(1));
for i=2:length(u)
    Pol=Pol*(s-u(i));
end
Pol=collect(Pol);
a_s=sym2poly(Pol);
K_s=a_s-a;
K_s=K_s(2:end);
K=K_s*P;
end

