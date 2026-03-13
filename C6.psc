Algoritmo ContadorPN
	Definir i,num, pos,nega,ccero Como Entero
	pos<-0
	neg<-0
	ccero<-0
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir "Digite el numero", i ,":"
		Leer num
		Si num>0 Entonces
            pos<-pos+ 1
        Sino 
            Si num<0 Entonces
                nega<-nega+1
            Sino
                ccero<-ccero+1
            FinSi
        FinSi
	Fin Para
	Escribir "resultado positivo" , pos
	Escribir "resuoltdo negativo" , nega
	Escribir "resultaddo igual a cero" , ccero
FinAlgoritmo
