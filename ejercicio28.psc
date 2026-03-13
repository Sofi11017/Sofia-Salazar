Algoritmo Tarifa_de_hotel
	Definir tipo_habitacion, mes_estadia, dias_estadia Como Entero
	Definir precio_base, subtotal, recargo, descuento, total_final Como Real
	Escribir "SISTEMA DE RESERVAS NACIONAL"
	Repetir
		Escribir "Seleccione tipo de habitación (1: Sencilla, 2: Doble, 3: Suite):"
		Leer tipo_habitacion
		Si tipo_habitacion < 1 O tipo_habitacion > 3 Entonces
			Escribir "Error: Debe elegir 1, 2 o 3."
		FinSi
	Hasta Que tipo_habitacion >= 1 Y tipo_habitacion <= 3
	Repetir
		Escribir "Ingrese el número del mes de la estadía (1-12):"
		Leer mes_estadia
		Si mes_estadia < 1 O mes_estadia > 12 Entonces
			Escribir "Error: El mes debe estar entre 1 y 12."
		FinSi
	Hasta Que mes_estadia >= 1 Y mes_estadia <= 12
	Repetir
		Escribir "Ingrese la cantidad de días de estadía:"
		Leer dias_estadia
		Si dias_estadia <= 0 Entonces
			Escribir "Error: La estadía debe ser de al menos 1 día."
		FinSi
	Hasta Que dias_estadia > 0
	Segun tipo_habitacion Hacer
		1: precio_base <- 100000
		2: precio_base <- 150000
		3: precio_base <- 250000
	FinSegun
	subtotal <- precio_base * dias_estadia
	Si mes_estadia = 1 O mes_estadia = 6 O mes_estadia = 7 O mes_estadia = 12 Entonces
		recargo <- subtotal * 0.30
	SiNo
		recargo <- 0
	FinSi
	Si dias_estadia > 5 Entonces
		descuento <- (subtotal + recargo) * 0.10
	SiNo
		descuento <- 0
	FinSi
	total_final <- (subtotal + recargo) - descuento
	Escribir ""
	Escribir "RESUMEN DE FACTURACIÓN:"
	Escribir "Precio Base por noche: $", precio_base
	Escribir "Subtotal por ", dias_estadia, " días: $", subtotal
	Escribir "Recargo temporada alta (30%): $", recargo
	Escribir "Descuento estadía larga (10%): $", descuento
	Escribir "TOTAL A PAGAR: $", total_final
FinAlgoritmo