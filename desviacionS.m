function [result] = desviacionS(valores)
    
    s = length(valores);
    prom=0;
    sumatoria=0;
    %calculo del promedio
    for i = 1:s
        prom = prom + valores(i);
    end
    prom=prom/s;
    %calculo de la sumatoria
    for i = 1:s
        sumatoria = sumatoria + (abs(valores(i)- prom))^2;
    end
    %aplicacion de la formula
    result = sqrt(sumatoria/s);
end

