function [ L_f ] = ObservMetodoDirecto( A,C,u )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
syms s
L=sym([]);
for i=1:length(u)
    L=[L;strcat('l',num2str(i))];
end
ecu = eye(size(A))*s - (A-L*C);
ecu=det(ecu);
ecu=collect(ecu);
V1=coeffs(ecu,s);       % coeffs(ecu,s,'all) solo en matlab 2016
ecu2=(s-u(1));
for i=2:length(u)
    ecu2=ecu2*(s-u(i));
end
ecu2=simplify(ecu2);
ecu2=collect(ecu2);
V2=fliplr(sym2poly(ecu2));% coeffs(ecu,s,'all) solo en matlab 2016
ecs=[];
for (i=1:length(V2))
    ecs=[ecs,V1(i)==V2(i)];
end
Sol=solve(ecs,L);
Solc = struct2cell(Sol);
L_f = cat(2,Solc{:});
L_f=double(L_f');
end

