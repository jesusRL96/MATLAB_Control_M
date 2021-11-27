clc
clear all
close all
%% A)
disp('inciso A')
A=[0 1;2 3];
B=[1 1]';
C=[1 2];
u=[-1,-2];
K=Funcion_UbicPolos(A,B,u)
% comprobacion
comp=eig(A-B*K)
%% B)
disp('inciso B')
A=[0 1;-3 -5];
B=[1 -3]';
C=[1 0];
u=[-10,10];
K=Funcion_UbicPolos(A,B,u)
% comprobacion
comp=eig(A-B*K)
%% C)
disp('inciso C')
A=[0 1 0 0;0 0 -1 0;0 0 0 1;0 0 5 0];
B=[0 1 0 -2]';
C=[1 0 0 0];
syms s
u=[-1.5+.5i,-1.5-.5i,-1+1i,-1-1i];
K=Funcion_UbicPolos(A,B,u)
% comprobacion
comp=eig(A-B*K)
% A=[0 1;-3 -5];
% B=[1 -3]';
% C=[1 0];
% u=[-10,10];
% syms s
% K=sym([]);
% for i=1:length(u)
%     K(i)=strcat('k',num2str(i));
% end
% ecu = eye(size(A))*s - (A-B*K);
% ecu=det(ecu);
% ecu=collect(ecu);
% V1=coeffs(ecu,s,'all');
% ecu2=(s-u(1));
% for i=2:length(u)
%     ecu2=ecu2*(s-u(i));
% end
% ecu2=simplify(ecu2);
% ecu2=collect(ecu2)
% V2=coeffs(ecu2,s,'all')
% ecs=[];
% for (i=1:length(V2))
%     ecs=[ecs,V1(i)==V2(i)];
% end
% [solv,solu]=solve(ecs,K);
% Ks=[solv solu];