syms t s T
A=[1 -1;0 -1];
B=[1 1]';
u=1;
M=inv(s*eye(size(A))-A);
expA=ilaplace(M,t);
ecu=expA*B*u;
ecu=subs(ecu,t,t-T);
inte=int(ecu,T,[0,t])
% x=expA*x_0+inte
