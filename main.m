%Autores:
%   -Gary Simken       19.986.690-7
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
    grafico_1(x,y_a)

    
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
    
    grafico_2(x,y_b)
    grafico_3(x,[y_a;y_b])

    
    %2.
    %definicion del intervalo
    x= -10: 0.05: 10;
    %definicion polinomio
    poli= [2 3];
    %evaluacion polinomio
    y_poli= polyval(poli,x);
    %c(x)
    y_c=2*exp(y_poli);

    grafico_4(x,y_c)
    grafico_5(x,y_c)

   
%%PARTE 2
    clc
    clear
    syms x
    %a) calculo de raices mediante el metodo Newton-Raphson
    %   1- x^3-x-1    con valor inicial 10
    %   2- x^(3)-7*x^(2)+14*sin(2*pi*x)-6   con valor inicial 9
    %   3- exp(-x)-x^(2)+3*x-2      con valor inicial 4
    funcion = input('Ingresar funcion(x): ');
    val = input('Ingresar valor inicial de busqueda: ');
    
    
    %valores modificables:
    %1- iteraciones maximas que realizara el metodo, modificar en caso
    %   de que el metodo no converga en una raiz
    iter_max=100;
    %2- Error aceptable a la hora de calcular la raiz, modificar en caso
    %   de que el metodo no converga en una raiz
    error = 0.00001;

    result = Newton_Raphson(funcion,iter_max,error,val);
    fun = inline(funcion);
    fprintf('La raiz encontrada es: %f  y al evaluar f(raiz)= %f \n',result,fun(result))
    
    %b) Calculo de la desviacion estandar
    %modifique el siguiente vector para ingresar valores
    Datos = [192 155 167 172 155 163 172 185 192 183 162 166];
    sd=desviacionS(Datos);
    
    fprintf('\n\nLa desviacion estandar de:')
    Datos
    fprintf('\n es = %f \n',sd)
    
    

