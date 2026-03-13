Algoritmo serie_de_fibonacci
	Definir N, i Como Entero
    Definir a, b, c Como Entero
    Escribir "Ingrese la cantidad de términos:"
    Leer N
    a <- 0
    b <- 1
    Escribir a
    Escribir b
    Para i <- 3 Hasta N Hacer
        
        c <- a + b
        Escribir c
        
        a <- b
        b <- c
    FinPara
FinAlgoritmo
