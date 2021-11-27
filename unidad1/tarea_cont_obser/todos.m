%% sist1
clc
clear all
close all
disp('SISTEMA 1')
A=[-1 0 0;0 -2 1;0 0 -2];
B=[0 1 0]';
C=[1 0 -1];
funcion1(A,B,C)
pause;
%% sist2
clc
clear all
close all
disp('SISTEMA 2')
A=[-5 1 0;0 -5 1;0 0 -5];
B=[1 0 1]';
C=[0 1 0];
funcion1(A,B,C)
pause;
%% sist 3
clc
clear all
close all
disp('SISTEMA 3')
A=[0 1 0 0;0 0 -1 0;0 0 0 1;0 0 5 0];
B=[0 1 0 -2]';
C=[1 0 0 0];
funcion1(A,B,C)
pause;
%% sist 4
clc
clear all
close all
disp('SISTEMA 4')
A=[0 1 0 0;3 0 0 2;0 0 0 1;0 -2 0 0];
B=[0 1 0 0;0 0 0 1]';
C=[1 0 0 0;0 0 1 0];
funcion1(A,B,C)
pause;
%% sist 5 (electrico)
clc
clear all
close all
disp('SISTEMA 5')
A=[-6/5 1;1/2 -11/20];
B=[1/5 1/20]';
C=[1 -1];
funcion1(A,B,C)
pause;
%% sist 6 (mecanico)
clc
clear all
close all
disp('SISTEMA 6')
A=[0,1,0;-.3,0,.1;2,0,-3];
B=[0,.1,0]';
C=[1,0,-1];
funcion2(A,B,C)