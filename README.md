# Laboratorio1_Simulacion
Primer laboratorio del Ramo Modelacion y Simulacion de la Universidad de Santiago de Chile

El programa consiste en introducir al lector en el funcionamiento de Matlab, a través del uso de vectores, gráficos y funciones, todas ellas implementadas de forma clara y documentada para un primer acercamiento a este software.

#Requerimientos
Para el correcto funcionamiento del programa son necesarios los siguientes softwares:
Matlab R2021a

#Posibles errores
Se debe tener en cuenta que el método de Newton-Raphson para encontrar raíces de una función puede no siempre converger a una raíz, esto por diversos factores como:
	-Tolerancia muy alta, esta puede ser modificada en el programa
	-Cantidad de iteraciones máximas insuficientes para alcanzar la tolerancia deseada, esta puede ser modificada en el programa
	-Funciones con características no deseadas para el método, que sigue iterando continuamente, esto acompañado del valor inicial de búsqueda el cual puede no ser el ideal para esto.
	-En caso de funciones con más de una raíz, el valor inicial de búsqueda será el factor decisivo por cual de estas se calcula.
