function [ K ] = EstabilizacionCalculo( A,B,val )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Ck=[B];
for i=1:length(B)
    Ck=[Ck A^i*B];
end
r=rank(Ck);
Q=eye(size(A));
Q(:,1:r)=Ck(:,1:r);
D=abs(det(Q));
con=0;
r1=r;
while (D <= .0001 && con<=1000 && r1<length(B)) 
% r = a + (b-a).*rand(1,10)
% Donde r es un vector fila de 10 elementos cuyos elementos se encuentran en el intervalo (a,b).
    i= round(1 + ((length(B)-r)-1).*rand(1,1));
    v= round(0 + (1-0).*rand(1,length(B)))';
    Q(:,r+i)=v;
    D=abs(det(Q));
    r1=rank(Q);
    con=con+1;
end
A_s=inv(Q)*A*Q;
B_s=inv(Q)*B;
A11=A_s(1:r,1:r);
eig_A11=eig(A11);
A22=A_s(r+1:end,r+1:end);
eig_A22=eig(A22);
B11=B_s(1:r,:);
u=ones(1,r);
u=u*val;
% for i=1:r
%     msj=strcat('ingrese el polo No. ',num2str(i),': ');
%     u(i)=input(msj);
% end
r=size(A11,1);
K1_s=Funcion_FormAckerman(A11,B11,u);
K2_s=zeros(1,size(Q,1)-r);
K_s=[K1_s K2_s];
K=K_s*inv(Q);
end


