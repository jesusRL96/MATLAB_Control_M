clc
clear all
close all
A=[0 -1 0 0 -4;0 0 1 0 1;0 1 0 0 2;-2 1 0 -2 4;0 0 0 0 -2];
B=[0 1 0 0 0]';
C=[1 0 0 0 0];
L=DetectabilidadCalculo(A,C)
% comprobacion 
eig(A-L*C)
