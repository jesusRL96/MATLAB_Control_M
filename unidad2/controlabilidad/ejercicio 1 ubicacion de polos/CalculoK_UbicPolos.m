clc
clear all
close all
u1=-10;
u2=10;
A = [1 3;3 1];
B = [1 0]';
syms s k1 k2
K=[k1 k2];
ecu = eye(size(A))*s - (A-B*K);
ecu=det(ecu);
ecu=collect(ecu)
V1=coeffs(ecu,s)
ecu2=(s-u1)*(s-u2);
ecu2=simplify(ecu2);        
V2=fliplr(sym2poly(ecu2));% coeffs(ecu2,s,'all') solo en matlab 2016
ecs=[];
for (i=1:length(V2)-1)
    ecs=[ecs,V1(i)==V2(i)];
end
ecs
[solv,solu]=solve(ecs,K);
K=[solv solu]
comp=eig(A-B*K)