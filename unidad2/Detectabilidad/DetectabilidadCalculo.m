function [ L ] = DetectabilidadCalculo( A,C )
%UNTITLED2 Summary of this function goes here
%   	NO TERMINADO
Ok=[C];
for i=1:length(C)
    Ok=[Ok;C*A^i];
end
r=rank(Ok);
S=eye(size(A));
S(1:r,:)=Ok(1:r,:);
D=abs(det(S));
while D <= .0001
% r = a + (b-a).*rand(1,10)
% Donde r es un vector fila de 10 elementos cuyos elementos se encuentran en el intervalo (a,b).
    i= round(1 + ((length(C)-r)-1).*rand(1,1));
    v= round(0 + (1-0).*rand(1,length(C)));
    S(r+i,:)=v;
    D=abs(det(S));
end
det(S);
As=S*A*inv(S);
Cs=C*inv(S);
A11=As(1:r,1:r)
eig_A11=eig(A11)
A22=As(r+1:end,r+1:end);
eig_A22=eig(A22)
C1=Cs(1:r);
u=zeros(1,r);
for i=1:r
    msj=strcat('ingrese el polo No. ',num2str(i),': ');
    u(i)=input(msj);
end
L1s=Form_Ack_obs(A11,C1,u);
L2s=zeros(length(C)-r,1);
Ls=[L1s;L2s];
L=inv(S)*Ls;
end

