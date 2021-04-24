%Autores:
%   -Gary Simken
%   -Felipe Villalobos 20.139.310-8
clc
clear
syms x

%%PARTE 1
    
    %1.
    %definicion del logaritmo en base distinta de 10
    log_base_c = @ (x , c ) log( x )/ log( c );
    %definicion del intervalo
    x= 0: 0.01: 15*pi;
    %a(x)

    %definicion de polinomios
    %5x+15
    poli_a1=[5 15];
    poli_a2= [2 0];

    %evaluacion polinomios
    y_poli_a1=  polyval(poli_a1, x);
    y_poli_a2=  polyval(poli_a2, x);

    %y Funcion a(x)
    y_a= 6*log_base_c(y_poli_a1,4) - log_base_c(y_poli_a2,2);
    figure()
    plot(x,y_a, 'r *');
    %b(x)
    poli_b1= [2 9];
    poli_b2= [1 16]; 

    %evaluacion polinomios
    y_poli_b1=  polyval(poli_b1, x);
    y_poli_b2=  polyval(poli_b2, x);

    %evaluacion de interiores funciones trigonometicas
    x_sin= 6*log_base_c(y_poli_b1,10);
    x_cos= 2*log(y_poli_b2);

    %Funcion b(x)
    y_b= sin(x_sin) + cos(x_cos);
    figure()
    plot(x,y_b, 'g +');
    figure()
    plot(x,y_a, 'r *',x,y_b, 'g +');
    
    %2.
    %definicion del intervalo
    x= -10: 0.05: 10;
    %definicion polinomio
    poli= [2 3];
    %evaluacion polinomio
    y_poli= polyval(poli,x);
    %c(x)
    y_c=2*exp(y_poli);
    
    figure()
    semilogy(x,y_c,'b -');
    figure()
    plot(x,y_c,'b -')
   
%%PARTE 2
    %a) 
    %  x^3-x-1
    funcion = input('Ingresar funcion(x): ');

    error = 0.00001;
    val = 5;
    iter_max=100;

    result = Newton_Raphson(funcion,iter_max,error,val);

