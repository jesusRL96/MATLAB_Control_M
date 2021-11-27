function [ ys ] = calculosd(A,B,C,xy,v)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n=length(C);
if v==1
    x=xy;
    ys=[C*x];
    for k=0:n-2
        u=sin(k);
        xk1=A*x+B*u;
        y=C*xk1;
        ys=[ys,y];
        x=xk1;
        k=k+1;
    end
else

end

end

