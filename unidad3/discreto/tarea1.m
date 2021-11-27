clc
clear all
close all
pol_a=[4,3];
pol_b=[1,0];
n=length(pol_a);
A=zeros(n);
A(1:end-1,2:end)=eye(n-1);
A(end,1:end)=-fliplr(pol_a)
B=[zeros(n-1,1);1]
C=[fliplr(pol_b)]
