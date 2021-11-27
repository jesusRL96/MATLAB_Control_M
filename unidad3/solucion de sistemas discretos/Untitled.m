clc
clear all
close all
A=[2 .5;0 .8];
B=[-5;2];
C=[1 -1];
x0=[2;-2];
syms z k
u=[1*z^0];
Uz=ztrans(u)
x_k=iztrans(((z*eye(size(A,1))-A)^-1)*z,k)*x0 + iztrans(((z*eye(size(A,1))-A)^-1*B*Uz),k)
y_k=C*x_k
%%
clc
clear all
close all
A=[2 .5;0 .8];
B=[0,-5;2,0];
C=[1 -1];
x0=[2;-2];
syms z k
u=[1*k^0;k];
Uz=ztrans(u)
x_k=iztrans(((z*eye(size(A,1))-A)^-1)*z,k)*x0 + iztrans(((z*eye(size(A,1))-A)^-1*B*Uz),k)
y_k=C*x_k
%%
clc
clear all
close all
A=[-2 1 0 0;0 -2 1 0;0 0 2 0;0 0 0 -3];
B=[0 0 1 1]';
C=[0 0 1 1];
x0=[-1 1 -2 2]';
syms z k
u=[1*k^0];
Uz=ztrans(u)
x_k=iztrans(((z*eye(size(A,1))-A)^-1)*z,k)*x0 + iztrans(((z*eye(size(A,1))-A)^-1*B*Uz),k)
y_k=C*x_k