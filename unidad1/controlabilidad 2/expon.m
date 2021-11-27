syms t T
u=1;
x_0=[2,3]';
expA=[exp(t),(1/2)*(exp(-t)+exp(t));0,exp(-t)];
B=[1 1]';
expAn=subs(expA,t,t+T)
inte=expAn*B*u;
x=expA*x_0+int(expAn,T,[0 t])
