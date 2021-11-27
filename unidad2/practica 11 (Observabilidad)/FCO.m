function [ L ] = FCO( A,C,u )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
syms s
% Pc=det(s*eye(size(A))-A);
% a=sym2poly(Pc);
a=poly(A);
a=a(2:end);
al=flip(a(1:end));
a=flip(a');
[f c]=size(A);
% As=zeros(size(A));
% As(2:end,1:end-1)=eye(size(A)-1);
% As(:,end)=-a;
% Cs=zeros(size(C));
% Cs(end)=1;
Ok=[C];
Oks_inv=flip(eye(size(A)));
for i=1:f-1
    Ok=[Ok;C*(A^i)];
    Oks_inv(i,1:end-i)=al(1+i:end);
end

Oks_inv;
% Oks_inv=inv(Oks);
Qinv=Oks_inv*Ok;
Q=inv(Qinv);
%% (calculo de L)
Pol=(s-u(1));
for i=2:length(u)
    Pol=Pol*(s-u(i));
end
Pol=collect(Pol);
a_s=sym2poly(Pol);
a_s=a_s(2:end);
a_s=flip(a_s');
L_s=a_s-a;
L=Q*L_s;
end



