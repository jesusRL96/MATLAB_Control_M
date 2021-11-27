function [ K,KI,comp ] = CalculoRegulacion2( A,B,C,v )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
AA=[A,zeros(length(A),1);-C,0];
BB=[B;0];
KK=EstabilizacionCalculo(AA,BB,v);
K=KK(1:end-1);
KI=-KK(end);
comp=eig(AA-BB*KK);

end

