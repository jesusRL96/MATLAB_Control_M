function [ L ] = Lyapunov_obs( A,C,F)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
L_s=ones(length(A),1);
Ck=[L_s];
for (i=1:length(A)-1)
    Ck=[Ck,(F^i)*L_s];
end
det(Ck)
T=lyap(-F,A,-L_s*C);
L=inv(T)*L_s;
end

