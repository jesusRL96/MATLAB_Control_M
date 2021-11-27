clc
clear all
close all
u1=-10-2i;
u2=-10+2i;
u3=-10-4i;
u4=-10+4i;
u5=-5;
u6=-20;
A = [0 1 0 0 0 0;16 0 -8 0 0 0;0 0 0 1 0 0;-16 0 16 0 0 0;0 0 0 0 0 1;0 0 0 0 0 0];
B = [0 -1 0 0 0 1]';
syms s k1 k2 k3 k4 k5 k6
K=[k1 k2 k3 k4 k5 k6];
ecu = eye(size(A))*s - (A-B*K);
dete=det(ecu);
dete=simplify(dete);
dete=collect(dete)
ecu2=(s-u1)*(s-u2)*(s-u3)*(s-u4)*(s-u5)*(s-u6);
ecu2=collect(ecu2)
%% 1
% M1=[0 1 1;2 -10 -12;-12 23 37];
% M2=[31 -10 125+150]';
% Ks=inv(M1)*M2;
% Ks=Ks'
% eig(A-B*Ks)
% %% 2
% M1=[5 20 20;85 35 -210;-15 -55 115];
% M2=[96 2500-9 25004]';
% Ks=inv(M1)*M2;
% Ks=Ks'
% eig(A-B*Ks)
% %% 3
% M1=[0 0 1;-1 2 -1;3 0 0];
% M2=[18 102 215]';
% Ks=inv(M1)*M2;
% Ks=Ks'
% eig(A-B*Ks)
%% 4 
M1=[0 -1 0 0 0 1;-1 0 0 0 1 0;0 16 0 16 0 -32;16 0 16 0 -32 0;0 0 0 0 0 128;0 0 0 0 128 0];
M2=[65 1720+32 23900 184064-128 741600 1206400]';
Ks=inv(M1)*M2;
Ks=Ks'
eig(A-B*Ks)