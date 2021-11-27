%% principal
close all
clear all
clc
A=[-5 6 -7 12 -8 0 1;-3 1 -4 5 -5 4 1;0 0 -6 12 -14 6 1;0 0 0 6 -14 11 -8;0 0 0 7 -8 4 -8;
    0 0 0 0 0 3 -8;0 0 0 0 0 4 -5];
B=[3 2 1 0 0 0 0]';
K=EstabilizacionCalculo(A,B);
comp=eig(A-B*K)
% eigA11=eig(A11)
% eigA22=eig(A22)
%%
% u=zeros(1,size(A11,1));
% for i=1:size(A11,1)
%     msj=strcat('ingrese el polo No. ',num2str(i),': ');
%     u(i)=input(msj)
% end
% r=size(A11,1);
% K1_s=Funcion_FormAckerman(A11,B11,u);
% K2_s=zeros(1,size(Q,1)-r);
% K_s=[K1_s K2_s];
% K=K_s*inv(Q)
% eig(A-B*K)