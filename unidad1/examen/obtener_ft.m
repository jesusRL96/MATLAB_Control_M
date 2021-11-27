clc
clear all
close all
syms s t ut

M1=[1+s -1 -s;-1 2+s -1;-s -1 2*s+1];
M2=[ut 0 0]';
I=inv(M1)*M2

