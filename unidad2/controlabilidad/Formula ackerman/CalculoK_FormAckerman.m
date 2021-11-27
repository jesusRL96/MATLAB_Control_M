%% formula de ackerman 
clc
clear all
close all
syms s
u1=-1.5+.5i;
u2=-1.5-.5i;
u3=-1+1i;
u4=-1-1i;
A=[0 1 0 0;0 0 -1 0;0 0 0 1;0 0 5 0];
B=[0 1 0 -2]';
[f c]=size(A);
M1=[1:f]*0;
M1(end)=1;
PLC_s=(s-u1)*(s-u2)*(s-u3)*(s-u4);
PLC_s=simplify(PLC_s);
PLC_s=collect(PLC_s);
Vec1=sym2poly(PLC_s)
Vec1=fliplr(Vec1);
PLC_A=zeros(size(A));
for i=1:length(Vec1)
    PLC_A=PLC_A+Vec1(i)*A^(i-1);
end
PLC_A
CK=[B,A*B,A^2*B,A^3*B];
K=M1*inv(CK)*PLC_A
comp=vpa(eig(A-B*K))