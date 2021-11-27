clc 
clear all
close all
A=[-2];
B=[2];
C=[1];
T=.2;
%
Ad=expm(A*T)
Bd=(expm(A*T)-eye(size(A)))*inv(A)*B