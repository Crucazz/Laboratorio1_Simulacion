%Autores:
%   -Gary Simken
%   -Felipe Villalobos 20.139.310-8
clc
clear
syms x



%PARTE 2
%a) 
%  x^3-x-1
funcion = input('Ingresar funcion(x): ');

error = 0.00001;
val = 5;
iter_max=100;

result = Newton_Raphson(funcion,iter_max,error,val)

