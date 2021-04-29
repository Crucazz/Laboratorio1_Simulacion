function [raiz] = Newton_Raphson(funcion,iter_max,error,val)
    syms x
    df = diff(funcion,x);
    derivada = inline(df);
    fun = inline(funcion);
    %se realiza el calculo del nuevo valor de la raiz
    raiz = val - fun(val)/derivada(val);
    %se comprobara si este valor es menor al error especificado
    %o si las iteraciones maximas fueron superadas
    if (iter_max<=0 || abs(fun(val))<error)
        %en caso de que se cumpla una de las dos opciones retornara
        %el valor calculado terminando con la recursion
        raiz;
    else
        %en caso contrario se iniciara una nueva instancia de la funcion
        %con un nuevo valor de la raiz, asi como tambien con una iteracion
        %menos disponible en su maximo.
        raiz = Newton_Raphson(funcion,iter_max-1,error,raiz);
    end
end

