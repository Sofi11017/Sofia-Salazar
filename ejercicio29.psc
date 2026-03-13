Algoritmo Seguro_de_auto
	Definir edad_conductor, antiguedad_auto Como Entero
	Definir tiene_accidentes Como Logico
	Definir prima_base, recargo_edad, recargo_auto, recargo_accidentes, prima_final Como Real
	prima_base <- 500000
	Escribir "SISTEMA DE COTIZACIÓN DE SEGUROS"
	Repetir
		Escribir "Ingrese la edad del conductor:"
		Leer edad_conductor
		Si edad_conductor < 18 Entonces
			Escribir "Error: El conductor debe ser mayor de edad."
		FinSi
	Hasta Que edad_conductor >= 18
	Repetir
		Escribir "Ingrese los años de antigüedad del vehículo:"
		Leer antiguedad_auto
		Si antiguedad_auto < 0 Entonces
			Escribir "Error: La antigüedad no puede ser negativa."
		FinSi
	Hasta Que antiguedad_auto >= 0
	Escribir "¿Ha tenido accidentes previos? (Verdadero/Falso):"
	Leer tiene_accidentes
	Si edad_conductor < 25 Entonces
		recargo_edad <- prima_base * 0.50
	SiNo
		recargo_edad <- 0
	FinSi
	Si antiguedad_auto > 10 Entonces
		recargo_auto <- prima_base * 0.30
	SiNo
		recargo_auto <- 0
	FinSi
	Si tiene_accidentes Entonces
		recargo_accidentes <- prima_base * 0.40
	SiNo
		recargo_accidentes <- 0
	FinSi
	prima_final <- prima_base + recargo_edad + recargo_auto + recargo_accidentes
	Escribir "DETALLE DE LA PÓLIZA:"
	Escribir "Prima base: $", prima_base
	Escribir "Recargo por conductor joven: $", recargo_edad
	Escribir "Recargo por vehículo antiguo: $", recargo_auto
	Escribir "Recargo por siniestralidad: $", recargo_accidentes
	Escribir "TOTAL PRIMA ANUAL: $", prima_final
FinAlgoritmo