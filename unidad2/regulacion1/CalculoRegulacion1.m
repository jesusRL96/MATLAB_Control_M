function [ K KI comp ] = CalculoRegulacion1( A,B,C,u )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
AA=[A,zeros(length(A),1);-C,0];
BB=[B;0];
KK=Funcion_FormAckerman(AA,BB,u)
K=KK(1:end-1);
KI=-KK(end);
comp=eig(AA-BB*KK);
end

