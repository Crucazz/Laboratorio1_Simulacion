function [raiz] = Newton_Raphson(funcion,iter_max,error,val)
    syms x
    iter_max
    df = diff(funcion,x);
    derivada = inline(df);
    fun = inline(funcion);
    %Se realiza la primera iteracion
    raiz = val - fun(val)/derivada(val);
    if (iter_max<=0 || abs(fun(val))<error)
        raiz;
    else
        raiz = Newton_Raphson(funcion,iter_max-1,error,raiz);
    end
    %Inicio del ciclo hasta conseguir la tolerancia deseada
%     while abs(f(a)) > tol        
%         m = a - f(a)/df(a);
%         oper=oper+4;
%         iter=iter+1;
%         a = m;     
%         x = [x,m];
%         error = [error,abs(f(m))];
%         oper=oper+2;
%     end
end

